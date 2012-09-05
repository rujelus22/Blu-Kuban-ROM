.class Lcom/sec/android/app/dlna/service/DmsLocalService$2;
.super Landroid/database/ContentObserver;
.source "DmsLocalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/service/DmsLocalService;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/service/DmsLocalService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/service/DmsLocalService;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 489
    iput-object p1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService$2;->this$0:Lcom/sec/android/app/dlna/service/DmsLocalService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    .line 491
    const-string v1, "DLNA"

    const-string v2, "DmsLocalService.localAudioObserver.onChange()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :try_start_7
    iget-object v1, p0, Lcom/sec/android/app/dlna/service/DmsLocalService$2;->this$0:Lcom/sec/android/app/dlna/service/DmsLocalService;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/service/DmsLocalService;->updateAudioDirectory()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 497
    :goto_c
    return-void

    .line 494
    :catch_d
    move-exception v0

    .line 495
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c
.end method
