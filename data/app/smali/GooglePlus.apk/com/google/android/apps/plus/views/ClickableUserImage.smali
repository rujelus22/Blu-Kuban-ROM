.class Lcom/google/android/apps/plus/views/ClickableUserImage;
.super Ljava/lang/Object;
.source "ClickableUserImage.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;
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
.field private final mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

.field private mAvatarInvalidated:Z

.field private mAvatarLoaded:Z

.field private mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mClickListener:Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;

.field private mClicked:Z

.field private final mContentRect:Landroid/graphics/Rect;

.field private final mUserId:Ljava/lang/String;

.field private final mUserName:Ljava/lang/String;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;)V
    .registers 11
    .parameter "view"
    .parameter "gaiaId"
    .parameter "userName"
    .parameter "clickListener"

    .prologue
    .line 65
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/views/ClickableUserImage;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;I)V
    .registers 10
    .parameter "view"
    .parameter "gaiaId"
    .parameter "userName"
    .parameter "clickListener"
    .parameter "avatarSize"

    .prologue
    const/4 v3, 0x1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mView:Landroid/view/View;

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mContentRect:Landroid/graphics/Rect;

    .line 82
    iput-object p4, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mClickListener:Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;

    .line 83
    iput-object p2, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mUserId:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mUserName:Ljava/lang/String;

    .line 86
    invoke-static {v0}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    .line 87
    new-instance v1, Lcom/google/android/apps/plus/content/AvatarRequest;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mUserId:Ljava/lang/String;

    invoke-direct {v1, v2, p5, v3}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 88
    iput-boolean v3, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mAvatarInvalidated:Z

    .line 90
    sget-object v1, Lcom/google/android/apps/plus/views/ClickableUserImage;->sImageSelectedPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_5a

    .line 91
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/ClickableUserImage;->sImageSelectedPaint:Landroid/graphics/Paint;

    .line 92
    sget-object v1, Lcom/google/android/apps/plus/views/ClickableUserImage;->sImageSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    sget-object v1, Lcom/google/android/apps/plus/views/ClickableUserImage;->sImageSelectedPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4080

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 94
    sget-object v1, Lcom/google/android/apps/plus/views/ClickableUserImage;->sImageSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    sget-object v1, Lcom/google/android/apps/plus/views/ClickableUserImage;->sImageSelectedPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    :cond_5a
    return-void
.end method


# virtual methods
.method public drawSelectionRect(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget-object v3, Lcom/google/android/apps/plus/views/ClickableUserImage;->sImageSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 158
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mAvatarInvalidated:Z

    if-eqz v0, :cond_e

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mAvatarInvalidated:Z

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mAvatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/ImageCache;->refreshImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 126
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mContentRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public handleEvent(III)Z
    .registers 9
    .parameter "x"
    .parameter "y"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 173
    const/4 v2, 0x3

    if-ne p3, v2, :cond_8

    .line 174
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mClicked:Z

    .line 205
    :goto_7
    return v0

    .line 178
    :cond_8
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_16

    .line 179
    if-ne p3, v0, :cond_14

    .line 180
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mClicked:Z

    :cond_14
    move v0, v1

    .line 182
    goto :goto_7

    .line 185
    :cond_16
    packed-switch p3, :pswitch_data_32

    goto :goto_7

    .line 187
    :pswitch_1a
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mClicked:Z

    goto :goto_7

    .line 192
    :pswitch_1d
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mClicked:Z

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mClickListener:Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;

    if-eqz v2, :cond_2e

    .line 193
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mClickListener:Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mUserId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mUserName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;->onUserImageClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_2e
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mClicked:Z

    goto :goto_7

    .line 185
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method

.method public isClicked()Z
    .registers 2

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mClicked:Z

    return v0
.end method

.method public onAvatarChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "gaiaId"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mUserId:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mAvatarInvalidated:Z

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mAvatarLoaded:Z

    .line 215
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 217
    :cond_13
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Z)V
    .registers 4
    .parameter "bitmap"
    .parameter "loading"

    .prologue
    .line 105
    if-nez p2, :cond_d

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mAvatarLoaded:Z

    .line 106
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 108
    return-void

    .line 105
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
    .line 138
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableUserImage;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 139
    return-void
.end method
