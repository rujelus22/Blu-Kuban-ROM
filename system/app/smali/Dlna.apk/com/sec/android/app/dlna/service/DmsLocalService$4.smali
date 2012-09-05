.class Lcom/sec/android/app/dlna/service/DmsLocalService$4;
.super Landroid/content/BroadcastReceiver;
.source "DmsLocalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/service/DmsLocalService;->addBroadcastAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/service/DmsLocalService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/service/DmsLocalService;)V
    .registers 2
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService$4;->this$0:Lcom/sec/android/app/dlna/service/DmsLocalService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 586
    const-string v0, "DLNA"

    const-string v1, "Locale Changed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService$4;->this$0:Lcom/sec/android/app/dlna/service/DmsLocalService;

    iput-boolean v2, v0, Lcom/sec/android/app/dlna/service/DmsLocalService;->isChangedLocale:Z

    .line 588
    iget-object v0, p0, Lcom/sec/android/app/dlna/service/DmsLocalService$4;->this$0:Lcom/sec/android/app/dlna/service/DmsLocalService;

    iput-boolean v2, v0, Lcom/sec/android/app/dlna/service/DmsLocalService;->isReceiveEject:Z

    .line 589
    return-void
.end method
