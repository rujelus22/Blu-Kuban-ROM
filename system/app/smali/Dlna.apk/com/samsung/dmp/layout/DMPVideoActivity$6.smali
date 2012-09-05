.class Lcom/samsung/dmp/layout/DMPVideoActivity$6;
.super Ljava/lang/Object;
.source "DMPVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPVideoActivity;->initializeUIForLandscape()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 869
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$6;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 872
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$6;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->handleStop()V

    .line 873
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$6;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mStopClicked:Z
    invoke-static {v0, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3002(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 874
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$6;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mPaused:Z
    invoke-static {v0, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1002(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 875
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->setHandleNextButton(Z)V

    .line 876
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$6;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->toggleButtonState(Z)V
    invoke-static {v0, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2100(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)V

    .line 877
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$6;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->toggleSeekBarState(Z)V
    invoke-static {v0, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2200(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)V

    .line 878
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$6;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->handleNext()V

    .line 879
    return-void
.end method
