.class Lcom/samsung/dmp/layout/DMPAudioActivity$5;
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
    .line 791
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$5;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 793
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$5;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mStopClicked:Z
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1902(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    .line 794
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$5;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsStopped:Z
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$402(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    .line 795
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$5;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->handleStop()V

    .line 796
    return-void
.end method
