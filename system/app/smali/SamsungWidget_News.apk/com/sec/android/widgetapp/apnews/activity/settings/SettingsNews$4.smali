.class Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$4;
.super Ljava/lang/Object;
.source "SettingsNews.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)V
    .registers 2
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$4;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 339
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$4;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->removeDialog(I)V

    .line 341
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$4;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mSet:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$500(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 342
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "checkbox_enable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 343
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 345
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$4;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mCheckedTextView:Landroid/widget/CheckedTextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$700(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/widget/CheckedTextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 346
    return-void
.end method
