.class Lcom/sec/android/app/ve/view/trim/TrimBarView$2;
.super Ljava/lang/Object;
.source "TrimBarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/trim/TrimBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/trim/TrimBarView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/trim/TrimBarView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView$2;->this$0:Lcom/sec/android/app/ve/view/trim/TrimBarView;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "right bar touched :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_46

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView$2;->this$0:Lcom/sec/android/app/ve/view/trim/TrimBarView;

    #setter for: Lcom/sec/android/app/ve/view/trim/TrimBarView;->mWhichClicked:I
    invoke-static {v0, v3}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->access$0(Lcom/sec/android/app/ve/view/trim/TrimBarView;I)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView$2;->this$0:Lcom/sec/android/app/ve/view/trim/TrimBarView;

    #setter for: Lcom/sec/android/app/ve/view/trim/TrimBarView;->mDragging:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->access$1(Lcom/sec/android/app/ve/view/trim/TrimBarView;Z)V

    .line 117
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->freeze(Z)V

    .line 118
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v0, 0x7f02015b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    :cond_45
    :goto_45
    return v2

    .line 119
    .restart local p1
    :cond_46
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_45

    .line 120
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->freeze(Z)V

    goto :goto_45
.end method
