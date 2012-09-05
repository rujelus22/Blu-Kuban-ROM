.class Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$14;
.super Ljava/lang/Object;
.source "CradleHomeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$14;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x1

    .line 1038
    packed-switch p2, :pswitch_data_ae

    .line 1109
    :goto_4
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$14;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$400(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->notifyDataSetChanged()V

    .line 1114
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$14;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->removeDialog(I)V

    .line 1115
    return-void

    .line 1041
    :pswitch_14
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$14;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$400(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    .line 1042
    .local v3, item:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$14;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b00cd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setSubTitle(Ljava/lang/String;)V

    .line 1045
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$14;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$000(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1046
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v5, "cradle_wallpaper_type"

    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1049
    const-string v5, "cradle_wallpaper_changed"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1052
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    .line 1061
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v3           #item:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    :pswitch_48
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1063
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "crop"

    const-string v6, "true"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1065
    const-string v5, "image/*"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1069
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$14;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #calls: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->formatIntent(Landroid/content/Intent;)V
    invoke-static {v5, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$600(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Landroid/content/Intent;)V

    .line 1070
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$14;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    const/4 v6, 0x5

    invoke-virtual {v5, v2, v6}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    .line 1083
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_67
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$14;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$000(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1084
    .local v1, edd:Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$14;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$400(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    .line 1085
    .restart local v3       #item:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$14;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b00cf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setSubTitle(Ljava/lang/String;)V

    .line 1089
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$14;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    .line 1092
    .local v4, wallPaperManager:Landroid/app/WallpaperManager;
    const-string v5, "cradle_current_wallpaper"

    const-string v6, "dddddd"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1095
    const-string v5, "cradle_wallpaper_type"

    const/4 v6, 0x3

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1098
    const-string v5, "cradle_wallpaper_changed"

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1101
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_4

    .line 1038
    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_14
        :pswitch_48
        :pswitch_67
    .end packed-switch
.end method
