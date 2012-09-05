.class Lcom/google/android/apps/plus/views/ClickableMediaImage;
.super Ljava/lang/Object;
.source "ClickableMediaImage.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ClickableItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/ClickableMediaImage$MediaImageClickListener;
    }
.end annotation


# static fields
.field private static sImageSelectedPaint:Landroid/graphics/Paint;


# instance fields
.field private final mActivityId:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mClickListener:Lcom/google/android/apps/plus/views/ClickableMediaImage$MediaImageClickListener;

.field private mClicked:Z

.field private final mContentRect:Landroid/graphics/Rect;

.field private final mMedia:Lcom/google/android/apps/plus/content/DbMedia;

.field private final mPhotoIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/plus/content/DbMedia;Landroid/graphics/Bitmap;ILcom/google/android/apps/plus/views/ClickableMediaImage$MediaImageClickListener;)V
    .registers 10
    .parameter "context"
    .parameter "activityId"
    .parameter "media"
    .parameter "bitmap"
    .parameter "photoIndex"
    .parameter "clickListener"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mContentRect:Landroid/graphics/Rect;

    .line 62
    iput-object p4, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 63
    iput-object p6, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mClickListener:Lcom/google/android/apps/plus/views/ClickableMediaImage$MediaImageClickListener;

    .line 64
    iput-object p2, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mActivityId:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mMedia:Lcom/google/android/apps/plus/content/DbMedia;

    .line 66
    iput p5, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mPhotoIndex:I

    .line 68
    sget-object v0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->sImageSelectedPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_41

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->sImageSelectedPaint:Landroid/graphics/Paint;

    .line 70
    sget-object v0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->sImageSelectedPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    sget-object v0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->sImageSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    sget-object v0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->sImageSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    :cond_41
    return-void
.end method


# virtual methods
.method public drawSelectionRect(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mContentRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mContentRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mContentRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mContentRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    sget-object v5, Lcom/google/android/apps/plus/views/ClickableMediaImage;->sImageSelectedPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 135
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mContentRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mMedia:Lcom/google/android/apps/plus/content/DbMedia;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v0

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

    .line 150
    const/4 v2, 0x3

    if-ne p3, v2, :cond_8

    .line 151
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mClicked:Z

    .line 181
    :goto_7
    return v0

    .line 155
    :cond_8
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_16

    .line 156
    if-ne p3, v0, :cond_14

    .line 157
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mClicked:Z

    :cond_14
    move v0, v1

    .line 159
    goto :goto_7

    .line 162
    :cond_16
    packed-switch p3, :pswitch_data_34

    goto :goto_7

    .line 164
    :pswitch_1a
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mClicked:Z

    goto :goto_7

    .line 169
    :pswitch_1d
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mClicked:Z

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mClickListener:Lcom/google/android/apps/plus/views/ClickableMediaImage$MediaImageClickListener;

    if-eqz v2, :cond_30

    .line 170
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mClickListener:Lcom/google/android/apps/plus/views/ClickableMediaImage$MediaImageClickListener;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mActivityId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mMedia:Lcom/google/android/apps/plus/content/DbMedia;

    iget v5, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mPhotoIndex:I

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/apps/plus/views/ClickableMediaImage$MediaImageClickListener;->onMediaImageClick(Ljava/lang/String;Lcom/google/android/apps/plus/content/DbMedia;I)V

    .line 172
    :cond_30
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mClicked:Z

    goto :goto_7

    .line 162
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method

.method public isClicked()Z
    .registers 2

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mClicked:Z

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "bitmap"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 82
    return-void
.end method

.method public setRect(IIII)V
    .registers 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableMediaImage;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 116
    return-void
.end method
