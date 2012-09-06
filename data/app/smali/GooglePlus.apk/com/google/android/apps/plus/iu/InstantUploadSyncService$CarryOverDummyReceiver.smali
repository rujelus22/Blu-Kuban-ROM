.class public Lcom/google/android/apps/plus/iu/InstantUploadSyncService$CarryOverDummyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstantUploadSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/iu/InstantUploadSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarryOverDummyReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 198
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 202
    return-void
.end method
