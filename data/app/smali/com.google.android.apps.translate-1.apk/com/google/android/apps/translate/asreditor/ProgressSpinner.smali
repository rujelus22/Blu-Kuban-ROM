.class public Lcom/google/android/apps/translate/asreditor/ProgressSpinner;
.super Landroid/widget/ImageView;
.source "ProgressSpinner.java"


# static fields
.field private static final ANIMATION_START_DELAY:I = 0x64


# instance fields
.field private mBackground:Landroid/graphics/drawable/AnimationDrawable;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mHandler:Landroid/os/Handler;

.field private final mStartAnimation:Ljava/lang/Runnable;

.field private final mStopAnimation:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mHandler:Landroid/os/Handler;

    .line 26
    new-instance v0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/asreditor/ProgressSpinner$1;-><init>(Lcom/google/android/apps/translate/asreditor/ProgressSpinner;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mStartAnimation:Ljava/lang/Runnable;

    .line 32
    new-instance v0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/asreditor/ProgressSpinner$2;-><init>(Lcom/google/android/apps/translate/asreditor/ProgressSpinner;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mStopAnimation:Ljava/lang/Runnable;

    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mHandler:Landroid/os/Handler;

    .line 26
    new-instance v0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/asreditor/ProgressSpinner$1;-><init>(Lcom/google/android/apps/translate/asreditor/ProgressSpinner;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mStartAnimation:Ljava/lang/Runnable;

    .line 32
    new-instance v0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/asreditor/ProgressSpinner$2;-><init>(Lcom/google/android/apps/translate/asreditor/ProgressSpinner;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mStopAnimation:Ljava/lang/Runnable;

    .line 45
    invoke-direct {p0}, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mHandler:Landroid/os/Handler;

    .line 26
    new-instance v0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/asreditor/ProgressSpinner$1;-><init>(Lcom/google/android/apps/translate/asreditor/ProgressSpinner;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mStartAnimation:Ljava/lang/Runnable;

    .line 32
    new-instance v0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/asreditor/ProgressSpinner$2;-><init>(Lcom/google/android/apps/translate/asreditor/ProgressSpinner;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mStopAnimation:Ljava/lang/Runnable;

    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->init()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/asreditor/ProgressSpinner;)Landroid/graphics/drawable/AnimationDrawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method private init()V
    .registers 3

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/translate/R$drawable;->spinner:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_22

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 60
    :cond_22
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .registers 9
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 74
    if-lez p1, :cond_f

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mStartAnimation:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    :goto_e
    return-void

    .line 77
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mStopAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .parameter "cf"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 65
    iput-object p1, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_e

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/AnimationDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 69
    :cond_e
    return-void
.end method

.method public setVisibility(I)V
    .registers 6
    .parameter "visibility"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    if-nez p1, :cond_f

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mStartAnimation:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    :goto_e
    return-void

    .line 88
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->mStopAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e
.end method
