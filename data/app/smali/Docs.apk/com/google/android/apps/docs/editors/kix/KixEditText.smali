.class public Lcom/google/android/apps/docs/editors/kix/KixEditText;
.super Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;
.source "KixEditText.java"

# interfaces
.implements LwS;
.implements LxW;
.implements LyN;
.implements Lzk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;",
        "LwS",
        "<",
        "Lcom/google/android/apps/docs/editors/kix/KixEditText;",
        ">;",
        "LxW;",
        "LyN;",
        "Lzk;"
    }
.end annotation


# instance fields
.field private a:I

.field private a:LCD;

.field private a:LCe;

.field private final a:Landroid/view/GestureDetector;

.field private a:Landroid/widget/Scroller;

.field private final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lxx;",
            ">;"
        }
    .end annotation
.end field

.field private a:Lxy;

.field private a:LyL;

.field private a:Lyr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyr",
            "<",
            "Lcom/google/android/apps/docs/editors/kix/KixEditText;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private b:I

.field private final b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lxu;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lxy;

.field private b:Z

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lxw;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private final d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "LzN;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lxz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 161
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;-><init>(Landroid/content/Context;)V

    .line 129
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 131
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 133
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 135
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 137
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 140
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lxv;

    invoke-direct {v1, p0, v3}, Lxv;-><init>(Lcom/google/android/apps/docs/editors/kix/KixEditText;Lxt;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Landroid/view/GestureDetector;

    .line 141
    iput-object v3, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Landroid/widget/Scroller;

    .line 147
    iput-object v3, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:LyL;

    .line 150
    iput v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:I

    .line 151
    iput v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:I

    .line 153
    iput-boolean v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Z

    .line 154
    sget-object v0, Lxy;->a:Lxy;

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Lxy;

    .line 156
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Ljava/util/LinkedList;

    .line 157
    iput-boolean v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->c:Z

    .line 162
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->v()V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 129
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 131
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 133
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 135
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 137
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 140
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lxv;

    invoke-direct {v1, p0, v3}, Lxv;-><init>(Lcom/google/android/apps/docs/editors/kix/KixEditText;Lxt;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Landroid/view/GestureDetector;

    .line 141
    iput-object v3, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Landroid/widget/Scroller;

    .line 147
    iput-object v3, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:LyL;

    .line 150
    iput v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:I

    .line 151
    iput v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:I

    .line 153
    iput-boolean v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Z

    .line 154
    sget-object v0, Lxy;->a:Lxy;

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Lxy;

    .line 156
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Ljava/util/LinkedList;

    .line 157
    iput-boolean v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->c:Z

    .line 168
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->v()V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 131
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 133
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 135
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 137
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 140
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lxv;

    invoke-direct {v1, p0, v3}, Lxv;-><init>(Lcom/google/android/apps/docs/editors/kix/KixEditText;Lxt;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Landroid/view/GestureDetector;

    .line 141
    iput-object v3, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Landroid/widget/Scroller;

    .line 147
    iput-object v3, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:LyL;

    .line 150
    iput v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:I

    .line 151
    iput v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:I

    .line 153
    iput-boolean v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Z

    .line 154
    sget-object v0, Lxy;->a:Lxy;

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Lxy;

    .line 156
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Ljava/util/LinkedList;

    .line 157
    iput-boolean v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->c:Z

    .line 174
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->v()V

    .line 175
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/KixEditText;)I
    .registers 2
    .parameter

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/kix/KixEditText;)Landroid/widget/Scroller;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Landroid/widget/Scroller;

    return-object v0
.end method

.method private a(Lxy;)V
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 355
    sget-object v0, Lxy;->d:Lxy;

    if-ne p1, v0, :cond_25

    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Z

    if-nez v0, :cond_25

    .line 356
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lus;->cannot_edit:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 357
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 358
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 359
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Lxy;

    sget-object v1, Lxy;->a:Lxy;

    if-ne v0, v1, :cond_23

    .line 391
    :cond_22
    :goto_22
    return-void

    .line 364
    :cond_23
    sget-object p1, Lxy;->b:Lxy;

    .line 367
    :cond_25
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Lxy;

    if-eq p1, v0, :cond_22

    .line 371
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Lxy;

    .line 373
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxz;

    .line 374
    sget-object v1, Lxy;->d:Lxy;

    if-ne p1, v1, :cond_46

    move v1, v2

    :goto_42
    invoke-interface {v0, v1}, Lxz;->a_(Z)V

    goto :goto_31

    :cond_46
    move v1, v3

    goto :goto_42

    .line 377
    :cond_48
    sget-object v0, Lxy;->d:Lxy;

    if-ne p1, v0, :cond_61

    .line 378
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->n()I

    move-result v0

    .line 379
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->o()I

    move-result v1

    .line 383
    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(II)V

    .line 384
    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b(Z)V

    .line 386
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->requestFocus()Z

    .line 387
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->i()V

    goto :goto_22

    .line 389
    :cond_61
    invoke-virtual {p0, v3}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b(Z)V

    goto :goto_22
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/editors/kix/KixEditText;)I
    .registers 2
    .parameter

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method private v()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 183
    iput-boolean v2, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Z

    .line 184
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 186
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 189
    const/high16 v0, 0x1200

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->setImeOptions(I)V

    .line 190
    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->setCursorVisible(Z)V

    .line 191
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->setScroller(Landroid/widget/Scroller;)V

    .line 192
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method protected a(Landroid/content/Context;Lcom/google/android/apps/docs/editors/text/TextView;)LCD;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 491
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:LCD;

    invoke-interface {v0}, LCD;->r()V

    .line 492
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:LCD;

    return-object v0
