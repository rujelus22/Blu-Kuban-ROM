.class Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "BrowserSnapshotPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserSnapshotPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SnapshotAdapter"
.end annotation


# instance fields
.field private mAnimateId:J

.field private mAnimation:Landroid/animation/AnimatorSet;

.field private mAnimationTarget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 10
    .parameter "context"
    .parameter "c"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 222
    const v0, 0x7f04003b

    invoke-direct {p0, p1, v0, p2, v5}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    .line 223
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimation:Landroid/animation/AnimatorSet;

    .line 224
    iget-object v0, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v4, [F

    fill-array-data v3, :array_4c

    invoke-static {v6, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v4, [F

    fill-array-data v4, :array_54

    invoke-static {v6, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 227
    iget-object v0, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 228
    iget-object v0, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 229
    iget-object v0, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter$1;-><init>(Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 249
    return-void

    .line 224
    nop

    :array_4c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_54
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    iput-wide p1, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimateId:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimationTarget:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method public animateIn(J)V
    .registers 3
    .parameter "id"

    .prologue
    .line 252
    iput-wide p1, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimateId:J

    .line 253
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 18
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 257
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 258
    .local v3, id:J
    iget-wide v12, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimateId:J

    cmp-long v12, v3, v12

    if-nez v12, :cond_44

    .line 259
    iget-object v12, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimationTarget:Landroid/view/View;

    if-eq v12, p1, :cond_30

    .line 260
    const/4 v5, 0x0

    .line 261
    .local v5, scale:F
    iget-object v12, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimationTarget:Landroid/view/View;

    if-eqz v12, :cond_2a

    .line 262
    iget-object v12, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimationTarget:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getScaleX()F

    move-result v5

    .line 263
    iget-object v12, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimationTarget:Landroid/view/View;

    const/high16 v13, 0x3f80

    invoke-virtual {v12, v13}, Landroid/view/View;->setScaleX(F)V

    .line 264
    iget-object v12, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimationTarget:Landroid/view/View;

    const/high16 v13, 0x3f80

    invoke-virtual {v12, v13}, Landroid/view/View;->setScaleY(F)V

    .line 266
    :cond_2a
    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleX(F)V

    .line 267
    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    .line 269
    .end local v5           #scale:F
    :cond_30
    iget-object v12, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v12, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 270
    iput-object p1, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimationTarget:Landroid/view/View;

    .line 271
    iget-object v12, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v12

    if-nez v12, :cond_44

    .line 272
    iget-object v12, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    .line 276
    :cond_44
    const v12, 0x7f0d0021

    invoke-virtual {p1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 277
    .local v8, thumbnail:Landroid/widget/ImageView;
    const/4 v12, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 278
    .local v7, thumbBlob:[B
    if-nez v7, :cond_91

    .line 279
    const v12, 0x7f020019

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    :goto_5c
    const v12, 0x7f0d0005

    invoke-virtual {p1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 286
    .local v11, title:Landroid/widget/TextView;
    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    const/4 v12, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 296
    .local v9, timestamp:J
    const v12, 0x7f0d00ba

    invoke-virtual {p1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 297
    .local v1, date:Landroid/widget/TextView;
    const/4 v12, 0x3

    invoke-static {v12}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    .line 298
    .local v2, dateFormat:Ljava/text/DateFormat;
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    return-void

    .line 281
    .end local v1           #date:Landroid/widget/TextView;
    .end local v2           #dateFormat:Ljava/text/DateFormat;
    .end local v9           #timestamp:J
    .end local v11           #title:Landroid/widget/TextView;
    :cond_91
    const/4 v12, 0x0

    array-length v13, v7

    invoke-static {v7, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 283
    .local v6, thumbBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5c
.end method

.method public getItem(I)Landroid/database/Cursor;
    .registers 3
    .parameter "position"

    .prologue
    .line 303
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
