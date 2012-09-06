.class public Lcom/android/email/service/AttachmentDownloadService$Watchdog;
.super Landroid/content/BroadcastReceiver;
.source "AttachmentDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Watchdog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 154
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 157
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/email/service/AttachmentDownloadService$Watchdog$1;

    invoke-direct {v1, p0}, Lcom/android/email/service/AttachmentDownloadService$Watchdog$1;-><init>(Lcom/android/email/service/AttachmentDownloadService$Watchdog;)V

    const-string v2, "AttachmentDownloadService Watchdog"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 162
    return-void
.end method
