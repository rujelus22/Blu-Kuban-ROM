.class Lcom/samsung/dmp/layout/DMPVideoActivity$4;
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
    .line 849
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$4;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 851
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$4;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mStopClicked:Z
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3002(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 852
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$4;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->handleStop()V

    .line 853
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$4;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1102(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 854
    return-void
.end method