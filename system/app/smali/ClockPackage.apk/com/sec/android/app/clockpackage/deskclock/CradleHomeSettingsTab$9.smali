.class Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$9;
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
    .line 823
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$9;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 825
    packed-switch p2, :pswitch_data_b6

    .line 890
    :goto_5
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$9;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->notifyDataSetChanged()V

    .line 895
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$9;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->removeDialog(I)V

    .line 896
    return-void

    .line 828
    :pswitch_15
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$9;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    .line 829
    .local v3, item:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$9;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b00cd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setSubTitle(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v3, v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setSubTitleVisibled(Z)V

    .line 833
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$9;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->access$000(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 834
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v5, "cradle_wallpaper_type"

    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 835
    const-string v5, "cradle_wallpaper_changed"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 836
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_5

    .line 845
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v3           #item:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    :pswitch_4c
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 847
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "crop"

    const-string v6, "true"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 849
    const-string v5, "image/*"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 853
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$9;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    #calls: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->formatIntent(Landroid/content/Intent;)V
    invoke-static {v5, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->access$300(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;Landroid/content/Intent;)V

    .line 854
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$9;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    const/4 v6, 0x5

    invoke-virtual {v5, v2, v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_5

    .line 867
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_6b
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$9;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->access$000(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 868
    .local v1, edd:Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$9;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;)Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;

    .line 869
    .restart local v3       #item:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$9;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b00cf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setSubTitle(Ljava/lang/String;)V

    .line 872
    invoke-virtual {v3, v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$SettingItem;->setSubTitleVisibled(Z)V

    .line 874
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab$9;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettingsTab;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    .line 877
    .local v4, wallPaperManager:Landroid/app/WallpaperManager;
    const-string v5, "cradle_current_wallpaper"

    const-string v6, "dddddd"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 880
    const-string v5, "cradle_wallpaper_type"

    const/4 v6, 0x3

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 881
    const-string v5, "cradle_wallpaper_changed"

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 882
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_5

    .line 825
    nop

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_15
        :pswitch_4c
        :pswitch_6b
    .end packed-switch
.end method
