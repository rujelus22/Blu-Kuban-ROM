.class Lcom/sprint/w/installer/DownloadService$6;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/DownloadService;->addNotifications(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/DownloadService;

.field final synthetic val$n:Landroid/app/Notification;

.field final synthetic val$sp:Lcom/sprint/w/installer/psi/ServicePack;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/DownloadService;Lcom/sprint/w/installer/psi/ServicePack;Landroid/app/Notification;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/sprint/w/installer/DownloadService$6;->this$0:Lcom/sprint/w/installer/DownloadService;

    iput-object p2, p0, Lcom/sprint/w/installer/DownloadService$6;->val$sp:Lcom/sprint/w/installer/psi/ServicePack;

    iput-object p3, p0, Lcom/sprint/w/installer/DownloadService$6;->val$n:Landroid/app/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/sprint/w/installer/DownloadService$6;->this$0:Lcom/sprint/w/installer/DownloadService;

    #calls: Lcom/sprint/w/installer/DownloadService;->getNotificationManager()Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/sprint/w/installer/DownloadService;->access$300(Lcom/sprint/w/installer/DownloadService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/w/installer/DownloadService$6;->val$sp:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v1}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sprint/w/installer/DownloadService;->getNotificationId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1192
    iget-object v0, p0, Lcom/sprint/w/installer/DownloadService$6;->this$0:Lcom/sprint/w/installer/DownloadService;

    #calls: Lcom/sprint/w/installer/DownloadService;->getNotificationManager()Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/sprint/w/installer/DownloadService;->access$300(Lcom/sprint/w/installer/DownloadService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/w/installer/DownloadService$6;->val$sp:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v1}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sprint/w/installer/DownloadService;->getNotificationId(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/sprint/w/installer/DownloadService$6;->val$n:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1193
    return-void
.end method
