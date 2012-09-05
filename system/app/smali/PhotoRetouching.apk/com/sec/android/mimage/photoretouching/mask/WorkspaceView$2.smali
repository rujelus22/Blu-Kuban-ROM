.class Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView$2;
.super Ljava/lang/Thread;
.source "WorkspaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->startAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView$2;->this$0:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    .line 469
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 472
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView$2;->this$0:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    #getter for: Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->isRunning:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->access$1(Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 479
    :goto_8
    return-void

    .line 475
    :cond_9
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView$2;->this$0:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->isRunning:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->access$2(Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;Z)V

    .line 476
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView$2;->this$0:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    #calls: Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->dashed_line_anim()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->access$3(Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;)V

    .line 477
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView$2;->this$0:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->isRunning:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->access$2(Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;Z)V

    goto :goto_8
.end method
