.class public Lcom/google/googlenav/ui/android/RealtimePulseImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/android/RealtimePulseImageView;->a:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/android/RealtimePulseImageView;->a:I

    .line 33
    iput p2, p0, Lcom/google/googlenav/ui/android/RealtimePulseImageView;->a:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/android/RealtimePulseImageView;->a:I

    .line 29
    return-void
.end method


# virtual methods
.method public getBaseline()I
    .registers 3

    .prologue
    .line 54
    iget v0, p0, Lcom/google/googlenav/ui/android/RealtimePulseImageView;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 55
    invoke-super {p0}, Landroid/widget/ImageView;->getBaseline()I

    move-result v0

    .line 57
    :goto_9
    return v0

    :cond_a
    iget v0, p0, Lcom/google/googlenav/ui/android/RealtimePulseImageView;->a:I

    goto :goto_9
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 42
    new-instance v0, Lcom/google/googlenav/ui/android/ap;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/ap;-><init>(Lcom/google/googlenav/ui/android/RealtimePulseImageView;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/RealtimePulseImageView;->post(Ljava/lang/Runnable;)Z

    .line 50
    return-void
.end method
