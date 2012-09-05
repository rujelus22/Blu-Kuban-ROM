.class Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$7;
.super Ljava/lang/Object;
.source "CradleWeatherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$7;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 458
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$7;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    iget-object v3, v3, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 459
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    .line 461
    .local v2, weatherUnit:Ljava/lang/String;
    packed-switch p2, :pswitch_data_a6

    .line 483
    :goto_c
    const-string v3, "cradle_weather_unit"

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 484
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 486
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$7;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->access$200(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;)Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;

    .line 487
    .local v1, item:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;
    #setter for: Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->mSubTitle:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;->access$302(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;Ljava/lang/String;)Ljava/lang/String;

    .line 488
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$7;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->mAdapter:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->access$200(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;)Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingAdapter;->notifyDataSetChanged()V

    .line 490
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$7;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->removeDialog(I)V

    .line 491
    return-void

    .line 464
    .end local v1           #item:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$SettingItem;
    :pswitch_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$7;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00c8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$7;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00c9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 470
    goto :goto_c

    .line 473
    :pswitch_6c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$7;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$7;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00ca

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 479
    goto/16 :goto_c

    .line 461
    nop

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_34
        :pswitch_6c
    .end packed-switch
.end method
