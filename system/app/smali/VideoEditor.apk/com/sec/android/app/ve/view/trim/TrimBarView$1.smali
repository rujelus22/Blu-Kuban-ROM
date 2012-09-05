.class Lcom/sec/android/app/ve/view/trim/TrimBarView$1;
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
    iput-object p1, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView$1;->this$0:Lcom/sec/android/app/ve/view/trim/TrimBarView;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "left bar touched :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_45

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView$1;->this$0:Lcom/sec/android/app/ve/view/trim/TrimBarView;

    #setter for: Lcom/sec/android/app/ve/view/trim/TrimBarView;->mWhichClicked:I
    invoke-static {v0, v2}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->access$0(Lcom/sec/android/app/ve/view/trim/TrimBarView;I)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/ve/view/trim/TrimBarView$1;->this$0:Lcom/sec/android/app/ve/view/trim/TrimBarView;

    #setter for: Lcom/sec/android/app/ve/view/trim/TrimBarView;->mDragging:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->access$1(Lcom/sec/android/app/ve/view/trim/TrimBarView;Z)V

    .line 96
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->freeze(Z)V

    .line 97
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v0, 0x7f020157

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    :cond_44
    :goto_44
    return v2

    .line 98
    .restart local p1
    :cond_45
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_44

    .line 99
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->freeze(Z)V

    goto :goto_44
.end method
