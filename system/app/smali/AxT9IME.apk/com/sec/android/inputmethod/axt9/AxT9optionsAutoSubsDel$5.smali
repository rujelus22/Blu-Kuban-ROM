.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$5;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubsDel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)V
    .registers 2
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 357
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    .line 359
    .local v0, row:Landroid/widget/TableRow;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 361
    .local v1, y:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1c

    .line 362
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mLastMotionY:I
    invoke-static {v3, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$702(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;I)I

    .line 363
    invoke-virtual {v0, v6}, Landroid/widget/TableRow;->setPressed(Z)V

    .line 373
    :cond_1b
    :goto_1b
    return v6

    .line 364
    :cond_1c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v6, :cond_29

    .line 365
    invoke-virtual {v0, v5}, Landroid/widget/TableRow;->setPressed(Z)V

    .line 366
    invoke-virtual {v0, v5}, Landroid/widget/TableRow;->playSoundEffect(I)V

    goto :goto_1b

    .line 367
    :cond_29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1b

    .line 368
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mLastMotionY:I
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 369
    .local v2, yDiff:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mTouchSlop:I
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$800(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)I

    move-result v3

    if-le v2, v3, :cond_1b

    .line 370
    invoke-virtual {v0, v5}, Landroid/widget/TableRow;->setPressed(Z)V

    goto :goto_1b
.end method
