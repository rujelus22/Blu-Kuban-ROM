.class Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$7;
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
    .line 728
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$7;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 730
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$7;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    .line 731
    .local v2, item:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    invoke-virtual {v2, v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setSubTitleVisibled(Z)V

    .line 734
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$7;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->access$000(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 735
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "cradle_current_clock"

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 736
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$7;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->access$000(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "cradle_time_display"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 738
    .local v1, isDisplayClock:Z
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 740
    packed-switch p2, :pswitch_data_6e

    .line 759
    :goto_32
    if-eqz v1, :cond_69

    .line 760
    invoke-virtual {v2, v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setChecked(Z)V

    .line 765
    :goto_37
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$7;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->notifyDataSetChanged()V

    .line 767
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$7;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->removeDialog(I)V

    .line 768
    return-void

    .line 743
    :pswitch_47
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$7;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setSubTitle(Ljava/lang/String;)V

    goto :goto_32

    .line 752
    :pswitch_58
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$7;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setSubTitle(Ljava/lang/String;)V

    goto :goto_32

    .line 762
    :cond_69
    invoke-virtual {v2, v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setChecked(Z)V

    goto :goto_37

    .line 740
    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_47
        :pswitch_58
    .end packed-switch
.end method
