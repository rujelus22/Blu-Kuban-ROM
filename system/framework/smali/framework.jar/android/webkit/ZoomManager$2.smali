.class Landroid/webkit/ZoomManager$2;
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
    .line 267
    iput-object p1, p0, Landroid/webkit/ZoomManager$2;->this$0:Landroid/webkit/ZoomManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .registers 4
    .parameter "motionEvent"

    .prologue
    .line 269
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 276
    :goto_7
    return-void

    .line 271
    :pswitch_8
    iget-object v0, p0, Landroid/webkit/ZoomManager$2;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$100(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->pageUp(Z)Z

    goto :goto_7

    .line 269
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
