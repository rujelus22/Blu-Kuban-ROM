.class Lcom/sprint/w/installer/DownloadService$5;
.super Ljava/lang/Thread;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/DownloadService;->cleanupInProgressPacks(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/DownloadService;

.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$sp:Lcom/sprint/w/installer/psi/ServicePack;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/DownloadService;Landroid/content/Context;Lcom/sprint/w/installer/psi/ServicePack;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1138
    iput-object p1, p0, Lcom/sprint/w/installer/DownloadService$5;->this$0:Lcom/sprint/w/installer/DownloadService;

    iput-object p2, p0, Lcom/sprint/w/installer/DownloadService$5;->val$c:Landroid/content/Context;

    iput-object p3, p0, Lcom/sprint/w/installer/DownloadService$5;->val$sp:Lcom/sprint/w/installer/psi/ServicePack;

    iput p4, p0, Lcom/sprint/w/installer/DownloadService$5;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/sprint/w/installer/DownloadService$5;->val$c:Landroid/content/Context;

    const-wide/32 v1, 0xea60

    invoke-static {v0, v1, v2}, Lcom/sprint/w/installer/util/Util;->waitForNetwork(Landroid/content/Context;J)Z

    .line 1143
    invoke-static {}, Lcom/sprint/w/installer/DownloadService;->access$100()Lcom/sprint/id/logger/Logger;

    move-result-object v0

    const-string v1, "cleanupInProgressPacks(): Downloading default pack"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1144
    iget-object v0, p0, Lcom/sprint/w/installer/DownloadService$5;->this$0:Lcom/sprint/w/installer/DownloadService;

    iget-object v1, p0, Lcom/sprint/w/installer/DownloadService$5;->val$sp:Lcom/sprint/w/installer/psi/ServicePack;

    iget v2, p0, Lcom/sprint/w/installer/DownloadService$5;->val$startId:I

    #calls: Lcom/sprint/w/installer/DownloadService;->downloadDefaultPack(Lcom/sprint/w/installer/psi/ServicePack;I)V
    invoke-static {v0, v1, v2}, Lcom/sprint/w/installer/DownloadService;->access$400(Lcom/sprint/w/installer/DownloadService;Lcom/sprint/w/installer/psi/ServicePack;I)V

    .line 1145
    iget-object v0, p0, Lcom/sprint/w/installer/DownloadService$5;->this$0:Lcom/sprint/w/installer/DownloadService;

    #calls: Lcom/sprint/w/installer/DownloadService;->notifyCleanupDone()V
    invoke-static {v0}, Lcom/sprint/w/installer/DownloadService;->access$500(Lcom/sprint/w/installer/DownloadService;)V

    .line 1146
    return-void
.end method
