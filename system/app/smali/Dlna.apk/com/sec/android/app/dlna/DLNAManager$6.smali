.class Lcom/sec/android/app/dlna/DLNAManager$6;
.super Ljava/lang/Object;
.source "DLNAManager.java"

# interfaces
.implements Lcom/samsung/api/UploadFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/DLNAManager;->startDMS()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/DLNAManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/DLNAManager;)V
    .registers 2
    .parameter

    .prologue
    .line 699
    iput-object p1, p0, Lcom/sec/android/app/dlna/DLNAManager$6;->this$0:Lcom/sec/android/app/dlna/DLNAManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUploadFinished(Lcom/samsung/api/ContentItem;Z)V
    .registers 7
    .parameter "item"
    .parameter "bSuccess"

    .prologue
    .line 702
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->UploadedFileCntPlus()V

    .line 703
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/dlna/DLNAManager;->uploadHandler:Landroid/os/Handler;

    const/16 v1, 0x1a2d

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 705
    return-void
.end method
