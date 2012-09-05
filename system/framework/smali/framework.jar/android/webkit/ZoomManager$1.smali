.class Landroid/webkit/ZoomManager$1;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/ZoomManager;


# direct methods
.method constructor <init>(Landroid/webkit/ZoomManager;)V
    .registers 2
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Landroid/webkit/ZoomManager$1;->this$0:Landroid/webkit/ZoomManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .registers 3
    .parameter "motionEvent"

    .prologue
    .line 254
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    sparse-switch v0, :sswitch_data_1a

    .line 263
    :cond_7
    :goto_7
    :sswitch_7
    return-void

    .line 258
    :sswitch_8
    iget-object v0, p0, Landroid/webkit/ZoomManager$1;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;
    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$000(Landroid/webkit/ZoomManager;)Landroid/webkit/WebviewScaleGestureDetector;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 259
    iget-object v0, p0, Landroid/webkit/ZoomManager$1;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;
    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$000(Landroid/webkit/ZoomManager;)Landroid/webkit/WebviewScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebviewScaleGestureDetector;->onMREvent(Landroid/hardware/motion/MREvent;)V

    goto :goto_7

    .line 254
    :sswitch_data_1a
    .sparse-switch
        0x1 -> :sswitch_7
        0x43 -> :sswitch_8
    .end sparse-switch
.end method
