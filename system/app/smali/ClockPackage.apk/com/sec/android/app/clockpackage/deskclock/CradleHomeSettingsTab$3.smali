.class Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$3;
.super Ljava/lang/Object;
.source "CradleHomeSettingsTab.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)V
    .registers 2
    .parameter

    .prologue
    .line 591
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 593
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    .line 595
    .local v1, item:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->access$000(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 596
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    packed-switch p2, :pswitch_data_4a

    .line 618
    :goto_1a
    const-string v2, "cradle_default_dock_mode"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 620
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 621
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->notifyDataSetChanged()V

    .line 622
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->removeDialog(I)V

    .line 623
    return-void

    .line 598
    :pswitch_32
    const-string v2, "cralde_dock_mode_setting"

    const-string v3, "Always"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1a

    .line 604
    :pswitch_3a
    const-string v2, "cralde_dock_mode_setting"

    const-string v3, "On the Idle screen"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1a

    .line 610
    :pswitch_42
    const-string v2, "cralde_dock_mode_setting"

    const-string v3, "Never"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1a

    .line 596
    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_32
        :pswitch_3a
        :pswitch_42
    .end packed-switch
.end method
