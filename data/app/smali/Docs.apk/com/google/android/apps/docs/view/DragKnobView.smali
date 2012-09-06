.class public Lcom/google/android/apps/docs/view/DragKnobView;
.super Landroid/widget/RelativeLayout;
.source "DragKnobView.java"


# instance fields
.field private a:Laax;

.field final a:Landroid/content/Context;

.field private final a:Landroid/os/Handler;

.field private a:Landroid/view/MotionEvent;

.field private a:Z

.field private b:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/view/DragKnobView;->a:Landroid/os/Handler;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/view/DragKnobView;->a:Z

    .line 58
    iput-object p1, p0, Lcom/google/android/apps/docs/view/DragKnobView;->a:Landroid/content/Context;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/view/DragKnobView;->a:Landroid/os/Handler;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/view/DragKnobView;->a:Z

    .line 68
    iput-object p1, p0, Lcom/google/android/apps/docs/view/DragKnobView;->a:Landroid/content/Context;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/view/DragKnobView;->a:Landroid/os/Handler;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/view/DragKnobView;->a:Z

    .line 63
    iput-object p1, p0, Lcom/google/android/apps/docs/view/DragKnobView;->a:Landroid/content/Context;

    .line 64
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/DragKnobView;)Laax;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DragKnobView;->a:Laax;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/DragKnobView;)Landroid/view/MotionEvent;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DragKnobView;->a:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/DragKnobView;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/google/android/apps/docs/view/DragKnobView;->a:Z

    return p1
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/view/DragKnobView;)Landroid/view/MotionEvent;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DragKnobView;->b:Landroid/view/MotionEvent;

    return-object v0
.end method


# virtual methods
.method public a(Laax;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/apps/docs/view/DragKnobView;->a:Laax;

    .line 73
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DragKnobView;->a:Landroid/content/Context;

    invoke-static {v0}, LcJ;->a(Landroid/content/Context;)V

    .line 78
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DragKnobView;->a:Laax;

    if-eqz v0, :cond_11

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DragKnobView;->a:Laax;

    invoke-interface {v0}, Laax;->a()V

    .line 82
    :cond_11
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 86
    iget-object v2, p0, Lcom/google/android/apps/docs/view/DragKnobView;->a:Landroid/content/Context;

    invoke-static {v2}, LcJ;->a(Landroid/content/Context;)V

    .line 87
    iget-object v2, p0, Lcom/google/android/apps/docs/view/DragKnobView;->a:Laax;

    if-nez v2, :cond_c

    .line 123
    :goto_b
    return v0

    .line 91
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_29

    .line 92
    iput-object p1, p0, Lcom/google/android/apps/docs/view/DragKnobView;->a:Landroid/view/MotionEvent;

    .line 93
    iget-boolean v0, p0, Lcom/google/android/apps/docs/view/DragKnobView;->a:Z

    if-eqz v0, :cond_1b

    move v0, v1

    .line 94
    goto :goto_b

    .line 97
    :cond_1b
    iput-boolean v1, p0, Lcom/google/android/apps/docs/view/DragKnobView;->a:Z

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DragKnobView;->a:Landroid/os/Handler;

    new-instance v2, Laav;

    invoke-direct {v2, p0}, Laav;-><init>(Lcom/google/android/apps/docs/view/DragKnobView;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    .line 107
    goto :goto_b

    .line 110
    :cond_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_36

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/docs/view/DragKnobView;->a:Laax;

    invoke-interface {v0, p1}, Laax;->a(Landroid/view/MotionEvent;)V

    move v0, v1

    .line 112
    goto :goto_b

    .line 115
    :cond_36
    iput-object p1, p0, Lcom/google/android/apps/docs/view/DragKnobView;->b:Landroid/view/MotionEvent;

    .line 116
    iget-object v1, p0, Lcom/google/android/apps/docs/view/DragKnobView;->a:Landroid/os/Handler;

    new-instance v2, Laaw;

    invoke-direct {v2, p0}, Laaw;-><init>(Lcom/google/android/apps/docs/view/DragKnobView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method
