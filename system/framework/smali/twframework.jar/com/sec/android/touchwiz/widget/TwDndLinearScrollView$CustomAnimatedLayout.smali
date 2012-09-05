.class Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;
.super Landroid/widget/LinearLayout;
.source "TwDndLinearScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAnimatedLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;
    }
.end annotation


# static fields
.field public static final DEFAULT_ANIMATION_DURATION:I = 0x12c


# instance fields
.field private mCurChildRect:[Landroid/graphics/Rect;

.field private mDndAnimator:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:I

.field private mPrevChildRect:[Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;-><init>(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->this$0:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView;

    .line 172
    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDndAnimator:Ljava/util/HashMap;

    .line 174
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDuration:I

    .line 175
    return-void
.end method


# virtual methods
.method public getAnimationDuration()I
    .registers 2

    .prologue
    .line 292
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDuration:I

    return v0
.end method

.method public getChildRect(I)Landroid/graphics/Rect;
    .registers 3
    .parameter "index"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mCurChildRect:[Landroid/graphics/Rect;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected onDrawChildren(II)V
    .registers 14
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->getChildCount()I

    move-result v1

    .line 182
    .local v1, count:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mPrevChildRect:[Landroid/graphics/Rect;

    .line 183
    .local v6, prevChildRect:[Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mCurChildRect:[Landroid/graphics/Rect;

    .line 184
    .local v5, newChildRect:[Landroid/graphics/Rect;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_9
    if-ge v4, v1, :cond_32

    .line 185
    aget-object v7, v6, v4

    aget-object v8, v6, v4

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, p1

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 186
    aget-object v7, v6, v4

    aget-object v8, v6, v4

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, p1

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 187
    aget-object v7, v6, v4

    aget-object v8, v6, v4

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, p2

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 188
    aget-object v7, v6, v4

    aget-object v8, v6, v4

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, p2

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 184
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 191
    :cond_32
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDndAnimator:Ljava/util/HashMap;

    .line 192
    .local v3, dndAnimators:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;>;"
    const/4 v4, 0x0

    :goto_35
    if-ge v4, v1, :cond_96

    .line 193
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 194
    .local v0, child:Landroid/view/View;
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;

    .line 195
    .local v2, dndAnimator:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;
    if-nez v2, :cond_5b

    .line 196
    new-instance v7, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;

    invoke-direct {v7, p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;-><init>(Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;)V

    invoke-virtual {v3, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    if-eqz v7, :cond_58

    .line 199
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 192
    :cond_58
    :goto_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 204
    :cond_5b
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_58

    aget-object v7, v6, v4

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_58

    aget-object v7, v5, v4

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_58

    .line 206
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 207
    aget-object v7, v6, v4

    iget v7, v7, Landroid/graphics/Rect;->left:I

    aget-object v8, v6, v4

    iget v8, v8, Landroid/graphics/Rect;->top:I

    aget-object v9, v6, v4

    iget v9, v9, Landroid/graphics/Rect;->right:I

    aget-object v10, v6, v4

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 208
    aget-object v7, v5, v4

    iget v7, v7, Landroid/graphics/Rect;->left:I

    aget-object v8, v5, v4

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDuration:I

    invoke-virtual {v2, v0, v7, v8, v9}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;->start(Landroid/view/View;III)V

    goto :goto_58

    .line 211
    .end local v0           #child:Landroid/view/View;
    .end local v2           #dndAnimator:Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;
    :cond_96
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 12
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->getChildCount()I

    move-result v1

    .line 215
    .local v1, count:I
    if-gtz v1, :cond_f

    .line 216
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDndAnimator:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 217
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 236
    :cond_e
    return-void

    .line 220
    :cond_f
    new-array v4, v1, [Landroid/graphics/Rect;

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mPrevChildRect:[Landroid/graphics/Rect;

    .line 221
    .local v4, prevChildRect:[Landroid/graphics/Rect;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_14
    if-ge v2, v1, :cond_29

    .line 222
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    aput-object v5, v4, v2

    .line 223
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 224
    .local v0, child:Landroid/view/View;
    aget-object v5, v4, v2

    invoke-virtual {v0, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 227
    .end local v0           #child:Landroid/view/View;
    :cond_29
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 229
    new-array v5, v1, [Landroid/graphics/Rect;

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mCurChildRect:[Landroid/graphics/Rect;

    .line 230
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mCurChildRect:[Landroid/graphics/Rect;

    .line 231
    .local v3, newChildRect:[Landroid/graphics/Rect;
    const/4 v2, 0x0

    :goto_33
    if-ge v2, v1, :cond_e

    .line 232
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    aput-object v5, v3, v2

    .line 233
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 234
    .restart local v0       #child:Landroid/view/View;
    aget-object v5, v3, v2

    invoke-virtual {v0, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_33
.end method

.method public removeAllViews()V
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDndAnimator:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 275
    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 276
    return-void
.end method

.method public removeAllViewsInLayout()V
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDndAnimator:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 280
    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 281
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDndAnimator:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 241
    return-void
.end method

.method public removeViewAt(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDndAnimator:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 261
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDndAnimator:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 246
    return-void
.end method

.method public removeViews(II)V
    .registers 7
    .parameter "start"
    .parameter "count"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDndAnimator:Ljava/util/HashMap;

    .line 265
    .local v0, childAnimators:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->getChildCount()I

    move-result v3

    add-int v2, p1, v3

    .line 266
    .local v2, lastIndex:I
    move v1, p1

    .local v1, i:I
    :goto_9
    if-ge v1, v2, :cond_15

    .line 267
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 270
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 271
    return-void
.end method

.method public removeViewsInLayout(II)V
    .registers 7
    .parameter "start"
    .parameter "count"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDndAnimator:Ljava/util/HashMap;

    .line 250
    .local v0, childAnimators:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout$DndAnimator;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->getChildCount()I

    move-result v3

    add-int v2, p1, v3

    .line 251
    .local v2, lastIndex:I
    move v1, p1

    .local v1, i:I
    :goto_9
    if-ge v1, v2, :cond_15

    .line 252
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 255
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->removeViewsInLayout(II)V

    .line 256
    return-void
.end method

.method public setAnimationDuration(I)V
    .registers 2
    .parameter "duration"

    .prologue
    .line 288
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwDndLinearScrollView$CustomAnimatedLayout;->mDuration:I

    .line 289
    return-void
.end method
