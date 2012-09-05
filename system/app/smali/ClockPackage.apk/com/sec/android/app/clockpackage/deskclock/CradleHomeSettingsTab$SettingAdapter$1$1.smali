.class Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter$1$1;
.super Ljava/lang/Object;
.source "CradleHomeSettingsTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter$1;)V
    .registers 2
    .parameter

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter$1$1;->this$2:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1149
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter$1$1;->this$2:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter$1;

    iget-object v1, v1, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter$1;->val$box:Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/deskclock/CenterToggleButton;->isChecked()Z

    move-result v0

    .line 1150
    .local v0, fchecked:Z
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter$1$1;->this$2:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter$1;

    iget-object v1, v1, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter$1;->this$1:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    iget-object v1, v1, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter$1$1;->this$2:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter$1;

    iget v2, v2, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter$1;->val$myPosition:I

    #calls: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->onBtnCheckChanged(IZ)V
    invoke-static {v1, v2, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->access$500(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;IZ)V

    .line 1151
    return-void
.end method
