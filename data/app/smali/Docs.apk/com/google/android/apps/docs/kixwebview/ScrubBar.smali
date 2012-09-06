.class public Lcom/google/android/apps/docs/kixwebview/ScrubBar;
.super Landroid/widget/FrameLayout;
.source "ScrubBar.java"


# instance fields
.field private final a:F

.field private a:I

.field private a:J

.field private a:LKN;

.field private a:LKO;

.field private a:LKP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LKP",
            "<**>;"
        }
    .end annotation
.end field

.field private final a:Landroid/os/Handler;

.field private final a:Landroid/view/View$OnClickListener;

.field private a:Ljava/lang/CharSequence;

.field private a:Ljava/lang/Integer;

.field private a:Z

.field private b:F

.field private b:I

.field private b:Ljava/lang/CharSequence;

.field private b:Z

.field private final c:F

.field private c:I

.field private final c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 171
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 179
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    iput v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:I

    .line 127
    iput v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->b:I

    .line 138
    iput-boolean v1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->b:Z

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:Ljava/lang/Integer;

    .line 151
    iput v1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->c:I

    .line 159
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->c:F

    .line 320
    new-instance v0, LKL;

    invoke-direct {v0, p0}, LKL;-><init>(Lcom/google/android/apps/docs/kixwebview/ScrubBar;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:Landroid/os/Handler;

    .line 618
    new-instance v0, LKM;

    invoke-direct {v0, p0}, LKM;-><init>(Lcom/google/android/apps/docs/kixwebview/ScrubBar;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:Landroid/view/View$OnClickListener;

    .line 180
    iput-boolean v1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->c:Z

    .line 181
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:F

    .line 182
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/ScrubBar;)I
    .registers 2
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->c:I

    return v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/ScrubBar;)LKN;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKN;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/ScrubBar;)Ljava/lang/Integer;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method private a(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 279
    iget-boolean v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->b:Z

    if-eqz v0, :cond_2c

    .line 280
    const-string v0, "ScrubBar"

    invoke-static {v0, v1}, LZA;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 281
    const-string v0, "ScrubBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queuing up position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:Ljava/lang/Integer;

    .line 290
    :goto_2b
    return-void

    .line 285
    :cond_2c
    const-string v0, "ScrubBar"

    invoke-static {v0, v1}, LZA;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 286
    const-string v0, "ScrubBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updating to position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " without queueing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_52
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->b(I)V

    goto :goto_2b
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 13
    .parameter

    .prologue
    const-wide/16 v9, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x3

    .line 559
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v0, v0, LKO;->a:Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->getWidth()I

    move-result v4

    .line 561
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKP;

    if-nez v0, :cond_7d

    move v1, v2

    .line 564
    :goto_12
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v0, v0, LKO;->a:Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 566
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v0, v0

    sub-float v0, v5, v0

    int-to-float v1, v1

    mul-float/2addr v0, v1

    int-to-float v1, v4

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 567
    const-string v1, "ScrubBar"

    invoke-static {v1, v8}, LZA;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 568
    const-string v1, "ScrubBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "itemPosition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_4a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v2, :cond_50

    .line 575
    :cond_50
    iget-wide v4, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:J

    cmp-long v1, v4, v9

    if-nez v1, :cond_85

    move v2, v3

    .line 596
    :cond_57
    :goto_57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->b:F

    .line 597
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:J

    .line 599
    if-eqz v2, :cond_dd

    .line 600
    const-string v1, "ScrubBar"

    invoke-static {v1, v8}, LZA;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 601
    const-string v1, "ScrubBar"

    const-string v2, "fast movement"

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_74
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->setPosition(I)V

    .line 604
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:Ljava/lang/Integer;

    .line 605
    iput-boolean v3, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->b:Z

    .line 612
    :goto_7c
    return-void

    .line 561
    :cond_7d
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKP;

    invoke-interface {v0}, LKP;->a()I

    move-result v0

    move v1, v0

    goto :goto_12

    .line 581
    :cond_85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:J

    sub-long/2addr v4, v6

    .line 582
    cmp-long v1, v4, v9

    if-nez v1, :cond_a1

    .line 583
    const-string v1, "ScrubBar"

    invoke-static {v1, v8}, LZA;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 584
    const-string v1, "ScrubBar"

    const-string v2, "maybe a duplicate event? count as slow..."

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    move v2, v3

    .line 586
    goto :goto_57

    .line 588
    :cond_a1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v6, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->b:F

    sub-float/2addr v1, v6

    const/high16 v6, 0x447a

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    long-to-float v4, v4

    div-float/2addr v1, v4

    iget v4, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:F

    div-float/2addr v1, v4

    .line 590
    const-string v4, "ScrubBar"

    invoke-static {v4, v8}, LZA;->a(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_d4

    .line 591
    const-string v4, "ScrubBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x velocity is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_d4
    const/high16 v4, 0x41a0

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_57

    move v2, v3

    goto/16 :goto_57

    .line 607
    :cond_dd
    const-string v1, "ScrubBar"

    invoke-static {v1, v8}, LZA;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 608
    const-string v1, "ScrubBar"

    const-string v2, "slow movement"

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_ec
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a(I)V

    goto :goto_7c
.end method

.method private a(Landroid/view/View;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 514
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 515
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 516
    add-int/2addr v0, p2

    add-int/2addr v1, p3

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 517
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/ScrubBar;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->b(I)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/ScrubBar;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->b:Z

    return p1
.end method

.method private b()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 350
    iget-boolean v1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->c:Z

    if-nez v1, :cond_6

    .line 368
    :cond_5
    :goto_5
    return v0

    .line 353
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a()Ljava/lang/CharSequence;

    move-result-object v1

    .line 354
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->b()Ljava/lang/CharSequence;

    move-result-object v2

    .line 355
    iget-object v3, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a(Ljava/lang/CharSequence;)V

    .line 359
    iput-object v1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:Ljava/lang/CharSequence;

    .line 360
    iput-object v2, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->b:Ljava/lang/CharSequence;

    .line 361
    const/16 v0, 0x1770

    goto :goto_5

    .line 362
    :cond_3f
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->b:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 364
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKP;

    iget v3, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:I

    invoke-interface {v1, v3, v0}, LKP;->c(IZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a(Ljava/lang/CharSequence;)V

    .line 365
    iput-object v2, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->b:Ljava/lang/CharSequence;

    .line 366
    const/16 v0, 0xbb8

    goto :goto_5
.end method

.method private b(I)V
    .registers 7
    .parameter

    .prologue
    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->b:Z

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:Ljava/lang/Integer;

    .line 305
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->setPosition(I)V

    .line 306
    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->b()I

    move-result v0

    .line 308
    if-nez v0, :cond_11

    .line 310
    const/16 v0, 0x3e8

    .line 313
    :cond_11
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 314
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 315
    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->c()V

    .line 316
    iget v2, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->c:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 317
    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:Landroid/os/Handler;

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 318
    return-void
.end method

.method private c()V
    .registers 3

    .prologue
    .line 295
    iget v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->c:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_b

    .line 296
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->c:I

    .line 300
    :goto_a
    return-void

    .line 298
    :cond_b
    iget v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->c:I

    goto :goto_a
.end method

.method private c(I)V
    .registers 3
    .parameter

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKN;

    if-eqz v0, :cond_9

    .line 380
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKN;

    invoke-interface {v0, p1}, LKN;->a(I)V

    .line 382
    :cond_9
    return-void
.end method

.method private d()V
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKN;

    if-eqz v0, :cond_9

    .line 374
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKN;

    invoke-interface {v0}, LKN;->b()V

    .line 376
    :cond_9
    return-void
.end method

.method private e()V
    .registers 3

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 616
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 221
    iget v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:I

    return v0
.end method

.method public a()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v0, v0, LKO;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 230
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->b:I

    .line 231
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->requestLayout()V

    .line 232
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter

    .prologue
    .line 630
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 632
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 635
    return-void
.end method

.method public b()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v0, v0, LKO;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 265
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v0, v0, LKO;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKP;

    iget v2, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:I

    invoke-interface {v1, v2, v3}, LKP;->a(IZ)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v0, v0, LKO;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKP;

    iget v2, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:I

    invoke-interface {v1, v2, v3}, LKP;->b(IZ)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->requestLayout()V

    .line 269
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .parameter

    .prologue
    .line 639
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    .line 643
    const/4 v0, 0x1

    .line 645
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_8
.end method

.method protected onLayout(ZIIII)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->getMeasuredWidth()I

    move-result v2

    .line 407
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->getMeasuredHeight()I

    move-result v3

    .line 409
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v0, v0, LKO;->a:Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 413
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 414
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v1, v2, v1

    .line 415
    sub-int v5, v1, v4

    .line 416
    iget-object v6, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v6, v6, LKO;->a:Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;

    invoke-virtual {v6}, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->getMeasuredHeight()I

    move-result v6

    .line 418
    sub-int v7, v3, v6

    .line 419
    iget-object v8, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v8, v8, LKO;->a:Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;

    invoke-virtual {v8, v4, v7, v1, v3}, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->layout(IIII)V

    .line 421
    add-int v1, v7, v3

    div-int/lit8 v8, v1, 0x2

    .line 424
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v1, v1, LKO;->a:Landroid/view/View;

    .line 425
    if-eqz v1, :cond_3d

    .line 426
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v1, v1, LKO;->a:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v7, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 429
    :cond_3d
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKP;

    if-nez v1, :cond_12f

    const/4 v1, 0x1

    .line 432
    :goto_42
    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v0, 0x1

    if-gt v1, v0, :cond_137

    const/4 v0, 0x0

    :goto_48
    add-int/2addr v0, v9

    .line 436
    iget-object v9, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v9, v9, LKO;->a:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    .line 437
    iget-object v9, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v9, v9, LKO;->a:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v9, v0, v9

    .line 439
    iget-object v10, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v10, v10, LKO;->a:Landroid/widget/ImageView;

    invoke-direct {p0, v10, v9, v8}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a(Landroid/view/View;II)V

    .line 444
    iget-object v9, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v9, v9, LKO;->b:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 445
    iget v10, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:F

    const/high16 v11, 0x4000

    mul-float/2addr v10, v11

    float-to-int v10, v10

    .line 446
    add-int/2addr v8, v10

    sub-int/2addr v8, v9

    .line 447
    iget-object v10, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v10, v10, LKO;->b:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int v10, v0, v10

    .line 448
    iget-object v11, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v11, v11, LKO;->b:Landroid/view/View;

    invoke-direct {p0, v11, v10, v8}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a(Landroid/view/View;II)V

    .line 451
    add-int/2addr v8, v9

    .line 453
    iget-object v9, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v9, v9, LKO;->c:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int v9, v8, v9

    .line 454
    const/high16 v10, 0x4040

    iget v11, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    .line 455
    iget-boolean v11, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:Z

    if-eqz v11, :cond_13f

    .line 460
    mul-int/lit8 v8, v10, 0x2

    sub-int v8, v2, v8

    .line 461
    iget-object v11, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v11, v11, LKO;->c:Landroid/view/View;

    const/high16 v12, -0x8000

    invoke-static {v12, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/high16 v12, -0x8000

    invoke-static {v12, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v11, v8, v3}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->measureChild(Landroid/view/View;II)V

    .line 466
    iget-object v3, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v3, v3, LKO;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 468
    add-int v8, v3, v10

    .line 469
    sub-int/2addr v2, v3

    sub-int/2addr v2, v10

    .line 471
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 472
    sub-int/2addr v0, v3

    .line 474
    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v2, v2, LKO;->c:Landroid/view/View;

    invoke-direct {p0, v2, v0, v9}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a(Landroid/view/View;II)V

    .line 487
    :goto_d4
    div-int/lit8 v0, v6, 0x2

    add-int v2, v7, v0

    .line 488
    const/4 v0, 0x1

    if-gt v1, v0, :cond_149

    const/4 v0, 0x0

    :goto_dc
    add-int v1, v4, v0

    .line 491
    iget v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->b:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_150

    const/4 v0, 0x0

    .line 493
    :goto_e4
    iget-object v3, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v3, v3, LKO;->d:Landroid/view/View;

    if-eqz v3, :cond_104

    .line 496
    iget-object v3, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v3, v3, LKO;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    .line 497
    iget-object v4, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v4, v4, LKO;->d:Landroid/view/View;

    invoke-direct {p0, v4, v3, v2}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a(Landroid/view/View;II)V

    .line 499
    iget-object v3, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v3, v3, LKO;->d:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 502
    :cond_104
    iget-object v3, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v3, v3, LKO;->e:Landroid/view/View;

    if-eqz v3, :cond_12e

    .line 504
    iget-object v3, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v3, v3, LKO;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 506
    iget-object v3, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v3, v3, LKO;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 507
    iget-object v3, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v3, v3, LKO;->e:Landroid/view/View;

    invoke-direct {p0, v3, v1, v2}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a(Landroid/view/View;II)V

    .line 509
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v1, v1, LKO;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 511
    :cond_12e
    return-void

    .line 429
    :cond_12f
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKP;

    invoke-interface {v1}, LKP;->a()I

    move-result v1

    goto/16 :goto_42

    .line 432
    :cond_137
    iget v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:I

    mul-int/2addr v0, v5

    add-int/lit8 v10, v1, -0x1

    div-int/2addr v0, v10

    goto/16 :goto_48

    .line 478
    :cond_13f
    sub-int v0, v2, v10

    .line 483
    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v2, v2, LKO;->c:Landroid/view/View;

    invoke-virtual {v2, v10, v9, v0, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_d4

    .line 488
    :cond_149
    iget v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->b:I

    mul-int/2addr v0, v5

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    goto :goto_dc

    .line 491
    :cond_150
    const/16 v0, 0x8

    goto :goto_e4
.end method

.method protected onMeasure(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 387
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 388
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->measureChildren(II)V

    .line 395
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v1, v1, LKO;->a:Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v2, v2, LKO;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v2, v2, LKO;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 398
    invoke-static {v0, p1}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->resolveSize(II)I

    move-result v0

    .line 399
    invoke-static {v1, p2}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->resolveSize(II)I

    move-result v1

    .line 400
    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->setMeasuredDimension(II)V

    .line 401
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 521
    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKP;

    if-nez v2, :cond_8

    .line 555
    :goto_7
    return v0

    .line 527
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_50

    :goto_f
    move v0, v1

    .line 555
    goto :goto_7

    .line 529
    :pswitch_11
    iput-object v4, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:Ljava/lang/CharSequence;

    .line 530
    iput-object v4, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->b:Ljava/lang/CharSequence;

    .line 531
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:J

    .line 532
    iput-object v4, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:Ljava/lang/Integer;

    .line 533
    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->c()V

    .line 534
    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->d()V

    .line 535
    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->setPressed(Z)V

    .line 536
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a(Landroid/view/MotionEvent;)V

    goto :goto_f

    .line 539
    :pswitch_28
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a(Landroid/view/MotionEvent;)V

    .line 540
    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->e()V

    goto :goto_f

    .line 543
    :pswitch_2f
    iget v2, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:I

    invoke-direct {p0, v2}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->c(I)V

    .line 544
    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->b()I

    .line 545
    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 546
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->setPressed(Z)V

    .line 547
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->invalidate()V

    goto :goto_f

    .line 550
    :pswitch_43
    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 551
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->setPressed(Z)V

    .line 552
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->invalidate()V

    goto :goto_f

    .line 527
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_11
        :pswitch_2f
        :pswitch_28
        :pswitch_43
    .end packed-switch
.end method

.method public setOnScrubListener(LKN;)V
    .registers 2
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKN;

    .line 218
    return-void
.end method

.method public setPosition(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 248
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKP;

    invoke-interface {v1}, LKP;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 250
    iget v1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:I

    if-ne v1, v0, :cond_16

    .line 261
    :goto_15
    return-void

    .line 256
    :cond_16
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v1, v1, LKO;->c:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v1, v1, LKO;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iput v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:I

    .line 260
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->b()V

    goto :goto_15
.end method

.method public setResources(LKO;)V
    .registers 4
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    .line 187
    iget-object v0, p1, LKO;->a:Landroid/view/View;

    .line 188
    if-eqz v0, :cond_e

    .line 189
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 190
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 193
    :cond_e
    iget-object v0, p1, LKO;->e:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 194
    iget-object v0, p1, LKO;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    :cond_19
    return-void
.end method

.method public setScrubIndex(LKP;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LKP",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKP;

    .line 208
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v0, v0, LKO;->a:Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->setScrubIndex(LKP;)V

    .line 209
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v0, v0, LKO;->a:Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->requestLayout()V

    .line 210
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:LKO;

    iget-object v0, v0, LKO;->a:Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->invalidate()V

    .line 212
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->requestLayout()V

    .line 213
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->invalidate()V

    .line 214
    return-void
.end method

.method public setTabletMode(Z)V
    .registers 2
    .parameter

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a:Z

    .line 204
    return-void
.end method

.method public setUndoPosition(I)V
    .registers 2
    .parameter

    .prologue
    .line 225
    iput p1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->b:I

    .line 226
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->requestLayout()V

    .line 227
    return-void
.end method
