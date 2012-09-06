.class public Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "ShadowNumberRefreshService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Receiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 126
    invoke-static {p1}, Lcom/google/android/apps/googlevoice/ShadowNumberRefreshService;->requestRefresh(Landroid/content/Context;)V

    .line 127
    return-void
.end method
