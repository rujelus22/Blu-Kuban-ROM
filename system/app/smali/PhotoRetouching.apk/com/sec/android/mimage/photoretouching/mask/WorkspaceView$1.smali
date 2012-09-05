.class Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView$1;
.super Landroid/os/Handler;
.source "WorkspaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;
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
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView$1;->this$0:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    .line 451
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 453
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xd002

    if-ne v0, v1, :cond_14

    .line 454
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView$1;->this$0:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    #getter for: Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->drawbrushanimation:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->access$0(Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 455
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView$1;->this$0:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate()V

    .line 457
    :cond_14
    return-void
.end method
