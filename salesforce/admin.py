from django.contrib.admin import site, ModelAdmin, TabularInline

from . import models


class ReadOnlyAdminMixin:
    """Disables all editing capabilities."""
    change_form_template = "admin/view.html"

    def __init__(self, *args, **kwargs):
        super(ReadOnlyAdminMixin, self).__init__(*args, **kwargs)
        self.readonly_fields = self.model._meta.get_all_field_names()

    def get_actions(self, request):
        actions = super(ReadOnlyAdminMixin, self).get_actions(request)
        del actions["delete_selected"]
        return actions

    def has_add_permission(self, request):
        return False

    def has_delete_permission(self, request, obj=None):
        return False

    def save_model(self, request, obj, form, change):
        pass

    def delete_model(self, request, obj):
        pass

    def save_related(self, request, form, formsets, change):
        pass


class UserCommentInlineAdmin(TabularInline):
    model = models.UserComment


class UserAdmin(ReadOnlyAdminMixin, ModelAdmin):
    inlines = [UserCommentInlineAdmin]


site.register(models.User)
