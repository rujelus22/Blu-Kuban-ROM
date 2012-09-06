.class final Lcom/twitter/android/fv;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/widget/ListView;

.field final synthetic d:I

.field final synthetic e:Landroid/view/animation/Animation;

.field final synthetic f:Landroid/view/animation/Animation;

.field final synthetic g:Lcom/twitter/android/TweetListFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetListFragment;IILandroid/widget/ListView;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .registers 8

    iput-object p1, p0, Lcom/twitter/android/fv;->g:Lcom/twitter/android/TweetListFragment;

    iput p2, p0, Lcom/twitter/android/fv;->a:I

    iput p3, p0, Lcom/twitter/android/fv;->b:I

    iput-object p4, p0, Lcom/twitter/android/fv;->c:Landroid/widget/ListView;

    iput p5, p0, Lcom/twitter/android/fv;->d:I

    iput-object p6, p0, Lcom/twitter/android/fv;->e:Landroid/view/animation/Animation;

    iput-object p7, p0, Lcom/twitter/android/fv;->f:Landroid/view/animation/Animation;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/twitter/android/fv;->a:I

    if-ge v2, v3, :cond_5

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/twitter/android/fv;->b:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/twitter/android/fv;->c:Landroid/widget/ListView;

    invoke-virtual {v4, v2, v1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v4

    iget-object v1, p0, Lcom/twitter/android/fv;->c:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v4, v1

    iget-object v5, p0, Lcom/twitter/android/fv;->c:Landroid/widget/ListView;

    invoke-virtual {v5, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/twitter/android/gb;

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/gb;

    if-eqz v1, :cond_5

    sub-int v5, v2, v3

    iget v6, p0, Lcom/twitter/android/fv;->d:I

    if-le v5, v6, :cond_67

    iget-object v0, p0, Lcom/twitter/android/fv;->g:Lcom/twitter/android/TweetListFragment;

    iget-object v2, p0, Lcom/twitter/android/fv;->e:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/twitter/android/fv;->f:Landroid/view/animation/Animation;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/TweetListFragment;->a(Lcom/twitter/android/gb;Landroid/view/animation/Animation;Landroid/view/animation/Animation;ILandroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_5

    :cond_67
    sub-int v2, v3, v2

    iget v3, p0, Lcom/twitter/android/fv;->d:I

    if-le v2, v3, :cond_5

    iget-object v0, p0, Lcom/twitter/android/fv;->g:Lcom/twitter/android/TweetListFragment;

    iget-object v2, p0, Lcom/twitter/android/fv;->e:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/twitter/android/fv;->f:Landroid/view/animation/Animation;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/TweetListFragment;->a(Lcom/twitter/android/gb;Landroid/view/animation/Animation;Landroid/view/animation/Animation;ILandroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_5
.end method
