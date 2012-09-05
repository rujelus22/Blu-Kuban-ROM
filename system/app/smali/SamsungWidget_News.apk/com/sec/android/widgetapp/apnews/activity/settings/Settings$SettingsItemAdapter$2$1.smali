.class Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2;)V
    .registers 2
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2$1;->this$2:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 226
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2$1;->this$2:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2;

    iget-object v1, v1, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2;->val$mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_20

    const/4 v0, 0x1

    .line 227
    .local v0, fchecked:Z
    :goto_b
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2$1;->this$2:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2;

    iget-object v1, v1, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2;->val$mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 228
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2$1;->this$2:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2;

    iget-object v1, v1, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2;->this$1:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;

    iget-object v1, v1, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2$1;->this$2:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2;

    iget v2, v2, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter$2;->val$myPosition:I

    #calls: Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->onBtnCheckChanged(IZ)V
    invoke-static {v1, v2, v0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->access$400(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;IZ)V

    .line 229
    return-void

    .line 226
    .end local v0           #fchecked:Z
    :cond_20
    const/4 v0, 0x0

    goto :goto_b
.end method
