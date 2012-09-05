.class public final Lcom/sec/android/app/ve/view/effect/retouch/EffectMediaControlView;
.super Landroid/widget/LinearLayout;
.source "EffectMediaControlView.java"


# instance fields
.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mRedoDrawable:Landroid/graphics/drawable/Drawable;

.field private mRetouchButton:Landroid/widget/ImageButton;

.field private mUndoDrawable:Landroid/graphics/drawable/Drawable;

.field private mUndoRedoButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Lcom/sec/android/app/ve/view/effect/retouch/EffectMediaControlView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/effect/retouch/EffectMediaControlView$1;-><init>(Lcom/sec/android/app/ve/view/effect/retouch/EffectMediaControlView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/EffectMediaControlView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 71
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 74
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 79
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/effect/retouch/EffectMediaControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020192

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/EffectMediaControlView;->mUndoDrawable:Landroid/graphics/drawable/Drawable;

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/effect/retouch/EffectMediaControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020191

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/EffectMediaControlView;->mRedoDrawable:Landroid/graphics/drawable/Drawable;

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/EffectMediaControlView;->mRetouchButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/effect/retouch/EffectMediaControlView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/EffectMediaControlView;->mUndoRedoButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/effect/retouch/EffectMediaControlView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/EffectMediaControlView;->mUndoRedoButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/effect/retouch/EffectMediaControlView;->mUndoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getEffectUndoRedo()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getEffectUndoRedo()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;

    move-result-object v0

    iget v0, v0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;->operation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_48

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/EffectMediaControlView;->mUndoRedoButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/effect/retouch/EffectMediaControlView;->mRedoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    :cond_48
    return-void
.end method