.end method

.method protected a()LCe;
    .registers 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:LCe;

    return-object v0
.end method

.method protected a(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .registers 2
    .parameter

    .prologue
    .line 612
    return-object p1
.end method

.method public a()Landroid/view/View;
    .registers 1

    .prologue
    .line 606
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 525
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->n()I

    move-result v2

    .line 526
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->o()I

    move-result v3

    .line 527
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b()Landroid/text/Editable;

    move-result-object v4

    .line 528
    if-eqz v4, :cond_31

    .line 529
    const-class v0, LAQ;

    invoke-interface {v4, v2, v3, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LAQ;

    .line 530
    array-length v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_31

    .line 531
    const/4 v5, 0x0

    aget-object v0, v0, v5

    .line 532
    invoke-interface {v4, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-gt v5, v2, :cond_2a

    invoke-interface {v4, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-ge v2, v3, :cond_2c

    :cond_2a
    move-object v0, v1

    .line 539
    :goto_2b
    return-object v0

    .line 536
    :cond_2c
    invoke-virtual {v0}, LAQ;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_31
    move-object v0, v1

    .line 539
    goto :goto_2b
.end method

.method public a()V
    .registers 4

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Lxy;

    sget-object v1, Lxy;->d:Lxy;

    if-ne v0, v1, :cond_1c

    .line 237
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxw;

    .line 238
    invoke-interface {v0}, Lxw;->a()V

    goto :goto_c

    .line 243
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 245
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 247
    :cond_30
    return-void
.end method

.method public a(FF)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 599
    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(II)I

    move-result v0

    .line 600
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Lxy;

    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(Lxy;)V

    .line 601
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->setSelection(I)V

    .line 602
    return-void
.end method

.method public a(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 417
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->a(II)V

    .line 418
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_8

    .line 428
    :cond_7
    return-void

    .line 425
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxx;

    .line 426
    invoke-interface {v0, p1, p2}, Lxx;->a(II)V

    goto :goto_e
.end method

.method public a(Lwb;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 205
    invoke-static {}, LDW;->a()LDW;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 206
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Z

    if-eqz v0, :cond_18

    .line 208
    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->setEditable(Z)V

    .line 209
    sget-object v0, Lxy;->d:Lxy;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(Lxy;)V

    .line 215
    :cond_14
    :goto_14
    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->setCursorVisible(Z)V

    .line 216
    return-void

    .line 211
    :cond_18
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Lxy;

    sget-object v1, Lxy;->a:Lxy;

    if-ne v0, v1, :cond_14

    .line 212
    sget-object v0, Lxy;->b:Lxy;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(Lxy;)V

    goto :goto_14
.end method

.method public a(Lwb;LvU;Lwg;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    return-void
.end method

.method public a(Lxu;)V
    .registers 3
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    return-void
.end method

.method public a(Lxw;)V
    .registers 3
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    return-void
.end method

.method public a(Lxx;)V
    .registers 3
    .parameter

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method

.method public a(Lxz;)V
    .registers 3
    .parameter

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    return-void
.end method

.method public a(LzN;)V
    .registers 3
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 479
    return-void
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Lxy;

    sget-object v1, Lxy;->c:Lxy;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected a(ZI)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 650
    if-nez p1, :cond_a

    iget v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:I

    if-lt p2, v0, :cond_f

    iget v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:I

    if-gt p2, v0, :cond_f

    .line 651
    :cond_a
    invoke-virtual {p0, p2}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(I)Z

    move-result v0

    .line 658
    :goto_e
    return v0

    .line 654
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 655
    iget v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:I

    .line 656
    iget v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:I

    .line 658
    iget v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:I

    iget v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(I)Z

    move-result v0

    goto :goto_e
.end method

.method public b()V
    .registers 4

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->r()V

    .line 255
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 257
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 258
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Lxy;

    sget-object v1, Lxy;->d:Lxy;

    if-ne v0, v1, :cond_22

    .line 260
    sget-object v0, Lxy;->b:Lxy;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(Lxy;)V

    .line 262
    :cond_22
    return-void
.end method

.method public b(Lxx;)V
    .registers 3
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 280
    return-void
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Lxy;

    sget-object v1, Lxy;->d:Lxy;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public c()V
    .registers 2

    .prologue
    .line 394
    sget-object v0, Lxy;->d:Lxy;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(Lxy;)V

    .line 395
    return-void
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Lxy;

    sget-object v1, Lxy;->b:Lxy;

    if-ne v0, v1, :cond_b

    .line 433
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->c()V

    .line 434
    const/4 v0, 0x1

    .line 436
    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->c()Z

    move-result v0

    goto :goto_a
.end method

.method public computeScroll()V
    .registers 3

    .prologue
    .line 472
    invoke-super {p0}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->computeScroll()V

    .line 473
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Lyr;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Lyr;->b(I)V

    .line 474
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 398
    sget-object v0, Lxy;->c:Lxy;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(Lxy;)V

    .line 399
    return-void
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Lxy;

    sget-object v1, Lxy;->d:Lxy;

    if-eq v0, v1, :cond_8

    .line 503
    const/4 v0, 0x0

    .line 505
    :goto_7
    return v0

    :cond_8
    invoke-super {p0}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->d()Z

    move-result v0

    goto :goto_7
.end method

.method public e()V
    .registers 3

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Lxy;

    sget-object v1, Lxy;->c:Lxy;

    if-ne v0, v1, :cond_b

    .line 403
    sget-object v0, Lxy;->b:Lxy;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(Lxy;)V

    .line 405
    :cond_b
    return-void
.end method

.method public e()Z
    .registers 3

    .prologue
    .line 510
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Lxy;

    sget-object v1, Lxy;->d:Lxy;

    if-eq v0, v1, :cond_8

    .line 511
    const/4 v0, 0x0

    .line 513
    :goto_7
    return v0

    :cond_8
    invoke-super {p0}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->e()Z

    move-result v0

    goto :goto_7
.end method

.method public f()V
    .registers 3

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Lxy;

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Lxy;

    .line 588
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Lxy;

    sget-object v1, Lxy;->d:Lxy;

    if-ne v0, v1, :cond_f

    .line 590
    sget-object v0, Lxy;->b:Lxy;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(Lxy;)V

    .line 593
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Lyr;

    invoke-virtual {v0}, Lyr;->a()V

    .line 594
    return-void
.end method

.method protected f()Z
    .registers 2

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->e()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->g()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->h()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public g()Z
    .registers 13

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 549
    .line 550
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->n()I

    move-result v6

    .line 551
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->o()I

    move-result v7

    .line 552
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b()Landroid/text/Editable;

    move-result-object v8

    .line 553
    if-eqz v8, :cond_56

    .line 554
    const-class v0, Lcom/google/android/apps/docs/editors/kix/spans/DocosSpan;

    invoke-interface {v8, v6, v7, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/docs/editors/kix/spans/DocosSpan;

    .line 555
    array-length v9, v0

    move v5, v4

    move v1, v4

    :goto_1b
    if-ge v5, v9, :cond_57

    aget-object v10, v0, v5

    .line 556
    invoke-interface {v8, v10}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    if-gt v2, v6, :cond_52

    invoke-interface {v8, v10}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-lt v2, v7, :cond_52

    invoke-virtual {v10}, Lcom/google/android/apps/docs/editors/kix/spans/DocosSpan;->a()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 559
    invoke-virtual {v10}, Lcom/google/android/apps/docs/editors/kix/spans/DocosSpan;->a()Ljava/util/List;

    move-result-object v2

    .line 560
    if-eqz v2, :cond_52

    .line 561
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v2, v1

    :goto_3c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 562
    invoke-virtual {v10, v1}, Lcom/google/android/apps/docs/editors/kix/spans/DocosSpan;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    move v1, v3

    :goto_4f
    move v2, v1

    .line 563
    goto :goto_3c

    :cond_51
    move v1, v2

    .line 555
    :cond_52
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_1b

    :cond_56
    move v1, v4

    .line 570
    :cond_57
    if-eqz v1, :cond_60

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Lxy;

    sget-object v1, Lxy;->c:Lxy;

    if-eq v0, v1, :cond_60

    .line 573
    :goto_5f
    return v3

    :cond_60
    move v3, v4

    goto :goto_5f

    :cond_62
    move v1, v2

    goto :goto_4f
.end method

.method public h()Z
    .registers 3

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Lxy;

    sget-object v1, Lxy;->d:Lxy;

    if-eq v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter

    .prologue
    .line 624
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->c:Z

    if-eqz v0, :cond_5e

    .line 625
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Ljava/util/LinkedList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 626
    :goto_12
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_22

    .line 627
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_12

    .line 629
    :cond_22
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-double v1, v0

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    sub-double/2addr v3, v5

    div-double v0, v1, v3

    .line 630
    const-string v2, "KixEditText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Framerate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_5e
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a()LCl;

    move-result-object v0

    .line 634
    if-eqz v0, :cond_80

    .line 635
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->getTop()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(I)I

    move-result v1

    .line 636
    invoke-virtual {v0, v1}, LCl;->c(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:I

    .line 637
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->getBottom()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(I)I

    move-result v1

    .line 638
    invoke-virtual {v0, v1}, LCl;->i(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:I

    .line 640
    :cond_80
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 641
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_89
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LzN;

    .line 642
    invoke-interface {v0}, LzN;->a()V

    goto :goto_89

    .line 644
    :cond_99
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 442
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:LyL;

    if-eqz v1, :cond_19

    .line 443
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:LyL;

    invoke-virtual {v1, p1}, LyL;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 444
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->q()V

    .line 450
    :cond_10
    :goto_10
    return v0

    .line 446
    :cond_11
    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 450
    :cond_19
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_10
.end method

.method public setCustomCursorPopup(LCe;)V
    .registers 2
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:LCe;

    .line 487
    return-void
.end method

.method public setCustomSelectionMode(LCD;)V
    .registers 2
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:LCD;

    .line 483
    return-void
.end method

.method public setEditable(Z)V
    .registers 4
    .parameter

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Z

    if-ne v0, p1, :cond_5

    .line 232
    :cond_4
    return-void

    .line 223
    :cond_5
    iput-boolean p1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Z

    .line 225
    if-nez p1, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Lxy;

    sget-object v1, Lxy;->d:Lxy;

    if-ne v0, v1, :cond_14

    .line 226
    sget-object v0, Lxy;->b:Lxy;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a(Lxy;)V

    .line 229
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxu;

    .line 230
    invoke-interface {v0, p1}, Lxu;->a(Z)V

    goto :goto_1a
.end method

.method public setFastScroller(Lyr;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyr",
            "<",
            "Lcom/google/android/apps/docs/editors/kix/KixEditText;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 462
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Lyr;

    .line 463
    return-void
.end method

.method public setIsTestMode(Z)V
    .registers 2
    .parameter

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b:Z

    .line 179
    return-void
.end method

.method public setProfilingEnabled(Z)V
    .registers 2
    .parameter

    .prologue
    .line 619
    iput-boolean p1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->c:Z

    .line 620
    return-void
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .registers 2
    .parameter

    .prologue
    .line 455
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/editors/kix/DecoratedEditText;->setScroller(Landroid/widget/Scroller;)V

    .line 457
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:Landroid/widget/Scroller;

    .line 458
    return-void
.end method

.method public setZoomManager(LyL;)V
    .registers 2
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a:LyL;

    .line 196
    return-void
.end method
