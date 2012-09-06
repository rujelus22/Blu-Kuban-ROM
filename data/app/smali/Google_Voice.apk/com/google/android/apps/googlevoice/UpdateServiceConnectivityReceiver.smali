.class public Lcom/google/android/apps/googlevoice/UpdateServiceConnectivityReceiver;
.super Lcom/google/android/apps/googlevoice/BaseConnectivityReceiver;
.source "UpdateServiceConnectivityReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/BaseConnectivityReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onConnectionRestored(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 23
    invoke-static {p1}, Lcom/google/android/apps/googlevoice/UpdateService;->requestRetryUpdate(Landroid/content/Context;)V

    .line 24
    return-void
.end method
