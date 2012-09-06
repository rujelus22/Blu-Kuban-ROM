.class public Lcom/google/android/apps/plus/iu/ConnectivityReceiver$AsyncService;
.super Landroid/app/IntentService;
.source "ConnectivityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/iu/ConnectivityReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncService"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    const-string v0, "InstantUploadSyncConnectivityAsync"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 23
    invoke-static {p0}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->get(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->onEnvironmentChanged()V

    .line 24
    return-void
.end method
