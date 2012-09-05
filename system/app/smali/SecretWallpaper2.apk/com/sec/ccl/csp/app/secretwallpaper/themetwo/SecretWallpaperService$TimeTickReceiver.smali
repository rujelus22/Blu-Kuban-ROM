.class public Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$TimeTickReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecretWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeTickReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;


# direct methods
.method public constructor <init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)V
    .registers 2
    .parameter

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$TimeTickReceiver;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1179
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1181
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 1182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1200()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xea60

    div-long v1, v6, v8

    .line 1184
    .local v1, fTimeDiff:J
    const-string v6, "SecretWallpaper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mfInterval: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1300()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " fTimeDiff: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mnLastUpdateFailureCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$TimeTickReceiver;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLastUpdateFailureCount:I
    invoke-static {v8}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$300(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    iget-object v6, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$TimeTickReceiver;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mIsAccuweatherDaemon:Z
    invoke-static {v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$000(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z

    move-result v6

    if-nez v6, :cond_f7

    .line 1189
    iget-object v6, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$TimeTickReceiver;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-virtual {v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->getUpdateInterval()J

    move-result-wide v6

    cmp-long v6, v1, v6

    if-ltz v6, :cond_ad

    .line 1191
    const-string v6, "SecretWallpaper"

    const-string v7, "Updating weather info: Update interval exceeded"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object v6, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$TimeTickReceiver;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLastUpdateFailureCount:I
    invoke-static {v6, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$302(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;I)I

    .line 1199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1202(J)J

    .line 1201
    iget-object v6, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$TimeTickReceiver;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-virtual {v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->updateLocationInfo()Z

    .line 1230
    :cond_7c
    :goto_7c
    sget-object v6, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #calls: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->checkIsDayOrNight()Z
    invoke-static {v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1400(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z

    move-result v6

    sget-object v7, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbIsNight:Z
    invoke-static {v7}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1500(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z

    move-result v7

    if-eq v6, v7, :cond_ac

    .line 1232
    sget-object v6, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    sget-object v7, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbIsNight:Z
    invoke-static {v7}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1500(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z

    move-result v7

    if-nez v7, :cond_95

    move v4, v5

    :cond_95
    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbIsNight:Z
    invoke-static {v6, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1502(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;Z)Z

    .line 1234
    sget-object v4, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbIsNight:Z
    invoke-static {v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1500(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z

    move-result v4

    if-ne v4, v5, :cond_10d

    .line 1235
    const-string v4, "SecretWallpaper"

    const-string v6, "DAY -> NIGHT changed"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :goto_a7
    sget-object v4, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-virtual {v4, v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->setImageSetChange(Z)V

    .line 1243
    .end local v1           #fTimeDiff:J
    :cond_ac
    return-void

    .line 1203
    .restart local v1       #fTimeDiff:J
    :cond_ad
    iget-object v6, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$TimeTickReceiver;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLastUpdateFailureCount:I
    invoke-static {v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$300(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)I

    move-result v6

    if-lez v6, :cond_7c

    .line 1205
    const-wide/high16 v6, 0x4000

    iget-object v8, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$TimeTickReceiver;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLastUpdateFailureCount:I
    invoke-static {v8}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$300(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v3, v6

    .line 1207
    .local v3, nReloadCondition:I
    const-string v6, "SecretWallpaper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "2^(mnLastUpdateFailureCount-1) = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    int-to-long v6, v3

    cmp-long v6, v1, v6

    if-ltz v6, :cond_7c

    .line 1211
    const-string v6, "SecretWallpaper"

    const-string v7, "Updating weather info: Last update failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    iget-object v6, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$TimeTickReceiver;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-virtual {v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->updateLocationInfo()Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 1214
    iget-object v6, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$TimeTickReceiver;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #setter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLastUpdateFailureCount:I
    invoke-static {v6, v4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$302(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;I)I

    goto :goto_7c

    .line 1222
    .end local v3           #nReloadCondition:I
    :cond_f7
    iget-object v6, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$TimeTickReceiver;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mnLastUpdateFailureCount:I
    invoke-static {v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$300(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)I

    move-result v6

    if-lez v6, :cond_7c

    .line 1223
    const-string v6, "SecretWallpaper"

    const-string v7, "Updating weather info: Last update failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    iget-object v6, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$TimeTickReceiver;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    invoke-virtual {v6}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->updateWeatherInfo()Z

    goto/16 :goto_7c

    .line 1237
    :cond_10d
    const-string v4, "SecretWallpaper"

    const-string v6, "NIGHT -> DAY changed"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7
.end method
