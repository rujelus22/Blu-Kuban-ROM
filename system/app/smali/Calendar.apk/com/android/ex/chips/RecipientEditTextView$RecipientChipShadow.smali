.class final Lcom/android/ex/chips/RecipientEditTextView$RecipientChipShadow;
.super Landroid/view/View$DragShadowBuilder;
.source "RecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/RecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecipientChipShadow"
.end annotation


# instance fields
.field private final mChip:Lcom/android/ex/chips/RecipientChip;

.field final synthetic this$0:Lcom/android/ex/chips/RecipientEditTextView;


# direct methods
.method public constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientChip;)V
    .registers 3
    .parameter
    .parameter "chip"

    .prologue
    .line 2344
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientChipShadow;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0}, Landroid/view/View$DragShadowBuilder;-><init>()V

    .line 2345
    iput-object p2, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientChipShadow;->mChip:Lcom/android/ex/chips/RecipientChip;

    .line 2346
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 2357
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientChipShadow;->mChip:Lcom/android/ex/chips/RecipientChip;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientChip;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2358
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 6
    .parameter "shadowSize"
    .parameter "shadowTouchPoint"

    .prologue
    .line 2350
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientChipShadow;->mChip:Lcom/android/ex/chips/RecipientChip;

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientChip;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2351
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 2352
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 2353
    return-void
.end method
