.class public Lcom/google/googlenav/ui/view/android/DirectionTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/google/googlenav/ui/view/android/DirectionTextView;->a:I

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/google/googlenav/ui/view/android/DirectionTextView;->b:I

    return v0
.end method

.method public setPosition(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/google/googlenav/ui/view/android/DirectionTextView;->a:I

    .line 40
    iput p2, p0, Lcom/google/googlenav/ui/view/android/DirectionTextView;->b:I

    .line 41
    return-void
.end method
