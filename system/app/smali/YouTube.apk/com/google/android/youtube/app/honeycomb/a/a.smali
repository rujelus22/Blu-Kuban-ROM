.class public final Lcom/google/android/youtube/app/honeycomb/a/a;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 25
    const/4 v0, 0x0

    const v1, 0x7f010024

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 28
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 29
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 31
    invoke-virtual {v0, v1, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/a/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    const/high16 v0, 0x7f05

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/a/a;->a:Landroid/view/animation/Animation;

    .line 36
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/a/a;->b()V

    .line 37
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/a/a;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/a/a;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/a/a;->a:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/a/a;->startAnimation(Landroid/view/animation/Animation;)V

    .line 44
    :cond_10
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/a/a;->setAnimation(Landroid/view/animation/Animation;)V

    .line 48
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/a/a;->setVisibility(I)V

    .line 49
    return-void
.end method
