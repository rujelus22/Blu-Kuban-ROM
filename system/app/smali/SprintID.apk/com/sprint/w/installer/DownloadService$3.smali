.class Lcom/sprint/w/installer/DownloadService$3;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/DownloadService;->notifyCanceled(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/DownloadService;

.field final synthetic val$packId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/DownloadService;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 814
    iput-object p1, p0, Lcom/sprint/w/installer/DownloadService$3;->this$0:Lcom/sprint/w/installer/DownloadService;

    iput-object p2, p0, Lcom/sprint/w/installer/DownloadService$3;->val$packId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 816
    iget-object v0, p0, Lcom/sprint/w/installer/DownloadService$3;->this$0:Lcom/sprint/w/installer/DownloadService;

    #calls: Lcom/sprint/w/installer/DownloadService;->getNotificationManager()Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/sprint/w/installer/DownloadService;->access$300(Lcom/sprint/w/installer/DownloadService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/w/installer/DownloadService$3;->val$packId:Ljava/lang/String;

    invoke-static {v1}, Lcom/sprint/w/installer/DownloadService;->getNotificationId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 817
    return-void
.end method
