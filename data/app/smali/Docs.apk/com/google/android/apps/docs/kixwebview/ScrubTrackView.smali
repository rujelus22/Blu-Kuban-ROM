.class public Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;
.super Landroid/view/View;
.source "ScrubTrackView.java"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I


# instance fields
.field private a:LKP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LKP",
            "<**>;"
        }
    .end annotation
.end field

.field private a:LKQ;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-array v0, v3, [I

    const v1, 0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->a:[I

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->b:[I

    .line 58
    new-array v0, v3, [I

    const v1, 0x10100a6

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->c:[I

    return-void

    .line 56
    nop

    :array_1e
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa6t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->a:LKP;

    if-nez v0, :cond_8

    .line 87
    :goto_7
    return-void

    .line 68
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->a:LKQ;

    iget-object v1, v1, LKQ;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x2

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->a:LKQ;

    iget-object v0, v0, LKQ;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    add-int v2, v1, v0

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->a:LKP;

    invoke-interface {v0}, LKP;->a()F

    move-result v0

    .line 72
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->getMeasuredWidth()I

    move-result v3

    .line 73
    int-to-float v4, v3

    mul-float/2addr v0, v4

    float-to-int v4, v0

    .line 77
    sget-object v0, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->a:[I

    check-cast v0, [I

    .line 78
    iget-object v5, p0, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->a:LKQ;

    iget-object v5, v5, LKQ;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->a:LKQ;

    iget-object v0, v0, LKQ;->a:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->a:LKQ;

    iget-object v0, v0, LKQ;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 83
    sget-object v0, Landroid/view/View;->EMPTY_STATE_SET:[I

    check-cast v0, [I

    .line 84
    iget-object v5, p0, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->a:LKQ;

    iget-object v5, v5, LKQ;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->a:LKQ;

    iget-object v0, v0, LKQ;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->a:LKQ;

    iget-object v0, v0, LKQ;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7
.end method

.method public setResources(LKQ;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->a:LKQ;

    .line 48
    return-void
.end method

.method public setScrubIndex(LKP;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LKP",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->a:LKP;

    .line 52
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/ScrubTrackView;->invalidate()V

    .line 53
    return-void
.end method
