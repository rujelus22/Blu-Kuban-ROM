.class Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;
.super Lcom/google/android/apps/plus/hangout/GCommEventHandler;
.source "GCommApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/GCommApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppEventHandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/GCommApp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 259
    const-class v0, Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Lcom/google/android/apps/plus/hangout/GCommApp;)V
    .registers 2
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommEventHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/hangout/GCommApp$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;-><init>(Lcom/google/android/apps/plus/hangout/GCommApp;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$900(Lcom/google/android/apps/plus/hangout/GCommApp;)Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 263
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$1000(Lcom/google/android/apps/plus/hangout/GCommApp;)Lcom/google/android/apps/plus/phone/EsApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$900(Lcom/google/android/apps/plus/hangout/GCommApp;)Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/apps/plus/hangout/ExitHistory;->recordErrorExit(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;Z)V

    .line 264
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$902(Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/service/Hangout$Info;)Lcom/google/android/apps/plus/service/Hangout$Info;

    .line 267
    :cond_1e
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #calls: Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeetingAndDisconnect()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$300(Lcom/google/android/apps/plus/hangout/GCommApp;)V

    .line 271
    return-void
.end method

.method public onMeetingEnterError(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;)V
    .registers 2
    .parameter "error"

    .prologue
    .line 280
    return-void
.end method

.method public onMeetingExited(Z)V
    .registers 5
    .parameter "clientInitiated"

    .prologue
    const/4 v2, 0x0

    .line 299
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeetingCleanupDone:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$1100(Lcom/google/android/apps/plus/hangout/GCommApp;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 300
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeetingCleanup()V

    .line 303
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #setter for: Lcom/google/android/apps/plus/hangout/GCommApp;->isExitingHangout:Z
    invoke-static {v0, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$1702(Lcom/google/android/apps/plus/hangout/GCommApp;Z)Z

    .line 304
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$900(Lcom/google/android/apps/plus/hangout/GCommApp;)Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 305
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$1000(Lcom/google/android/apps/plus/hangout/GCommApp;)Lcom/google/android/apps/plus/phone/EsApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$900(Lcom/google/android/apps/plus/hangout/GCommApp;)Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/ExitHistory;->recordNormalExit(Landroid/content/Context;Lcom/google/android/apps/plus/service/Hangout$Info;Z)V

    .line 306
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$902(Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/service/Hangout$Info;)Lcom/google/android/apps/plus/service/Hangout$Info;

    .line 308
    :cond_30
    return-void
.end method

.method public onMeetingMediaStarted()V
    .registers 5

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeetingCleanupDone:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$1102(Lcom/google/android/apps/plus/hangout/GCommApp;Z)Z

    .line 286
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #calls: Lcom/google/android/apps/plus/hangout/GCommApp;->isWakeLockHeld()Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$1200(Lcom/google/android/apps/plus/hangout/GCommApp;)Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 287
    :cond_18
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    new-instance v1, Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;-><init>(Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/hangout/GCommApp$1;)V

    #setter for: Lcom/google/android/apps/plus/hangout/GCommApp;->headsetBroadcastReceiver:Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$1302(Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;)Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;

    .line 288
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #calls: Lcom/google/android/apps/plus/hangout/GCommApp;->adjustAudioSettingsForMeetingEntry()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$1500(Lcom/google/android/apps/plus/hangout/GCommApp;)V

    .line 289
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommApp;->plusOneApplication:Lcom/google/android/apps/plus/phone/EsApplication;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$1000(Lcom/google/android/apps/plus/hangout/GCommApp;)Lcom/google/android/apps/plus/phone/EsApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommApp;->headsetBroadcastReceiver:Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$1300(Lcom/google/android/apps/plus/hangout/GCommApp;)Lcom/google/android/apps/plus/hangout/GCommApp$HeadsetBroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/phone/EsApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 291
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/google/android/apps/plus/hangout/GCommApp;->hangoutStartTime:J
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$1602(Lcom/google/android/apps/plus/hangout/GCommApp;J)J

    .line 292
    return-void
.end method

.method public onSigninTimeOutError()V
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$AppEventHandler;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #calls: Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeetingAndDisconnect()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$300(Lcom/google/android/apps/plus/hangout/GCommApp;)V

    .line 276
    return-void
.end method
