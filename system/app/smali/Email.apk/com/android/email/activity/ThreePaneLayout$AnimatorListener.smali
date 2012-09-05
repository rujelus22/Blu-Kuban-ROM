.class Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;
.super Ljava/lang/Object;
.source "ThreePaneLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ThreePaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorListener"
.end annotation


# instance fields
.field private mCancelled:Z

.field private final mLogLabel:Ljava/lang/String;

.field private final mPreviousVisiblePanes:I

.field private final mViewsGone:[Landroid/view/View;

.field private final mViewsInvisible:[Landroid/view/View;

.field private final mViewsVisible:[Landroid/view/View;

.field final synthetic this$0:Lcom/android/email/activity/ThreePaneLayout;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/ThreePaneLayout;Ljava/lang/String;[Landroid/view/View;[Landroid/view/View;[Landroid/view/View;I)V
    .registers 7
    .parameter
    .parameter "logLabel"
    .parameter "viewsVisible"
    .parameter "viewsInvisible"
    .parameter "viewsGone"
    .parameter "previousVisiblePanes"

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1245
    iput-object p2, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mLogLabel:Ljava/lang/String;

    .line 1246
    iput-object p3, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsVisible:[Landroid/view/View;

    .line 1247
    iput-object p4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsInvisible:[Landroid/view/View;

    .line 1248
    iput-object p5, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsGone:[Landroid/view/View;

    .line 1249
    iput p6, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mPreviousVisiblePanes:I

    .line 1250
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 1256
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 1304
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 8
    .parameter "animation"

    .prologue
    .line 1311
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    const/4 v5, 0x0

    #setter for: Lcom/android/email/activity/ThreePaneLayout;->mAnimationStarted:Z
    invoke-static {v4, v5}, Lcom/android/email/activity/ThreePaneLayout;->access$302(Lcom/android/email/activity/ThreePaneLayout;Z)Z

    .line 1312
    iget-boolean v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mCancelled:Z

    if-eqz v4, :cond_b

    .line 1327
    :goto_a
    return-void

    .line 1315
    :cond_b
    const-string v4, "end"

    invoke-direct {p0, v4}, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->log(Ljava/lang/String;)V

    .line 1316
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsInvisible:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_14
    if-ge v1, v2, :cond_1f

    aget-object v3, v0, v1

    .line 1317
    .local v3, v:Landroid/view/View;
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1316
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1319
    .end local v3           #v:Landroid/view/View;
    :cond_1f
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsGone:[Landroid/view/View;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_23
    if-ge v1, v2, :cond_2f

    aget-object v3, v0, v1

    .line 1320
    .restart local v3       #v:Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1319
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1322
    .end local v3           #v:Landroid/view/View;
    :cond_2f
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    #getter for: Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;
    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mPreviousVisiblePanes:I

    invoke-interface {v4, v5}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onVisiblePanesChanged(I)V

    .line 1323
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$400()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4a

    .line 1324
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    #getter for: Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;
    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/email/activity/ThreePaneLayout$Callback;->makeMessageView()V

    .line 1326
    :cond_4a
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    #getter for: Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;
    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onLookChangedAfterAni()V

    goto :goto_a
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 1300
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 10
    .parameter "animation"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1268
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    #setter for: Lcom/android/email/activity/ThreePaneLayout;->mAnimationStarted:Z
    invoke-static {v4, v6}, Lcom/android/email/activity/ThreePaneLayout;->access$302(Lcom/android/email/activity/ThreePaneLayout;Z)Z

    .line 1269
    const-string v4, "start"

    invoke-direct {p0, v4}, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->log(Ljava/lang/String;)V

    .line 1270
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsVisible:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_10
    if-ge v1, v2, :cond_1a

    aget-object v3, v0, v1

    .line 1271
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1270
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1274
    .end local v3           #v:Landroid/view/View;
    :cond_1a
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$400()I

    move-result v4

    if-nez v4, :cond_4b

    .line 1275
    invoke-static {v7}, Lcom/android/email/activity/ThreePaneLayout;->access$502(Z)Z

    .line 1276
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    #getter for: Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;
    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$500()Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onLookChanged(Z)V

    .line 1277
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    #calls: Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z
    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$700(Lcom/android/email/activity/ThreePaneLayout;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1278
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchMarginListLand()I

    move-result v4

    invoke-static {v4}, Lcom/android/email/activity/MessageListXL;->setSearchFrameLayout(I)V

    .line 1295
    :cond_3f
    :goto_3f
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    #getter for: Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;
    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mPreviousVisiblePanes:I

    invoke-interface {v4, v5}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onVisiblePanesChanged(I)V

    .line 1296
    return-void

    .line 1281
    :cond_4b
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$400()I

    move-result v4

    if-ne v4, v6, :cond_71

    .line 1282
    invoke-static {v6}, Lcom/android/email/activity/ThreePaneLayout;->access$502(Z)Z

    .line 1283
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    #getter for: Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;
    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$500()Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onLookChanged(Z)V

    .line 1284
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    #calls: Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z
    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$700(Lcom/android/email/activity/ThreePaneLayout;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1285
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchMarginViewLand()I

    move-result v4

    invoke-static {v4}, Lcom/android/email/activity/MessageListXL;->setSearchFrameLayout(I)V

    goto :goto_3f

    .line 1287
    :cond_71
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$400()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8c

    .line 1288
    invoke-static {v6}, Lcom/android/email/activity/ThreePaneLayout;->access$502(Z)Z

    .line 1289
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    #getter for: Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;
    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$500()Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onLookChanged(Z)V

    .line 1290
    invoke-static {v7}, Lcom/android/email/activity/MessageListXL;->setSearchFrameLayout(I)V

    goto :goto_3f

    .line 1291
    :cond_8c
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$400()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3f

    .line 1292
    invoke-static {v6}, Lcom/android/email/activity/ThreePaneLayout;->access$502(Z)Z

    .line 1293
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    #getter for: Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;
    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$500()Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onLookChanged(Z)V

    goto :goto_3f
.end method
