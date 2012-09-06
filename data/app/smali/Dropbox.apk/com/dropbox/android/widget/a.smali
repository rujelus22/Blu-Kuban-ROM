.class public Lcom/dropbox/android/widget/a;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final E:[I


# instance fields
.field private A:Z

.field private B:Lcom/dropbox/android/widget/c;

.field private C:Z

.field private D:I

.field private F:Ljava/lang/ref/WeakReference;

.field private G:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private H:I

.field private I:I

.field private a:Landroid/content/Context;

.field private b:Landroid/view/WindowManager;

.field private c:Z

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Z

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Landroid/view/View$OnTouchListener;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:[I

.field private w:[I

.field private x:Landroid/graphics/Rect;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Lcom/dropbox/android/widget/a;->E:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput v1, p0, Lcom/dropbox/android/widget/a;->h:I

    .line 94
    iput-boolean v0, p0, Lcom/dropbox/android/widget/a;->j:Z

    .line 95
    iput-boolean v1, p0, Lcom/dropbox/android/widget/a;->k:Z

    .line 96
    iput-boolean v0, p0, Lcom/dropbox/android/widget/a;->l:Z

    .line 110
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/dropbox/android/widget/a;->v:[I

    .line 111
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/dropbox/android/widget/a;->w:[I

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/widget/a;->x:Landroid/graphics/Rect;

    .line 120
    iput-boolean v1, p0, Lcom/dropbox/android/widget/a;->C:Z

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/dropbox/android/widget/a;->D:I

    .line 129
    new-instance v0, Lcom/dropbox/android/widget/b;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/b;-><init>(Lcom/dropbox/android/widget/a;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/a;->G:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 152
    iput-object p1, p0, Lcom/dropbox/android/widget/a;->a:Landroid/content/Context;

    .line 153
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/dropbox/android/widget/a;->b:Landroid/view/WindowManager;

    .line 155
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/a;->y:Landroid/graphics/drawable/Drawable;

    .line 156
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/a;->z:Landroid/graphics/drawable/Drawable;

    .line 157
    return-void
.end method

.method private a(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .registers 5
    .parameter

    .prologue
    .line 683
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 688
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 689
    iget v1, p0, Lcom/dropbox/android/widget/a;->o:I

    iput v1, p0, Lcom/dropbox/android/widget/a;->p:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 690
    iget v1, p0, Lcom/dropbox/android/widget/a;->r:I

    iput v1, p0, Lcom/dropbox/android/widget/a;->s:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 691
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 692
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/dropbox/android/widget/a;->d(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 693
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 694
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 695
    iget v1, p0, Lcom/dropbox/android/widget/a;->i:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 696
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 698
    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/android/widget/a;)Ljava/lang/ref/WeakReference;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->F:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private a(Landroid/view/View;ZIIZII)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 1086
    invoke-virtual {p0}, Lcom/dropbox/android/widget/a;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/dropbox/android/widget/a;->e:Landroid/view/View;

    if-nez v0, :cond_c

    .line 1118
    :cond_b
    :goto_b
    return-void

    .line 1090
    :cond_c
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->F:Ljava/lang/ref/WeakReference;

    .line 1091
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_20

    if-eqz p2, :cond_23

    iget v0, p0, Lcom/dropbox/android/widget/a;->H:I

    if-ne v0, p3, :cond_20

    iget v0, p0, Lcom/dropbox/android/widget/a;->I:I

    if-eq v0, p4, :cond_23

    .line 1093
    :cond_20
    invoke-direct {p0, p1, p3, p4}, Lcom/dropbox/android/widget/a;->b(Landroid/view/View;II)V

    .line 1096
    :cond_23
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1098
    if-eqz p5, :cond_35

    .line 1099
    if-ne p6, v1, :cond_45

    .line 1100
    iget p6, p0, Lcom/dropbox/android/widget/a;->t:I

    .line 1104
    :goto_31
    if-ne p7, v1, :cond_48

    .line 1105
    iget p7, p0, Lcom/dropbox/android/widget/a;->u:I

    .line 1111
    :cond_35
    :goto_35
    if-eqz p2, :cond_4b

    .line 1112
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/dropbox/android/widget/a;->a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dropbox/android/widget/a;->A:Z

    .line 1117
    :goto_3d
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0, v1, v0, p6, p7}, Lcom/dropbox/android/widget/a;->a(IIII)V

    goto :goto_b

    .line 1102
    :cond_45
    iput p6, p0, Lcom/dropbox/android/widget/a;->t:I

    goto :goto_31

    .line 1107
    :cond_48
    iput p7, p0, Lcom/dropbox/android/widget/a;->u:I

    goto :goto_35

    .line 1114
    :cond_4b
    iget v1, p0, Lcom/dropbox/android/widget/a;->H:I

    iget v2, p0, Lcom/dropbox/android/widget/a;->I:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/dropbox/android/widget/a;->a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dropbox/android/widget/a;->A:Z

    goto :goto_3d
.end method

.method private a(Landroid/view/WindowManager$LayoutParams;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, -0x2

    .line 630
    iget-object v2, p0, Lcom/dropbox/android/widget/a;->e:Landroid/view/View;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/dropbox/android/widget/a;->a:Landroid/content/Context;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/dropbox/android/widget/a;->b:Landroid/view/WindowManager;

    if-nez v2, :cond_16

    .line 631
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_16
    iget-object v2, p0, Lcom/dropbox/android/widget/a;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 637
    if-eqz v2, :cond_43

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v0, :cond_43

    .line 644
    :goto_22
    new-instance v2, Lcom/dropbox/android/widget/d;

    iget-object v3, p0, Lcom/dropbox/android/widget/a;->a:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/dropbox/android/widget/d;-><init>(Lcom/dropbox/android/widget/a;Landroid/content/Context;)V

    .line 645
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 650
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Lcom/dropbox/android/widget/d;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 652
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->e:Landroid/view/View;

    invoke-virtual {v2, v0, v3}, Lcom/dropbox/android/widget/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 654
    iput-object v2, p0, Lcom/dropbox/android/widget/a;->f:Landroid/view/View;

    .line 656
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p0, Lcom/dropbox/android/widget/a;->t:I

    .line 657
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, p0, Lcom/dropbox/android/widget/a;->u:I

    .line 658
    return-void

    :cond_43
    move v0, v1

    goto :goto_22
.end method

.method private a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 759
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->v:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 760
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->v:[I

    aget v0, v0, v2

    add-int/2addr v0, p3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 761
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->v:[I

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p4

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 765
    const/16 v0, 0x33

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 767
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->w:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 768
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 769
    invoke-virtual {p1, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 773
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->f:Landroid/view/View;

    iget v1, p0, Lcom/dropbox/android/widget/a;->n:I

    iget v5, p0, Lcom/dropbox/android/widget/a;->q:I

    invoke-virtual {v0, v1, v5}, Landroid/view/View;->measure(II)V

    .line 774
    iget v0, p0, Lcom/dropbox/android/widget/a;->u:I

    if-ne v0, v6, :cond_c7

    iget-object v0, p0, Lcom/dropbox/android/widget/a;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 775
    :goto_3f
    iget v1, p0, Lcom/dropbox/android/widget/a;->t:I

    if-ne v1, v6, :cond_cb

    iget-object v1, p0, Lcom/dropbox/android/widget/a;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 777
    :goto_49
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 778
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v0, v6

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v6, :cond_5e

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v0, v1

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_de

    .line 782
    :cond_5e
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 783
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    .line 786
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v1

    invoke-direct {v6, v0, v1, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 788
    invoke-virtual {p1, v6, v2}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 792
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->v:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 793
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->v:[I

    aget v0, v0, v2

    add-int/2addr v0, p3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 794
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->v:[I

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p4

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 797
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->w:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 799
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/dropbox/android/widget/a;->w:[I

    aget v1, v1, v3

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p4

    iget-object v1, p0, Lcom/dropbox/android/widget/a;->w:[I

    aget v1, v1, v3

    sub-int/2addr v1, p4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_cf

    move v0, v3

    .line 801
    :goto_ad
    if-eqz v0, :cond_d1

    .line 802
    const/16 v1, 0x53

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 803
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/dropbox/android/widget/a;->v:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    add-int/2addr v1, p4

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 809
    :goto_bf
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v2, 0x1000

    or-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 811
    return v0

    .line 774
    :cond_c7
    iget v0, p0, Lcom/dropbox/android/widget/a;->u:I

    goto/16 :goto_3f

    .line 775
    :cond_cb
    iget v1, p0, Lcom/dropbox/android/widget/a;->t:I

    goto/16 :goto_49

    :cond_cf
    move v0, v2

    .line 799
    goto :goto_ad

    .line 805
    :cond_d1
    iget-object v1, p0, Lcom/dropbox/android/widget/a;->v:[I

    aget v1, v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_bf

    :cond_de
    move v0, v2

    goto :goto_bf
.end method

.method static synthetic a(Lcom/dropbox/android/widget/a;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/android/widget/a;->a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/dropbox/android/widget/a;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/dropbox/android/widget/a;->A:Z

    return p1
.end method

.method static synthetic b(Lcom/dropbox/android/widget/a;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->f:Landroid/view/View;

    return-object v0
.end method

.method private b(Landroid/view/View;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1144
    invoke-direct {p0}, Lcom/dropbox/android/widget/a;->f()V

    .line 1146
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/a;->F:Ljava/lang/ref/WeakReference;

    .line 1147
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1148
    if-eqz v0, :cond_15

    .line 1149
    iget-object v1, p0, Lcom/dropbox/android/widget/a;->G:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1152
    :cond_15
    iput p2, p0, Lcom/dropbox/android/widget/a;->H:I

    .line 1153
    iput p3, p0, Lcom/dropbox/android/widget/a;->I:I

    .line 1154
    return-void
.end method

.method private b(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .parameter

    .prologue
    .line 669
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 670
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/dropbox/android/widget/a;->f:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    return-void
.end method

.method static synthetic c(Lcom/dropbox/android/widget/a;)I
    .registers 2
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/dropbox/android/widget/a;->H:I

    return v0
.end method

.method private d(I)I
    .registers 6
    .parameter

    .prologue
    const/high16 v3, 0x2

    .line 702
    const v0, -0x68219

    and-int/2addr v0, p1

    .line 709
    iget-boolean v1, p0, Lcom/dropbox/android/widget/a;->C:Z

    if-eqz v1, :cond_e

    .line 710
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 712
    :cond_e
    iget-boolean v1, p0, Lcom/dropbox/android/widget/a;->g:Z

    if-nez v1, :cond_2e

    .line 713
    or-int/lit8 v0, v0, 0x8

    .line 714
    iget v1, p0, Lcom/dropbox/android/widget/a;->h:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    .line 715
    or-int/2addr v0, v3

    .line 720
    :cond_1a
    :goto_1a
    iget-boolean v1, p0, Lcom/dropbox/android/widget/a;->j:Z

    if-nez v1, :cond_20

    .line 721
    or-int/lit8 v0, v0, 0x10

    .line 723
    :cond_20
    iget-boolean v1, p0, Lcom/dropbox/android/widget/a;->k:Z

    if-eqz v1, :cond_27

    .line 724
    const/high16 v1, 0x4

    or-int/2addr v0, v1

    .line 726
    :cond_27
    iget-boolean v1, p0, Lcom/dropbox/android/widget/a;->l:Z

    if-nez v1, :cond_2d

    .line 727
    or-int/lit16 v0, v0, 0x200

    .line 729
    :cond_2d
    return v0

    .line 717
    :cond_2e
    iget v1, p0, Lcom/dropbox/android/widget/a;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1a

    .line 718
    or-int/2addr v0, v3

    goto :goto_1a
.end method

.method static synthetic d(Lcom/dropbox/android/widget/a;)I
    .registers 2
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/dropbox/android/widget/a;->I:I

    return v0
.end method

.method static synthetic d()[I
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/dropbox/android/widget/a;->E:[I

    return-object v0
.end method

.method private e()I
    .registers 3

    .prologue
    .line 733
    iget v0, p0, Lcom/dropbox/android/widget/a;->D:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 734
    iget-boolean v0, p0, Lcom/dropbox/android/widget/a;->d:Z

    if-eqz v0, :cond_d

    .line 735
    const v0, 0x7f0a0009

    .line 739
    :goto_c
    return v0

    .line 737
    :cond_d
    const/4 v0, 0x0

    goto :goto_c

    .line 739
    :cond_f
    iget v0, p0, Lcom/dropbox/android/widget/a;->D:I

    goto :goto_c
.end method

.method static synthetic e(Lcom/dropbox/android/widget/a;)Z
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/dropbox/android/widget/a;->A:Z

    return v0
.end method

.method static synthetic f(Lcom/dropbox/android/widget/a;)Landroid/view/View$OnTouchListener;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->m:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private f()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1131
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->F:Ljava/lang/ref/WeakReference;

    .line 1133
    if-eqz v0, :cond_19

    .line 1134
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1136
    :goto_b
    if-eqz v0, :cond_16

    .line 1137
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1138
    iget-object v2, p0, Lcom/dropbox/android/widget/a;->G:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1140
    :cond_16
    iput-object v1, p0, Lcom/dropbox/android/widget/a;->F:Ljava/lang/ref/WeakReference;

    .line 1141
    return-void

    :cond_19
    move-object v0, v1

    goto :goto_b
.end method

.method static synthetic g(Lcom/dropbox/android/widget/a;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->e:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->e:Landroid/view/View;

    return-object v0
.end method

.method public final a(I)V
    .registers 2
    .parameter

    .prologue
    .line 198
    iput p1, p0, Lcom/dropbox/android/widget/a;->D:I

    .line 199
    return-void
.end method

.method public final a(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 444
    iput p1, p0, Lcom/dropbox/android/widget/a;->n:I

    .line 445
    iput p2, p0, Lcom/dropbox/android/widget/a;->q:I

    .line 446
    return-void
.end method

.method public final a(IIII)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 978
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/android/widget/a;->a(IIIIZ)V

    .line 979
    return-void
.end method

.method public final a(IIIIZ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 995
    if-eq p3, v4, :cond_9

    .line 996
    iput p3, p0, Lcom/dropbox/android/widget/a;->p:I

    .line 997
    invoke-virtual {p0, p3}, Lcom/dropbox/android/widget/a;->c(I)V

    .line 1000
    :cond_9
    if-eq p4, v4, :cond_10

    .line 1001
    iput p4, p0, Lcom/dropbox/android/widget/a;->s:I

    .line 1002
    invoke-virtual {p0, p4}, Lcom/dropbox/android/widget/a;->b(I)V

    .line 1005
    :cond_10
    invoke-virtual {p0}, Lcom/dropbox/android/widget/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/dropbox/android/widget/a;->e:Landroid/view/View;

    if-nez v0, :cond_1b

    .line 1050
    :cond_1a
    :goto_1a
    return-void

    .line 1009
    :cond_1b
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1013
    iget v2, p0, Lcom/dropbox/android/widget/a;->n:I

    if-gez v2, :cond_74

    iget v2, p0, Lcom/dropbox/android/widget/a;->n:I

    .line 1014
    :goto_29
    if-eq p3, v4, :cond_34

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v3, v2, :cond_34

    .line 1015
    iput v2, p0, Lcom/dropbox/android/widget/a;->p:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move p5, v1

    .line 1019
    :cond_34
    iget v2, p0, Lcom/dropbox/android/widget/a;->q:I

    if-gez v2, :cond_77

    iget v2, p0, Lcom/dropbox/android/widget/a;->q:I

    .line 1020
    :goto_3a
    if-eq p4, v4, :cond_45

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v3, v2, :cond_45

    .line 1021
    iput v2, p0, Lcom/dropbox/android/widget/a;->s:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move p5, v1

    .line 1025
    :cond_45
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v2, p1, :cond_4c

    .line 1026
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move p5, v1

    .line 1030
    :cond_4c
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v2, p2, :cond_53

    .line 1031
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move p5, v1

    .line 1035
    :cond_53
    invoke-direct {p0}, Lcom/dropbox/android/widget/a;->e()I

    move-result v2

    .line 1036
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v3, :cond_5e

    .line 1037
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move p5, v1

    .line 1041
    :cond_5e
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v2}, Lcom/dropbox/android/widget/a;->d(I)I

    move-result v2

    .line 1042
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v2, v3, :cond_7a

    .line 1043
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1047
    :goto_6a
    if-eqz v1, :cond_1a

    .line 1048
    iget-object v1, p0, Lcom/dropbox/android/widget/a;->b:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/dropbox/android/widget/a;->f:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1a

    .line 1013
    :cond_74
    iget v2, p0, Lcom/dropbox/android/widget/a;->p:I

    goto :goto_29

    .line 1019
    :cond_77
    iget v2, p0, Lcom/dropbox/android/widget/a;->s:I

    goto :goto_3a

    :cond_7a
    move v1, p5

    goto :goto_6a
.end method

.method public final a(Landroid/view/View$OnTouchListener;)V
    .registers 2
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/dropbox/android/widget/a;->m:Landroid/view/View$OnTouchListener;

    .line 246
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/dropbox/android/widget/a;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 238
    :cond_6
    :goto_6
    return-void

    .line 229
    :cond_7
    iput-object p1, p0, Lcom/dropbox/android/widget/a;->e:Landroid/view/View;

    .line 231
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->a:Landroid/content/Context;

    if-nez v0, :cond_15

    .line 232
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/a;->a:Landroid/content/Context;

    .line 235
    :cond_15
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->b:Landroid/view/WindowManager;

    if-nez v0, :cond_6

    .line 236
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/dropbox/android/widget/a;->b:Landroid/view/WindowManager;

    goto :goto_6
.end method

.method public final a(Landroid/view/View;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 576
    invoke-virtual {p0}, Lcom/dropbox/android/widget/a;->b()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/dropbox/android/widget/a;->e:Landroid/view/View;

    if-nez v0, :cond_c

    .line 604
    :cond_b
    :goto_b
    return-void

    .line 580
    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/android/widget/a;->b(Landroid/view/View;II)V

    .line 582
    iput-boolean v1, p0, Lcom/dropbox/android/widget/a;->c:Z

    .line 583
    iput-boolean v1, p0, Lcom/dropbox/android/widget/a;->d:Z

    .line 585
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/a;->a(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 588
    iget v1, p0, Lcom/dropbox/android/widget/a;->q:I

    if-gez v1, :cond_25

    iget v1, p0, Lcom/dropbox/android/widget/a;->q:I

    iput v1, p0, Lcom/dropbox/android/widget/a;->s:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 589
    :cond_25
    iget v1, p0, Lcom/dropbox/android/widget/a;->n:I

    if-gez v1, :cond_2f

    iget v1, p0, Lcom/dropbox/android/widget/a;->n:I

    iput v1, p0, Lcom/dropbox/android/widget/a;->p:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 591
    :cond_2f
    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/a;->a(Landroid/view/WindowManager$LayoutParams;)V

    .line 592
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/dropbox/android/widget/a;->a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dropbox/android/widget/a;->A:Z

    .line 594
    iget-boolean v1, p0, Lcom/dropbox/android/widget/a;->A:Z

    if-eqz v1, :cond_52

    .line 595
    iget-object v1, p0, Lcom/dropbox/android/widget/a;->f:Landroid/view/View;

    iget-object v2, p0, Lcom/dropbox/android/widget/a;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 599
    :goto_43
    iget-object v1, p0, Lcom/dropbox/android/widget/a;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->refreshDrawableState()V

    .line 601
    invoke-direct {p0}, Lcom/dropbox/android/widget/a;->e()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 603
    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/a;->b(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_b

    .line 597
    :cond_52
    iget-object v1, p0, Lcom/dropbox/android/widget/a;->f:Landroid/view/View;

    iget-object v2, p0, Lcom/dropbox/android/widget/a;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_43
.end method

.method public final a(Landroid/view/View;IIII)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1080
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/android/widget/a;->a(Landroid/view/View;ZIIZII)V

    .line 1081
    return-void
.end method

.method public final a(Lcom/dropbox/android/widget/c;)V
    .registers 2
    .parameter

    .prologue
    .line 915
    iput-object p1, p0, Lcom/dropbox/android/widget/a;->B:Lcom/dropbox/android/widget/c;

    .line 916
    return-void
.end method

.method public final a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/dropbox/android/widget/a;->g:Z

    .line 277
    return-void
.end method

.method public final b(I)V
    .registers 2
    .parameter

    .prologue
    .line 471
    iput p1, p0, Lcom/dropbox/android/widget/a;->r:I

    .line 472
    return-void
.end method

.method public final b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 356
    iput-boolean p1, p0, Lcom/dropbox/android/widget/a;->j:Z

    .line 357
    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/dropbox/android/widget/a;->c:Z

    return v0
.end method

.method public c()V
    .registers 3

    .prologue
    .line 892
    invoke-virtual {p0}, Lcom/dropbox/android/widget/a;->b()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/dropbox/android/widget/a;->f:Landroid/view/View;

    if-eqz v0, :cond_38

    .line 893
    invoke-direct {p0}, Lcom/dropbox/android/widget/a;->f()V

    .line 895
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/dropbox/android/widget/a;->f:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 897
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/dropbox/android/widget/a;->e:Landroid/view/View;

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Lcom/dropbox/android/widget/a;->f:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_29

    .line 898
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->f:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/dropbox/android/widget/a;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 900
    :cond_29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/widget/a;->f:Landroid/view/View;

    .line 901
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/widget/a;->c:Z

    .line 903
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->B:Lcom/dropbox/android/widget/c;

    if-eqz v0, :cond_38

    .line 904
    iget-object v0, p0, Lcom/dropbox/android/widget/a;->B:Lcom/dropbox/android/widget/c;

    invoke-interface {v0}, Lcom/dropbox/android/widget/c;->x()V

    .line 907
    :cond_38
    return-void
.end method

.method public final c(I)V
    .registers 2
    .parameter

    .prologue
    .line 497
    iput p1, p0, Lcom/dropbox/android/widget/a;->o:I

    .line 498
    return-void
.end method

.method public final c(Z)V
    .registers 2
    .parameter

    .prologue
    .line 389
    iput-boolean p1, p0, Lcom/dropbox/android/widget/a;->k:Z

    .line 390
    return-void
.end method
