.class Lcom/google/android/apps/plus/phone/StreamAdapter$1;
.super Ljava/lang/Object;
.source "StreamAdapter.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ColumnGridView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/StreamAdapter;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/views/ColumnGridView;Lcom/google/android/apps/plus/content/EsAccount;Landroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;ZLcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/StreamAdapter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/StreamAdapter;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/StreamAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/StreamAdapter;

    iput-object p2, p0, Lcom/google/android/apps/plus/phone/StreamAdapter$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/google/android/apps/plus/views/ColumnGridView;IIII)V
    .registers 23
    .parameter "view"
    .parameter "firstItem"
    .parameter "visibleOffset"
    .parameter "viewItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/phone/StreamAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/StreamAdapter;

    #getter for: Lcom/google/android/apps/plus/phone/StreamAdapter;->mComposeBarController:Lcom/google/android/apps/plus/phone/ComposeBarController;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/StreamAdapter;->access$000(Lcom/google/android/apps/plus/phone/StreamAdapter;)Lcom/google/android/apps/plus/phone/ComposeBarController;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/phone/StreamAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/StreamAdapter;

    #getter for: Lcom/google/android/apps/plus/phone/StreamAdapter;->mComposeBarController:Lcom/google/android/apps/plus/phone/ComposeBarController;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/StreamAdapter;->access$000(Lcom/google/android/apps/plus/phone/StreamAdapter;)Lcom/google/android/apps/plus/phone/ComposeBarController;

    move-result-object v1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/apps/plus/phone/ComposeBarController;->onScroll(Lcom/google/android/apps/plus/views/ColumnGridView;IIII)V

    .line 230
    :cond_1f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_27

    if-nez p4, :cond_28

    .line 295
    :cond_27
    :goto_27
    return-void

    .line 234
    :cond_28
    const/high16 v10, -0x8000

    .line 235
    .local v10, highestIndexSeen:I
    const/16 v9, 0x32

    .line 237
    .local v9, delay:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2d
    move/from16 v0, p4

    if-ge v11, v0, :cond_ef

    .line 238
    add-int v12, p2, v11

    .line 239
    .local v12, index:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/phone/StreamAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/StreamAdapter;

    #getter for: Lcom/google/android/apps/plus/phone/StreamAdapter;->mVisibleIndex:I
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/StreamAdapter;->access$100(Lcom/google/android/apps/plus/phone/StreamAdapter;)I

    move-result v1

    if-le v12, v1, :cond_50

    .line 240
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 242
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/google/android/apps/plus/views/ColumnGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 243
    .local v8, childView:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f09007c

    if-ne v1, v2, :cond_53

    .line 237
    .end local v8           #childView:Landroid/view/View;
    :cond_50
    :goto_50
    add-int/lit8 v11, v11, 0x1

    goto :goto_2d

    .line 247
    .restart local v8       #childView:Landroid/view/View;
    :cond_53
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/phone/StreamAdapter$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ScreenMetrics;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ScreenMetrics;

    move-result-object v14

    .line 248
    .local v14, screenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/phone/StreamAdapter$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e0

    const/4 v13, 0x1

    .line 251
    .local v13, landscape:Z
    :goto_6d
    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v1

    float-to-int v15, v1

    .line 252
    .local v15, x:I
    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    move-result v1

    float-to-int v0, v1

    move/from16 v16, v0

    .line 253
    .local v16, y:I
    if-eqz v13, :cond_e2

    iget v1, v14, Lcom/google/android/apps/plus/phone/ScreenMetrics;->longDimension:I

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    :goto_80
    invoke-virtual {v8, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 254
    if-eqz v13, :cond_e4

    const/4 v1, 0x0

    :goto_86
    invoke-virtual {v8, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 255
    if-eqz v13, :cond_ea

    const/4 v1, 0x0

    :goto_8c
    invoke-virtual {v8, v1}, Landroid/view/View;->setRotationX(F)V

    .line 256
    if-eqz v13, :cond_ed

    const/high16 v1, -0x3ee0

    :goto_93
    invoke-virtual {v8, v1}, Landroid/view/View;->setRotationY(F)V

    .line 258
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v15

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    move/from16 v0, v16

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-static {}, Lcom/google/android/apps/plus/phone/StreamAdapter;->access$200()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 262
    .local v7, anim:Landroid/view/ViewPropertyAnimator;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_ce

    .line 263
    new-instance v1, Lcom/google/android/apps/plus/phone/StreamAdapter$1$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v8}, Lcom/google/android/apps/plus/phone/StreamAdapter$1$1;-><init>(Lcom/google/android/apps/plus/phone/StreamAdapter$1;Landroid/view/View;)V

    invoke-virtual {v7, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 287
    :cond_ce
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_dc

    .line 288
    int-to-long v1, v9

    invoke-virtual {v7, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 290
    :cond_dc
    add-int/lit8 v9, v9, 0x32

    goto/16 :goto_50

    .line 248
    .end local v7           #anim:Landroid/view/ViewPropertyAnimator;
    .end local v13           #landscape:Z
    .end local v15           #x:I
    .end local v16           #y:I
    :cond_e0
    const/4 v13, 0x0

    goto :goto_6d

    .line 253
    .restart local v13       #landscape:Z
    .restart local v15       #x:I
    .restart local v16       #y:I
    :cond_e2
    const/4 v1, 0x0

    goto :goto_80

    .line 254
    :cond_e4
    iget v1, v14, Lcom/google/android/apps/plus/phone/ScreenMetrics;->longDimension:I

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    goto :goto_86

    .line 255
    :cond_ea
    const/high16 v1, 0x4120

    goto :goto_8c

    .line 256
    :cond_ed
    const/4 v1, 0x0

    goto :goto_93

    .line 294
    .end local v8           #childView:Landroid/view/View;
    .end local v12           #index:I
    .end local v13           #landscape:Z
    .end local v14           #screenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;
    .end local v15           #x:I
    .end local v16           #y:I
    :cond_ef
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/phone/StreamAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/StreamAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/phone/StreamAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/StreamAdapter;

    #getter for: Lcom/google/android/apps/plus/phone/StreamAdapter;->mVisibleIndex:I
    invoke-static {v2}, Lcom/google/android/apps/plus/phone/StreamAdapter;->access$100(Lcom/google/android/apps/plus/phone/StreamAdapter;)I

    move-result v2

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    #setter for: Lcom/google/android/apps/plus/phone/StreamAdapter;->mVisibleIndex:I
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/phone/StreamAdapter;->access$102(Lcom/google/android/apps/plus/phone/StreamAdapter;I)I

    goto/16 :goto_27
.end method

.method public onScrollStateChanged(Lcom/google/android/apps/plus/views/ColumnGridView;I)V
    .registers 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/StreamAdapter;

    #getter for: Lcom/google/android/apps/plus/phone/StreamAdapter;->mComposeBarController:Lcom/google/android/apps/plus/phone/ComposeBarController;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->access$000(Lcom/google/android/apps/plus/phone/StreamAdapter;)Lcom/google/android/apps/plus/phone/ComposeBarController;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 218
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter$1;->this$0:Lcom/google/android/apps/plus/phone/StreamAdapter;

    #getter for: Lcom/google/android/apps/plus/phone/StreamAdapter;->mComposeBarController:Lcom/google/android/apps/plus/phone/ComposeBarController;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->access$000(Lcom/google/android/apps/plus/phone/StreamAdapter;)Lcom/google/android/apps/plus/phone/ComposeBarController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/plus/phone/ComposeBarController;->onScrollStateChanged(Lcom/google/android/apps/plus/views/ColumnGridView;I)V

    .line 220
    :cond_11
    return-void
.end method
