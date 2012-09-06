.class public Lcom/google/android/picasasync/ConnectivityReceiver$AsyncService;
.super Landroid/app/IntentService;
.source "ConnectivityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/ConnectivityReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncService"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    const-string v0, "PicasaSyncConnectivityAsync"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 38
    invoke-static {p0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaFacade;->isMaster()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 39
    invoke-static {p0}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaSyncManager;->onEnvironmentChanged()V

    .line 41
    :cond_11
    return-void
.end method
