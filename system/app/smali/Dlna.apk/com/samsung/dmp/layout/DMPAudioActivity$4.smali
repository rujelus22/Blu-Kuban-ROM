.class Lcom/samsung/dmp/layout/DMPAudioActivity$4;
.super Ljava/lang/Object;
.source "DMPAudioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPAudioActivity;->initializeUIForPortrait()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 780
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$4;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 782
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$4;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->handleStop()V

    .line 783
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$4;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mStopClicked:Z
    invoke-static {v0, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1902(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    .line 784
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$4;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mPaused:Z
    invoke-static {v0, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$602(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    .line 785
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->setHandleNextButton(Z)V

    .line 786
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$4;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #calls: Lcom/samsung/dmp/layout/DMPAudioActivity;->toggleButtonState(Z)V
    invoke-static {v0, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1300(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)V

    .line 787
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$4;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->handleNext()V

    .line 788
    return-void
.end method
