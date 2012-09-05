.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$4;
.super Ljava/lang/Object;
.source "MenuSettings.java"

# interfaces
.implements Lcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;

.field final synthetic val$newValue:Ljava/lang/Object;

.field final synthetic val$preference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;Ljava/lang/Object;Landroid/preference/Preference;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$4;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;

    iput-object p2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$4;->val$newValue:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$4;->val$preference:Landroid/preference/Preference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(I)V
    .registers 8
    .parameter "buttonType"

    .prologue
    .line 551
    const/16 v3, 0xa

    if-ne p1, v3, :cond_25

    .line 553
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$4;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mDbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->access$500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$4;->val$newValue:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateAutoRefreshTime(I)I

    move-result v2

    .line 555
    .local v2, result:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_26

    .line 556
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$4;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;

    invoke-virtual {v3, v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->setResult(I)V

    .line 557
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$4;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->finish()V

    .line 576
    .end local v2           #result:I
    :cond_25
    :goto_25
    return-void

    .line 561
    .restart local v2       #result:I
    :cond_26
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$4;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$4;->val$newValue:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setAutorefreshSetting(Landroid/content/Context;I)Z

    .line 563
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$4;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getNextTime(Landroid/content/Context;ZZ)J

    move-result-wide v0

    .line 564
    .local v0, nextTime:J
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$4;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastTime(Landroid/content/Context;J)Z

    .line 566
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$4;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->init()V
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->access$600(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;)V

    .line 568
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$4;->val$preference:Landroid/preference/Preference;

    check-cast v3, Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$4;->val$newValue:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 569
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$4;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mCtx:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->access$700(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$4;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mDbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->access$500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/common/DaemonInterface;->CheckSameDaemonCityIdAtStting(Landroid/content/Context;Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;)V

    .line 570
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$4;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;

    #calls: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->setValues()V
    invoke-static {v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->access$800(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;)V

    goto :goto_25
.end method
