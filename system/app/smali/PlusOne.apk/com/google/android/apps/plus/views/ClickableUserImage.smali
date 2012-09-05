.class Lcom/google/android/apps/plus/views/ClickableUserImage;
.super Ljava/lang/Object;
.source "ClickableUserImage.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;
.implements Lcom/google/android/apps/plus/views/ClickableItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;
    }
.end annotation


# static fields
.field private static sImageSelectedPaint:Landroid/graphics/Paint;


# instance fields
.field private final mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

.field private mAvatarInvalidated:Z

.field private mAvatarLoaded:Z

.field private mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mClickListener:Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;

.field private mClicked:Z

.field private final mContentRect:Landroid/graphics/Rect;

.field private final mUserId:J

.field private final mUserName:Ljava/lang/String;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;JLjava/lang/String;Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;)V
    .registers 11
    .parameter "view"
    .parameter "userId"
    .parameter "userName"
    .parameter "clickListener"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mView:Landroid/view/View;

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mContentRect:Landroid/graphics/Rect;

    .line 67
    iput-object p5, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mClickListener:Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;

    .line 68
    iput-wide p2, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mUserId:J

    .line 69
    iput-object p4, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mUserName:Ljava/lang/String;

    .line 71
    invoke-static {v0}, Lcom/google/android/apps/plus/service/AvatarCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/AvatarCache;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    .line 72
    new-instance v1, Lcom/google/android/apps/plus/content/AvatarRequest;

    iget-wide v2, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mUserId:J

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(JI)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 73
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/plus/service/AvatarCache;->loadAvatar(Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;Lcom/google/android/apps/plus/content/AvatarRequest;)V

    .line 75
    sget-object v1, Lcom/google/android/apps/plus/views/ClickableUserImage;->sImageSelectedPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_5a

    .line 76
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/ClickableUserImage;->sImageSelectedPaint:Landroid/graphics/Paint;

    .line 77
    sget-object v1, Lcom/google/android/apps/plus/views/ClickableUserImage;->sImageSelectedPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4080

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    sget-object v1, Lcom/google/android/apps/plus/views/ClickableUserImage;->sImageSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    sget-object v1, Lcom/google/android/apps/plus/views/ClickableUserImage;->sImageSelectedPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    :cond_5a
    return-void
.end method


# virtual methods
.method public drawSelectionRect(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mContentRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mContentRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mContentRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mContentRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    sget-object v5, Lcom/google/android/apps/plus/views/ClickableUserImage;->sImageSelectedPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 142
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mAvatarInvalidated:Z

    if-eqz v0, :cond_e

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mAvatarInvalidated:Z

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/AvatarCache;->refreshAvatar(Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;Lcom/google/android/apps/plus/content/AvatarRequest;)V

    .line 110
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mContentRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public handleEvent(III)Z
    .registers 10
    .parameter "x"
    .parameter "y"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 157
    const/4 v2, 0x3

    if-ne p3, v2, :cond_8

    .line 158
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mClicked:Z

    .line 189
    :goto_7
    return v0

    .line 162
    :cond_8
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_16

    .line 163
    if-ne p3, v0, :cond_14

    .line 164
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mClicked:Z

    :cond_14
    move v0, v1

    .line 166
    goto :goto_7

    .line 169
    :cond_16
    packed-switch p3, :pswitch_data_32

    goto :goto_7

    .line 171
    :pswitch_1a
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mClicked:Z

    goto :goto_7

    .line 176
    :pswitch_1d
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mClicked:Z

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mClickListener:Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;

    if-eqz v2, :cond_2e

    .line 177
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mClickListener:Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;

    iget-wide v3, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mUserId:J

    iget-object v5, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mUserName:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;->onUserImageClick(JLjava/lang/String;)V

    .line 180
    :cond_2e
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mClicked:Z

    goto :goto_7

    .line 169
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method

.method public isAvatarLoaded()Z
    .registers 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mAvatarLoaded:Z

    return v0
.end method

.method public isClicked()Z
    .registers 2

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mClicked:Z

    return v0
.end method

.method public onAvatarChanged(J)V
    .registers 5
    .parameter "userId"

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mUserId:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_11

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mAvatarInvalidated:Z

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mAvatarLoaded:Z

    .line 199
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 201
    :cond_11
    return-void
.end method

.method public setAvatarBitmap(Landroid/graphics/Bitmap;Z)V
    .registers 4
    .parameter "bitmap"
    .parameter "loading"

    .prologue
    .line 89
    if-nez p2, :cond_d

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mAvatarLoaded:Z

    .line 90
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 92
    return-void

    .line 89
    :cond_d
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setRect(IIII)V
    .registers 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 123
    return-void
.end method
