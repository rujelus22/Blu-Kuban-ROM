.class Lcom/sec/android/socialhub/view/HeaderLightView$1;
.super Ljava/lang/Object;
.source "HeaderLightView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/view/HeaderLightView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/view/HeaderLightView;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/view/HeaderLightView;)V
    .registers 2
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sec/android/socialhub/view/HeaderLightView$1;->this$0:Lcom/sec/android/socialhub/view/HeaderLightView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "view"
    .parameter "event"

    .prologue
    .line 43
    const-string v0, "HeaderLightView"

    const-string v1, "onTouch()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    .line 56
    :cond_10
    :goto_10
    const/4 v0, 0x1

    return v0

    .line 50
    :pswitch_12
    iget-object v0, p0, Lcom/sec/android/socialhub/view/HeaderLightView$1;->this$0:Lcom/sec/android/socialhub/view/HeaderLightView;

    #getter for: Lcom/sec/android/socialhub/view/HeaderLightView;->mLoadMoreListener:Lcom/sec/android/socialhub/view/HeaderLightView$OnScrollController;
    invoke-static {v0}, Lcom/sec/android/socialhub/view/HeaderLightView;->access$000(Lcom/sec/android/socialhub/view/HeaderLightView;)Lcom/sec/android/socialhub/view/HeaderLightView$OnScrollController;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 52
    iget-object v0, p0, Lcom/sec/android/socialhub/view/HeaderLightView$1;->this$0:Lcom/sec/android/socialhub/view/HeaderLightView;

    #getter for: Lcom/sec/android/socialhub/view/HeaderLightView;->mLoadMoreListener:Lcom/sec/android/socialhub/view/HeaderLightView$OnScrollController;
    invoke-static {v0}, Lcom/sec/android/socialhub/view/HeaderLightView;->access$000(Lcom/sec/android/socialhub/view/HeaderLightView;)Lcom/sec/android/socialhub/view/HeaderLightView$OnScrollController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/socialhub/view/HeaderLightView$OnScrollController;->onRequestStopScroll()V

    goto :goto_10

    .line 46
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_12
    .end packed-switch
.end method
