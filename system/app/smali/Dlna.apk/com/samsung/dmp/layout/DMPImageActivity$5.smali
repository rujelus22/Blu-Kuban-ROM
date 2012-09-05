.class Lcom/samsung/dmp/layout/DMPImageActivity$5;
.super Ljava/lang/Object;
.source "DMPImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPImageActivity;->initializeUIForLandscape()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPImageActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$5;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 397
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->setHandleNextButton(Z)V

    .line 398
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$5;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    const/4 v1, 0x0

    #calls: Lcom/samsung/dmp/layout/DMPImageActivity;->toggleButtonState(Z)V
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$600(Lcom/samsung/dmp/layout/DMPImageActivity;Z)V

    .line 399
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$5;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->handleNext()V

    .line 400
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$5;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$500(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 401
    return-void
.end method
