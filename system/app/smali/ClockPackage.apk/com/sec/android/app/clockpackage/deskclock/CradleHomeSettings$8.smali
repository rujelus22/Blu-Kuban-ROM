.class Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$8;
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
    .line 811
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$8;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x6

    .line 813
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$8;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$400(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;

    .line 815
    .local v1, item:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$8;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$000(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 817
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    packed-switch p2, :pswitch_data_58

    .line 839
    :goto_1a
    const-string v2, "cradle_default_dock_mode"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 840
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 841
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$8;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$400(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingAdapter;->notifyDataSetChanged()V

    .line 842
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$8;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->removeDialog(I)V

    .line 843
    return-void

    .line 819
    :pswitch_31
    const-string v2, "cralde_dock_mode_setting"

    const-string v3, "Always"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 822
    const-string v2, "Always"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setSubTitle(Ljava/lang/String;)V

    goto :goto_1a

    .line 825
    :pswitch_3e
    const-string v2, "cralde_dock_mode_setting"

    const-string v3, "On the Idle screen"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 828
    const-string v2, "On the Idle screen"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setSubTitle(Ljava/lang/String;)V

    goto :goto_1a

    .line 831
    :pswitch_4b
    const-string v2, "cralde_dock_mode_setting"

    const-string v3, "Never"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 834
    const-string v2, "Never"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$SettingItem;->setSubTitle(Ljava/lang/String;)V

    goto :goto_1a

    .line 817
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_31
        :pswitch_3e
        :pswitch_4b
    .end packed-switch
.end method
