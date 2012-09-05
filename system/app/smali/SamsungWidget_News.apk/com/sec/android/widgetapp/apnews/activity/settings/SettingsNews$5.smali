.class Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$5;
.super Ljava/lang/Object;
.source "SettingsNews.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;
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
    .line 368
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 370
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mCheckedTextView:Landroid/widget/CheckedTextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$700(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/widget/CheckedTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->toggle()V

    .line 372
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mCheckedTextView:Landroid/widget/CheckedTextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$700(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/widget/CheckedTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-ne v1, v2, :cond_29

    .line 374
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mSet:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$500(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 375
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "checkbox_enable"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 376
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 384
    :goto_28
    return-void

    .line 380
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    :cond_29
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$5;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mSet:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$500(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 381
    .restart local v0       #edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "checkbox_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 382
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_28
.end method
