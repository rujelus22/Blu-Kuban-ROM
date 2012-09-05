.class public Lcom/sec/android/mimage/photoretouching/EffectController;
.super Ljava/lang/Object;
.source "EffectController.java"


# static fields
.field public static final APPLYCANCEL:I = 0x2

.field public static final APPLYTOCANVAS:I = 0x0

.field public static final APPLYTOORIGINAL:I = 0x1

.field private static mStep:I


# instance fields
.field private isStoped:Z

.field private isWorking:Z

.field private mAction:I

.field private mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

.field private mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

.field private mHFlip:I

.field private mHandler:Landroid/os/Handler;

.field private mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

.field private mInitX:I

.field private mInitY:I

.field private mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

.field private mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

.field private mRotate:I

.field private mTouchType:I

.field private mVFlip:I

.field private mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

.field private mWS:Lcom/sec/android/mimage/photoretouching/WorkSpace;

.field private mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

.field private orgSBuff:[I

.field private rotSBuff:[I


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;I)V
    .registers 10
    .parameter "info"
    .parameter "mask"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    .line 19
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    .line 22
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    .line 23
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    .line 24
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    .line 25
    iput v5, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    .line 28
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    .line 31
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->orgSBuff:[I

    .line 32
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->rotSBuff:[I

    .line 34
    iput v5, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mHFlip:I

    .line 35
    iput v5, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mVFlip:I

    .line 36
    iput v5, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    .line 128
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/EffectController;->clear()V

    .line 130
    invoke-virtual {p0, p3}, Lcom/sec/android/mimage/photoretouching/EffectController;->setAction(I)V

    .line 132
    new-instance v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    invoke-direct {v1}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;-><init>()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    .line 133
    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    .line 134
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    .line 138
    const/4 v1, 0x5

    if-eq p3, v1, :cond_34

    const/4 v1, 0x4

    if-ne p3, v1, :cond_82

    .line 140
    :cond_34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 141
    .local v0, objROI:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 143
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-gt v1, v2, :cond_48

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_66

    .line 145
    :cond_48
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v2, v5}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getSBuff(Z)[B

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v4

    const/4 v5, 0x2

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/Effect;->native_initblur([I[BIII)V

    .line 152
    :goto_64
    const/4 v0, 0x0

    .line 165
    .end local v0           #objROI:Landroid/graphics/Rect;
    :cond_65
    :goto_65
    return-void

    .line 149
    .restart local v0       #objROI:Landroid/graphics/Rect;
    :cond_66
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v2, v5}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getSBuff(Z)[B

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/Effect;->native_initblur([I[BIII)V

    goto :goto_64

    .line 154
    .end local v0           #objROI:Landroid/graphics/Rect;
    :cond_82
    const/16 v1, 0xe

    if-ne p3, v1, :cond_65

    .line 156
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->orgSBuff:[I

    .line 157
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getROTSWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getROTSHeight()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->rotSBuff:[I

    .line 159
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->orgSBuff:[I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iput v5, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mHFlip:I

    .line 162
    iput v5, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mVFlip:I

    .line 163
    iput v5, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    goto :goto_65
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;ILandroid/os/Handler;)V
    .registers 11
    .parameter "info"
    .parameter "mask"
    .parameter "type"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    .line 19
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    .line 22
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    .line 23
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    .line 24
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    .line 25
    iput v5, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    .line 28
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    .line 31
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->orgSBuff:[I

    .line 32
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->rotSBuff:[I

    .line 34
    iput v5, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mHFlip:I

    .line 35
    iput v5, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mVFlip:I

    .line 36
    iput v5, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    .line 168
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/EffectController;->clear()V

    .line 170
    invoke-virtual {p0, p3}, Lcom/sec/android/mimage/photoretouching/EffectController;->setAction(I)V

    .line 172
    new-instance v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    invoke-direct {v1}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;-><init>()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    .line 173
    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    .line 174
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    .line 175
    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mHandler:Landroid/os/Handler;

    .line 177
    const/4 v1, 0x5

    if-eq p3, v1, :cond_36

    const/4 v1, 0x4

    if-ne p3, v1, :cond_84

    .line 179
    :cond_36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 180
    .local v0, objROI:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 182
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-gt v1, v2, :cond_4a

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_68

    .line 184
    :cond_4a
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v2, v5}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getSBuff(Z)[B

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v4

    const/4 v5, 0x2

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/Effect;->native_initblur([I[BIII)V

    .line 191
    :goto_66
    const/4 v0, 0x0

    .line 204
    .end local v0           #objROI:Landroid/graphics/Rect;
    :cond_67
    :goto_67
    return-void

    .line 188
    .restart local v0       #objROI:Landroid/graphics/Rect;
    :cond_68
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v2, v5}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getSBuff(Z)[B

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/Effect;->native_initblur([I[BIII)V

    goto :goto_66

    .line 193
    .end local v0           #objROI:Landroid/graphics/Rect;
    :cond_84
    const/16 v1, 0xe

    if-ne p3, v1, :cond_67

    .line 195
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->orgSBuff:[I

    .line 196
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getROTSWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getROTSHeight()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->rotSBuff:[I

    .line 198
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->orgSBuff:[I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iput v5, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mHFlip:I

    .line 201
    iput v5, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mVFlip:I

    .line 202
    iput v5, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    goto :goto_67
.end method

.method static synthetic access$0(Lcom/sec/android/mimage/photoretouching/EffectController;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1377
    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->isStoped:Z

    return-void
.end method

.method static synthetic access$1(Lcom/sec/android/mimage/photoretouching/EffectController;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->isWorking:Z

    return-void
.end method

.method static synthetic access$2(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    .registers 2
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sec/android/mimage/photoretouching/EffectController;)Z
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->isWorking:Z

    return v0
.end method

.method static synthetic access$5(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;
    .registers 2
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/sec/android/mimage/photoretouching/EffectController;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/sec/android/mimage/photoretouching/EffectController;)Lcom/sec/android/mimage/photoretouching/WorkSpace;
    .registers 2
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWS:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    return-object v0
.end method

.method static synthetic access$8(Lcom/sec/android/mimage/photoretouching/EffectController;)Z
    .registers 2
    .parameter

    .prologue
    .line 1377
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->isStoped:Z

    return v0
.end method

.method private stayWhileStopWorking()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1381
    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->isStoped:Z

    .line 1382
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/jni/PhotoEraser;->exitEraser()I

    .line 1383
    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->isWorking:Z

    if-nez v0, :cond_6

    .line 1384
    return v1
.end method


# virtual methods
.method public Eraser(I)Z
    .registers 7
    .parameter "type"

    .prologue
    .line 1387
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getObjroi()Landroid/graphics/Rect;

    move-result-object v0

    .line 1401
    .local v0, objROI:Landroid/graphics/Rect;
    packed-switch p1, :pswitch_data_6e

    .line 1466
    :cond_9
    :goto_9
    const/4 v2, 0x1

    :goto_a
    return v2

    .line 1404
    :pswitch_b
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/jni/PhotoEraser;->deleteStoredMask()I

    .line 1405
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/jni/PhotoEraser;->deleteStoredObject()I

    goto :goto_9

    .line 1409
    :pswitch_12
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->isWorking:Z

    if-eqz v2, :cond_19

    .line 1410
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/EffectController;->stayWhileStopWorking()Z

    .line 1411
    :cond_19
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v4

    invoke-static {v2, v3, v4, v0}, Lcom/sec/android/mimage/photoretouching/jni/PhotoEraser;->recoverObject([IIILandroid/graphics/Rect;)I

    .line 1412
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getBuff()[B

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getHeight()I

    move-result v4

    invoke-static {v2, v3, v4, v0}, Lcom/sec/android/mimage/photoretouching/jni/PhotoEraser;->recoverMask([BIILandroid/graphics/Rect;)I

    .line 1413
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/jni/PhotoEraser;->deleteStoredObject()I

    .line 1414
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/jni/PhotoEraser;->deleteStoredMask()I

    goto :goto_9

    .line 1417
    :pswitch_4a
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/EffectController;->check()Z

    move-result v2

    if-nez v2, :cond_52

    .line 1418
    const/4 v2, 0x0

    goto :goto_a

    .line 1420
    :cond_52
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/EffectController$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/mimage/photoretouching/EffectController$1;-><init>(Lcom/sec/android/mimage/photoretouching/EffectController;Landroid/graphics/Rect;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1431
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1433
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_9

    .line 1434
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/mimage/photoretouching/EffectController$2;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/mimage/photoretouching/EffectController$2;-><init>(Lcom/sec/android/mimage/photoretouching/EffectController;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    .line 1401
    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_b
        :pswitch_12
    .end packed-switch
.end method

.method Re_Rotate_Flip()Z
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 1596
    const/4 v8, 0x0

    .line 1598
    .local v8, brot:Z
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_74

    .line 1600
    :cond_c
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->rotSBuff:[I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getROTSHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getROTSWidth()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getResizeBuff([III)V

    .line 1601
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->rotSBuff:[I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getROTSHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getROTSWidth()I

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mHFlip:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mVFlip:I

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/Effect;->native_rotate_flip([IIIIII)V

    .line 1603
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1605
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->rotSBuff:[I

    .line 1607
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getROTSWidth()I

    move-result v3

    .line 1608
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getROTCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 1609
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getROTCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 1610
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getROTSWidth()I

    move-result v6

    .line 1611
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getROTSHeight()I

    move-result v7

    move v2, v9

    .line 1605
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1613
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate()V

    .line 1615
    const/4 v8, 0x1

    .line 1635
    :goto_73
    return v8

    .line 1619
    :cond_74
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->orgSBuff:[I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-static {v0, v9, v1, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1620
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->orgSBuff:[I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mHFlip:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mVFlip:I

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/Effect;->native_rotate_flip([IIIIII)V

    .line 1622
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1624
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->orgSBuff:[I

    .line 1626
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    .line 1627
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 1628
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 1629
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v6

    .line 1630
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v7

    move v2, v9

    .line 1624
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1632
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate()V

    goto :goto_73
.end method

.method public ReloadBackground(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 15
    .parameter "path"
    .parameter "backbmp"
    .parameter "backbmp2"

    .prologue
    const/4 v10, 0x0

    .line 1471
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    if-eqz v0, :cond_10b

    .line 1473
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->ReloadBackground(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1474
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 1475
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getOtherSWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getOtherSHeight()I

    move-result v4

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->SetBackImgInCopyTo(IIIILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 1482
    :goto_31
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DrawPreview([ILcom/sec/android/mimage/photoretouching/common/ImageInfo;)V

    .line 1483
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v1

    .line 1485
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    .line 1486
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 1487
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 1488
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v6

    .line 1489
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v7

    move v2, v10

    .line 1483
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1491
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 1492
    .local v9, rect:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 1493
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 1494
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 1495
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 1497
    iput v10, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    .line 1499
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 1500
    .local v8, pt:Landroid/graphics/Point;
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetCenterPt()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Point;->x:I

    .line 1501
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetCenterPt()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Point;->y:I

    .line 1502
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    invoke-virtual {v0, v9, v8, v1}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setDrawBdry(Landroid/graphics/Rect;Landroid/graphics/Point;I)V

    .line 1503
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetAngle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setAngle(I)V

    .line 1504
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetObjectBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setObjectBitmap(Landroid/graphics/Bitmap;)V

    .line 1506
    .end local v8           #pt:Landroid/graphics/Point;
    .end local v9           #rect:Landroid/graphics/Rect;
    :cond_10b
    return-void

    .line 1478
    :cond_10c
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getOtherSWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getOtherSHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v4

    move-object v5, p3

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->SetBackImgInCopyTo(IIIILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto/16 :goto_31
.end method

.method Rotate_Flip(IZZ)Z
    .registers 14
    .parameter "rotate_type"
    .parameter "bhflip"
    .parameter "bvflip"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 1510
    const/4 v8, 0x0

    .line 1512
    .local v8, brot:Z
    if-ne p1, v1, :cond_a3

    .line 1514
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    .line 1515
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    if-gez v0, :cond_13

    .line 1516
    iput v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    .line 1525
    :cond_13
    :goto_13
    if-eqz p2, :cond_23

    .line 1527
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    if-eqz v0, :cond_1d

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    if-ne v0, v2, :cond_b7

    .line 1529
    :cond_1d
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mHFlip:I

    if-ne v0, v1, :cond_b3

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mHFlip:I

    .line 1540
    :cond_23
    :goto_23
    if-eqz p3, :cond_33

    .line 1542
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    if-eqz v0, :cond_2d

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    if-ne v0, v2, :cond_c7

    .line 1544
    :cond_2d
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mVFlip:I

    if-ne v0, v1, :cond_c3

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mVFlip:I

    .line 1554
    :cond_33
    :goto_33
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    if-eq v0, v1, :cond_3b

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    if-ne v0, v3, :cond_d3

    .line 1556
    :cond_3b
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->rotSBuff:[I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getROTSHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getROTSWidth()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getResizeBuff([III)V

    .line 1557
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->rotSBuff:[I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getROTSHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getROTSWidth()I

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mHFlip:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mVFlip:I

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/Effect;->native_rotate_flip([IIIIII)V

    .line 1559
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1561
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->rotSBuff:[I

    .line 1563
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getROTSWidth()I

    move-result v3

    .line 1564
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getROTCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 1565
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getROTCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 1566
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getROTSWidth()I

    move-result v6

    .line 1567
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getROTSHeight()I

    move-result v7

    move v2, v9

    .line 1561
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1569
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate()V

    .line 1571
    const/4 v8, 0x1

    .line 1591
    :goto_a2
    return v8

    .line 1518
    :cond_a3
    if-ne p1, v2, :cond_13

    .line 1520
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    .line 1521
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    if-le v0, v3, :cond_13

    .line 1522
    iput v9, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    goto/16 :goto_13

    .line 1530
    :cond_b3
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mHFlip:I

    goto/16 :goto_23

    .line 1534
    :cond_b7
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mVFlip:I

    if-ne v0, v1, :cond_bf

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mVFlip:I

    goto/16 :goto_23

    .line 1535
    :cond_bf
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mVFlip:I

    goto/16 :goto_23

    .line 1545
    :cond_c3
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mVFlip:I

    goto/16 :goto_33

    .line 1549
    :cond_c7
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mHFlip:I

    if-ne v0, v1, :cond_cf

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mHFlip:I

    goto/16 :goto_33

    .line 1550
    :cond_cf
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mHFlip:I

    goto/16 :goto_33

    .line 1575
    :cond_d3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->orgSBuff:[I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-static {v0, v9, v1, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1576
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->orgSBuff:[I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mHFlip:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mVFlip:I

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/Effect;->native_rotate_flip([IIIIII)V

    .line 1578
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1580
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->orgSBuff:[I

    .line 1582
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    .line 1583
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 1584
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 1585
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v6

    .line 1586
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v7

    move v2, v9

    .line 1580
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1588
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate()V

    goto/16 :goto_a2
.end method

.method public blur(I)Z
    .registers 4
    .parameter "mode"

    .prologue
    .line 912
    const/4 v0, 0x0

    sget v1, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/mimage/photoretouching/EffectController;->blur(III)Z

    move-result v0

    return v0
.end method

.method public blur(III)Z
    .registers 14
    .parameter "type"
    .parameter "mode"
    .parameter "step"

    .prologue
    const/4 v9, 0x0

    .line 916
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 917
    .local v8, objROI:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 919
    packed-switch p1, :pswitch_data_100

    .line 949
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0

    .line 922
    :pswitch_e
    iget v0, v8, Landroid/graphics/Rect;->left:I

    iget v1, v8, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_1a

    iget v0, v8, Landroid/graphics/Rect;->top:I

    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_3f

    .line 923
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getBuff()[B

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v4

    add-int/lit8 v5, p2, 0x2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/Effect;->native_makeblur([I[B[IIIII)V

    goto :goto_c

    .line 925
    :cond_3f
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getBuff()[B

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v4

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/Effect;->native_makeblur([I[B[IIIII)V

    goto :goto_c

    .line 930
    :pswitch_63
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/EffectController;->check()Z

    move-result v0

    if-nez v0, :cond_6b

    move v0, v9

    .line 931
    goto :goto_d

    .line 933
    :cond_6b
    sput p3, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    .line 935
    iget v0, v8, Landroid/graphics/Rect;->left:I

    iget v1, v8, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_79

    iget v0, v8, Landroid/graphics/Rect;->top:I

    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_dc

    .line 937
    :cond_79
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v1, v9}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getSBuff(Z)[B

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v4

    add-int/lit8 v5, p2, 0x2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/Effect;->native_blur([I[B[IIIII)V

    .line 943
    :goto_9d
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    .line 944
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v6

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v7

    move v2, v9

    .line 943
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 945
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_c

    .line 940
    :cond_dc
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v1, v9}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getSBuff(Z)[B

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v4

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/Effect;->native_blur([I[B[IIIII)V

    goto :goto_9d

    .line 919
    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_63
        :pswitch_e
    .end packed-switch
.end method

.method public cancel()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 81
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->isWorking:Z

    if-eqz v0, :cond_9

    .line 83
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/EffectController;->stayWhileStopWorking()Z

    .line 85
    :cond_9
    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->isWorking:Z

    .line 88
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mAction:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4d

    .line 90
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getObjroi()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/jni/PhotoEraser;->recoverObject([IIILandroid/graphics/Rect;)I

    .line 91
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getBuff()[B

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getObjroi()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/jni/PhotoEraser;->recoverMask([BIILandroid/graphics/Rect;)I

    .line 92
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/jni/PhotoEraser;->deleteStoredObject()I

    .line 93
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/jni/PhotoEraser;->deleteStoredMask()I

    .line 96
    :cond_4d
    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    .line 97
    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    .line 98
    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    .line 101
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    if-eqz v0, :cond_5c

    .line 102
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->clear()V

    .line 103
    :cond_5c
    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    .line 105
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    if-eqz v0, :cond_67

    .line 106
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestoryResource()V

    .line 107
    :cond_67
    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    .line 109
    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    .line 111
    iput v5, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    .line 112
    iput v5, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mAction:I

    .line 113
    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mHandler:Landroid/os/Handler;

    .line 115
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/Effect;->native_destroyblur()V

    .line 117
    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->rotSBuff:[I

    .line 118
    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->orgSBuff:[I

    .line 120
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    if-eqz v0, :cond_83

    .line 122
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Crop;->Destroy()V

    .line 123
    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    .line 125
    :cond_83
    return-void
.end method

.method public change_step(I)V
    .registers 4
    .parameter "step"

    .prologue
    const/4 v1, 0x0

    .line 844
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mAction:I

    packed-switch v0, :pswitch_data_20

    .line 867
    :goto_6
    return-void

    .line 847
    :pswitch_7
    invoke-virtual {p0, v1, p1}, Lcom/sec/android/mimage/photoretouching/EffectController;->control_brightness(II)Z

    goto :goto_6

    .line 850
    :pswitch_b
    invoke-virtual {p0, v1, p1}, Lcom/sec/android/mimage/photoretouching/EffectController;->control_contrast(II)Z

    goto :goto_6

    .line 853
    :pswitch_f
    invoke-virtual {p0, v1, p1}, Lcom/sec/android/mimage/photoretouching/EffectController;->control_saturation(II)Z

    goto :goto_6

    .line 856
    :pswitch_13
    invoke-virtual {p0, v1, v1, p1}, Lcom/sec/android/mimage/photoretouching/EffectController;->blur(III)Z

    goto :goto_6

    .line 859
    :pswitch_17
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, p1}, Lcom/sec/android/mimage/photoretouching/EffectController;->blur(III)Z

    goto :goto_6

    .line 862
    :pswitch_1c
    invoke-virtual {p0, v1, p1}, Lcom/sec/android/mimage/photoretouching/EffectController;->gray(II)Z

    goto :goto_6

    .line 844
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_f
        :pswitch_b
        :pswitch_7
        :pswitch_1c
        :pswitch_17
        :pswitch_13
    .end packed-switch
.end method

.method public check()Z
    .registers 2

    .prologue
    .line 873
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    if-nez v0, :cond_a

    .line 874
    :cond_8
    const/4 v0, 0x0

    .line 875
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public clear()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    .line 44
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    .line 45
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    .line 47
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    if-eqz v0, :cond_11

    .line 48
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->clear()V

    .line 49
    :cond_11
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    .line 51
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    if-eqz v0, :cond_1c

    .line 52
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestoryResource()V

    .line 53
    :cond_1c
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    .line 55
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    if-eqz v0, :cond_27

    .line 56
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Warping;->Destroy()V

    .line 57
    :cond_27
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    .line 59
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    .line 60
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mAction:I

    .line 61
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mHandler:Landroid/os/Handler;

    .line 62
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->isWorking:Z

    if-eqz v0, :cond_36

    .line 64
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/EffectController;->stayWhileStopWorking()Z

    .line 66
    :cond_36
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->isWorking:Z

    .line 68
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/Effect;->native_destroyblur()V

    .line 70
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->rotSBuff:[I

    .line 71
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->orgSBuff:[I

    .line 73
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    if-eqz v0, :cond_4a

    .line 75
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Crop;->Destroy()V

    .line 76
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    .line 78
    :cond_4a
    return-void
.end method

.method public control_brightness(II)Z
    .registers 18
    .parameter "type"
    .parameter "step"

    .prologue
    .line 955
    packed-switch p1, :pswitch_data_d2

    .line 978
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 957
    :pswitch_5
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 958
    .local v6, objROI:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 960
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getBuff()[B

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v4

    move/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/Effect;->native_brightness([I[B[IIIILandroid/graphics/Rect;)V

    goto :goto_3

    .line 963
    .end local v6           #objROI:Landroid/graphics/Rect;
    :pswitch_31
    sput p2, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    .line 965
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 966
    .restart local v6       #objROI:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 967
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 968
    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 969
    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 970
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 972
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getSBuff(Z)[B

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v4

    move/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/Effect;->native_brightness([I[B[IIIILandroid/graphics/Rect;)V

    .line 973
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v8

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v10

    .line 974
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v0

    iget v11, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v0

    iget v12, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v13

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v14

    .line 973
    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 975
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 955
    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_31
        :pswitch_5
    .end packed-switch
.end method

.method public control_contrast(II)Z
    .registers 18
    .parameter "type"
    .parameter "step"

    .prologue
    .line 983
    packed-switch p1, :pswitch_data_d2

    .line 1005
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 985
    :pswitch_5
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 986
    .local v6, objROI:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 988
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getBuff()[B

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v4

    move/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/Effect;->native_contrast([I[B[IIIILandroid/graphics/Rect;)V

    goto :goto_3

    .line 991
    .end local v6           #objROI:Landroid/graphics/Rect;
    :pswitch_31
    sput p2, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    .line 992
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 993
    .restart local v6       #objROI:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 994
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 995
    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 996
    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 997
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 999
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getSBuff(Z)[B

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v4

    move/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/Effect;->native_contrast([I[B[IIIILandroid/graphics/Rect;)V

    .line 1000
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v8

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v10

    .line 1001
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v0

    iget v11, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v0

    iget v12, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v13

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v14

    .line 1000
    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1002
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 983
    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_31
        :pswitch_5
    .end packed-switch
.end method

.method public control_saturation(II)Z
    .registers 18
    .parameter "type"
    .parameter "step"

    .prologue
    .line 1011
    packed-switch p1, :pswitch_data_d2

    .line 1031
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 1013
    :pswitch_5
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1014
    .local v6, objROI:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 1015
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getBuff()[B

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v4

    move/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/Effect;->native_saturation([I[B[IIIILandroid/graphics/Rect;)V

    goto :goto_3

    .line 1018
    .end local v6           #objROI:Landroid/graphics/Rect;
    :pswitch_31
    sput p2, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    .line 1019
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1020
    .restart local v6       #objROI:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 1021
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 1022
    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1023
    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 1024
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1025
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getSBuff(Z)[B

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v4

    move/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/Effect;->native_saturation([I[B[IIIILandroid/graphics/Rect;)V

    .line 1026
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v8

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v10

    .line 1027
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v0

    iget v11, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v0

    iget v12, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v13

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v14

    .line 1026
    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1028
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 1011
    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_31
        :pswitch_5
    .end packed-switch
.end method

.method getResizeBuff([I[IIIII)V
    .registers 14
    .parameter "in"
    .parameter "out"
    .parameter "in_width"
    .parameter "in_height"
    .parameter "out_width"
    .parameter "out_height"

    .prologue
    .line 1642
    int-to-float v5, p3

    int-to-float v6, p5

    div-float v2, v5, v6

    .line 1644
    .local v2, scale:F
    const/4 v1, 0x0

    .local v1, j:I
    :goto_5
    if-lt v1, p6, :cond_8

    .line 1658
    return-void

    .line 1646
    :cond_8
    int-to-float v5, v1

    mul-float/2addr v5, v2

    float-to-int v4, v5

    .line 1648
    .local v4, ypos:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-lt v0, p5, :cond_11

    .line 1644
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1650
    :cond_11
    int-to-float v5, v0

    mul-float/2addr v5, v2

    float-to-int v3, v5

    .line 1652
    .local v3, xpos:I
    if-ltz v3, :cond_26

    if-ge v3, p3, :cond_26

    if-ltz v4, :cond_26

    if-ge v4, p4, :cond_26

    .line 1654
    mul-int v5, v1, p5

    add-int/2addr v5, v0

    mul-int v6, v4, p3

    add-int/2addr v6, v3

    aget v6, p1, v6

    aput v6, p2, v5

    .line 1648
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public getStep()I
    .registers 2

    .prologue
    .line 1661
    sget v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    return v0
.end method

.method public gray(II)Z
    .registers 17
    .parameter "type"
    .parameter "step"

    .prologue
    .line 881
    packed-switch p1, :pswitch_data_da

    .line 908
    :goto_3
    const/4 v0, 0x1

    :goto_4
    return v0

    .line 884
    :pswitch_5
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 885
    .local v5, objROI:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 886
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getBuff()[B

    move-result-object v4

    move/from16 v6, p2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/Effect;->argb2gray([I[III[BLandroid/graphics/Rect;I)V

    goto :goto_3

    .line 889
    .end local v5           #objROI:Landroid/graphics/Rect;
    :pswitch_31
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/EffectController;->check()Z

    move-result v0

    if-nez v0, :cond_39

    .line 890
    const/4 v0, 0x0

    goto :goto_4

    .line 892
    :cond_39
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 893
    .restart local v5       #objROI:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 894
    iget v0, v5, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 895
    iget v0, v5, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v5, Landroid/graphics/Rect;->right:I

    .line 896
    iget v0, v5, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 897
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 899
    sput p2, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    .line 900
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getSBuff(Z)[B

    move-result-object v4

    sget v6, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    invoke-static/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/Effect;->argb2gray([I[III[BLandroid/graphics/Rect;I)V

    .line 901
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v7

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v9

    .line 902
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v0

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v0

    iget v11, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v12

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v13

    .line 901
    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 904
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 881
    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_31
        :pswitch_5
    .end packed-switch
.end method

.method public isWorking()Z
    .registers 2

    .prologue
    .line 1378
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->isWorking:Z

    return v0
.end method

.method public restart(Z)V
    .registers 26
    .parameter "isChanged"

    .prologue
    .line 564
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 566
    .local v6, bdry:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mAction:I

    packed-switch v2, :pswitch_data_944

    .line 840
    .end local v6           #bdry:Landroid/graphics/Rect;
    :cond_c
    :goto_c
    const/4 v6, 0x0

    .line 841
    .restart local v6       #bdry:Landroid/graphics/Rect;
    return-void

    .line 568
    :pswitch_e
    const/4 v2, 0x0

    sget v3, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/EffectController;->control_saturation(II)Z

    goto :goto_c

    .line 571
    :pswitch_17
    const/4 v2, 0x0

    sget v3, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/EffectController;->control_contrast(II)Z

    goto :goto_c

    .line 574
    :pswitch_20
    const/4 v2, 0x0

    sget v3, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/EffectController;->control_brightness(II)Z

    goto :goto_c

    .line 577
    :pswitch_29
    const/4 v2, 0x0

    sget v3, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/EffectController;->gray(II)Z

    goto :goto_c

    .line 580
    :pswitch_32
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/Effect;->native_destroyblur()V

    .line 582
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 584
    iget v2, v6, Landroid/graphics/Rect;->left:I

    iget v3, v6, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_44

    iget v2, v6, Landroid/graphics/Rect;->top:I

    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_73

    .line 586
    :cond_44
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getSBuff(Z)[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v5

    const/4 v7, 0x2

    invoke-static {v2, v3, v4, v5, v7}, Lcom/sec/android/mimage/photoretouching/Effect;->native_initblur([I[BIII)V

    .line 593
    :goto_69
    const/4 v2, 0x0

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/EffectController;->blur(III)Z

    goto :goto_c

    .line 590
    :cond_73
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getSBuff(Z)[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v5

    const/4 v7, 0x0

    invoke-static {v2, v3, v4, v5, v7}, Lcom/sec/android/mimage/photoretouching/Effect;->native_initblur([I[BIII)V

    goto :goto_69

    .line 596
    :pswitch_99
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/Effect;->native_destroyblur()V

    .line 598
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 600
    iget v2, v6, Landroid/graphics/Rect;->left:I

    iget v3, v6, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_ab

    iget v2, v6, Landroid/graphics/Rect;->top:I

    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_db

    .line 602
    :cond_ab
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getSBuff(Z)[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v5

    const/4 v7, 0x2

    invoke-static {v2, v3, v4, v5, v7}, Lcom/sec/android/mimage/photoretouching/Effect;->native_initblur([I[BIII)V

    .line 609
    :goto_d0
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/EffectController;->blur(III)Z

    goto/16 :goto_c

    .line 606
    :cond_db
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getSBuff(Z)[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v5

    const/4 v7, 0x0

    invoke-static {v2, v3, v4, v5, v7}, Lcom/sec/android/mimage/photoretouching/Effect;->native_initblur([I[BIII)V

    goto :goto_d0

    .line 615
    :pswitch_101
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 616
    iget v2, v6, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->left:I

    .line 617
    iget v2, v6, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->right:I

    .line 618
    iget v2, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->top:I

    .line 619
    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->init(IILandroid/graphics/Rect;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getSBuff(Z)[B

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v6

    .end local v6           #bdry:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v7

    move/from16 v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->Reapply([I[B[IIIZ)V

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v5

    .line 624
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v7

    iget v6, v7, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v9

    .line 623
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setDrawArrow(FFI)V

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate()V

    goto/16 :goto_c

    .line 631
    .restart local v6       #bdry:Landroid/graphics/Rect;
    :pswitch_1e0
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 632
    iget v2, v6, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->left:I

    .line 633
    iget v2, v6, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->right:I

    .line 634
    iget v2, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->top:I

    .line 635
    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getSBuff(Z)[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->init_speedline([BIILandroid/graphics/Rect;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getSBuff(Z)[B

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v12

    move/from16 v13, p1

    invoke-virtual/range {v7 .. v13}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->Reapply([I[B[IIIZ)V

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v10

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v11, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v12, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v14

    .line 639
    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setDrawArrow(FFI)V

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate()V

    goto/16 :goto_c

    .line 647
    :pswitch_2c8
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 648
    .local v17, dstR3:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 650
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 652
    iget v2, v6, Landroid/graphics/Rect;->left:I

    iget v3, v6, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_c

    .line 654
    iget v2, v6, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->left:I

    .line 655
    iget v2, v6, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->right:I

    .line 656
    iget v2, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->top:I

    .line 657
    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v2, v6, v3, v4}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Init(Landroid/graphics/Rect;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;)V

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_4cb

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgCopyTo_port:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImg:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-static {v2, v3, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 668
    :goto_35a
    if-eqz p1, :cond_4ef

    .line 669
    const/4 v2, 0x2

    new-array v0, v2, [F

    move-object/from16 v21, v0

    .line 670
    .local v21, pts:[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->changePtByOrientation(FF)[F

    move-result-object v21

    .line 671
    const/4 v2, 0x0

    aget v2, v21, v2

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->left:I

    .line 672
    const/4 v2, 0x1

    aget v2, v21, v2

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->top:I

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->changePtByOrientation(FF)[F

    move-result-object v21

    .line 674
    const/4 v2, 0x0

    aget v2, v21, v2

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->right:I

    .line 675
    const/4 v2, 0x1

    aget v2, v21, v2

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    .line 680
    .end local v21           #pts:[F
    :goto_39d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    iget v3, v6, Landroid/graphics/Rect;->left:I

    iget v4, v6, Landroid/graphics/Rect;->right:I

    iget v5, v6, Landroid/graphics/Rect;->top:I

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->SetDestROI(IIII)V

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DrawPreview([ILcom/sec/android/mimage/photoretouching/common/ImageInfo;)V

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v8

    .line 683
    const/4 v9, 0x0

    .line 684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v10

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v11, v2, Landroid/graphics/Rect;->left:I

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v12, v2, Landroid/graphics/Rect;->top:I

    .line 687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v13

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v14

    .line 682
    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 690
    new-instance v23, Landroid/graphics/Rect;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Rect;-><init>()V

    .line 691
    .local v23, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    move-object/from16 v0, v23

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    move-object/from16 v0, v23

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    move-object/from16 v0, v23

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    move-object/from16 v0, v23

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 696
    new-instance v20, Landroid/graphics/Point;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Point;-><init>()V

    .line 697
    .local v20, pt:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetCenterPt()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetCenterPt()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    const/4 v3, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1, v3}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setDrawBdry(Landroid/graphics/Rect;Landroid/graphics/Point;I)V

    .line 700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetAngle()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setAngle(I)V

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetObjectBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setObjectBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_c

    .line 665
    .end local v20           #pt:Landroid/graphics/Point;
    .end local v23           #rect:Landroid/graphics/Rect;
    :cond_4cb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImgCopyTo_land:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/CopyPaste;->BackImg:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-static {v2, v3, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_35a

    .line 677
    :cond_4ef
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_39d

    .line 705
    .end local v17           #dstR3:Landroid/graphics/Rect;
    :pswitch_4f6
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 706
    .local v16, dstR2:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 708
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 710
    iget v2, v6, Landroid/graphics/Rect;->left:I

    iget v3, v6, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_c

    .line 712
    iget v2, v6, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->left:I

    .line 713
    iget v2, v6, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->right:I

    .line 714
    iget v2, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->top:I

    .line 715
    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    .line 717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v2, v6, v3, v4}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->Init(Landroid/graphics/Rect;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;)V

    .line 719
    if-eqz p1, :cond_6ba

    .line 720
    const/4 v2, 0x2

    new-array v0, v2, [F

    move-object/from16 v21, v0

    .line 721
    .restart local v21       #pts:[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->changePtByOrientation(FF)[F

    move-result-object v21

    .line 722
    const/4 v2, 0x0

    aget v2, v21, v2

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->left:I

    .line 723
    const/4 v2, 0x1

    aget v2, v21, v2

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->top:I

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->changePtByOrientation(FF)[F

    move-result-object v21

    .line 725
    const/4 v2, 0x0

    aget v2, v21, v2

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->right:I

    .line 726
    const/4 v2, 0x1

    aget v2, v21, v2

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    .line 731
    .end local v21           #pts:[F
    :goto_59f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    iget v3, v6, Landroid/graphics/Rect;->left:I

    iget v4, v6, Landroid/graphics/Rect;->right:I

    iget v5, v6, Landroid/graphics/Rect;->top:I

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->SetDestROI(IIII)V

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v8

    .line 734
    const/4 v9, 0x0

    .line 735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v10

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v11, v2, Landroid/graphics/Rect;->left:I

    .line 737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v12, v2, Landroid/graphics/Rect;->top:I

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v13

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v14

    .line 733
    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 741
    new-instance v23, Landroid/graphics/Rect;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Rect;-><init>()V

    .line 742
    .restart local v23       #rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    move-object/from16 v0, v23

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    move-object/from16 v0, v23

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    move-object/from16 v0, v23

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    move-object/from16 v0, v23

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 747
    new-instance v20, Landroid/graphics/Point;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Point;-><init>()V

    .line 748
    .restart local v20       #pt:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetCenterPt()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetCenterPt()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    const/4 v3, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1, v3}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setDrawBdry(Landroid/graphics/Rect;Landroid/graphics/Point;I)V

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetAngle()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setAngle(I)V

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetObjectBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setObjectBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_c

    .line 728
    .end local v20           #pt:Landroid/graphics/Point;
    .end local v23           #rect:Landroid/graphics/Rect;
    :cond_6ba
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_59f

    .line 756
    .end local v16           #dstR2:Landroid/graphics/Rect;
    :pswitch_6c1
    const/16 v19, 0x0

    .line 757
    .local v19, pad_v:I
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 758
    .local v15, dstR:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Warping;->getDestRoi()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 759
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 761
    iget v2, v6, Landroid/graphics/Rect;->right:I

    iget v3, v6, Landroid/graphics/Rect;->left:I

    sub-int v18, v2, v3

    .line 762
    .local v18, pad_h:I
    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    iget v3, v6, Landroid/graphics/Rect;->top:I

    sub-int v19, v2, v3

    .line 763
    shr-int/lit8 v2, v18, 0x3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v18, v0

    .line 764
    shr-int/lit8 v2, v19, 0x3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v19, v0

    .line 765
    iget v2, v6, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v2, v2, v18

    iput v2, v6, Landroid/graphics/Rect;->left:I

    .line 766
    iget v2, v6, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int v2, v2, v18

    iput v2, v6, Landroid/graphics/Rect;->right:I

    .line 767
    iget v2, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v2, v2, v19

    iput v2, v6, Landroid/graphics/Rect;->top:I

    .line 768
    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int v2, v2, v19

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    .line 770
    const/4 v2, 0x0

    iget v3, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v6, Landroid/graphics/Rect;->left:I

    .line 771
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v3, v6, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v6, Landroid/graphics/Rect;->right:I

    .line 772
    const/4 v2, 0x0

    iget v3, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v6, Landroid/graphics/Rect;->top:I

    .line 773
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    .line 775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v2, v6, v3, v4}, Lcom/sec/android/mimage/photoretouching/Warping;->Init(Landroid/graphics/Rect;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/Warping;->setPad(II)V

    .line 778
    if-eqz p1, :cond_892

    .line 779
    const/4 v2, 0x2

    new-array v0, v2, [F

    move-object/from16 v21, v0

    .line 780
    .restart local v21       #pts:[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    iget v3, v15, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v15, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->changePtByOrientation(FF)[F

    move-result-object v21

    .line 781
    const/4 v2, 0x0

    aget v2, v21, v2

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->left:I

    .line 782
    const/4 v2, 0x1

    aget v2, v21, v2

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->top:I

    .line 783
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    iget v3, v15, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->changePtByOrientation(FF)[F

    move-result-object v21

    .line 784
    const/4 v2, 0x0

    aget v2, v21, v2

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->right:I

    .line 785
    const/4 v2, 0x1

    aget v2, v21, v2

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    .line 790
    .end local v21           #pts:[F
    :goto_7cf
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    invoke-virtual {v2, v6}, Lcom/sec/android/mimage/photoretouching/Warping;->setDestRoi(Landroid/graphics/Rect;)Z

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v7

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/sec/android/mimage/photoretouching/Warping;->restore_warp_region([I[III)V

    .line 794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v10

    .line 795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v11, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v12, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v14

    .line 794
    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 797
    iget v2, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v6, Landroid/graphics/Rect;->left:I

    .line 798
    iget v2, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v6, Landroid/graphics/Rect;->right:I

    .line 799
    iget v2, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v6, Landroid/graphics/Rect;->top:I

    .line 800
    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    .line 802
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    const/4 v3, 0x0

    invoke-virtual {v2, v6, v3}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setWarpBdry(Landroid/graphics/Rect;I)V

    .line 803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_c

    .line 787
    :cond_892
    invoke-virtual {v6, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_7cf

    .line 807
    .end local v15           #dstR:Landroid/graphics/Rect;
    .end local v18           #pad_h:I
    .end local v19           #pad_v:I
    :pswitch_897
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->isStoped:Z

    .line 808
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->isWorking:Z

    .line 810
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/EffectController;->Eraser(I)Z

    goto/16 :goto_c

    .line 813
    :pswitch_8a9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->orgSBuff:[I

    .line 814
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getROTSWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getROTSHeight()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->rotSBuff:[I

    .line 817
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/EffectController;->Re_Rotate_Flip()Z

    goto/16 :goto_c

    .line 820
    :pswitch_8dc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Crop;->GetROI()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 822
    if-eqz p1, :cond_922

    .line 823
    const/4 v2, 0x2

    new-array v0, v2, [F

    move-object/from16 v22, v0

    .line 824
    .local v22, pts1:[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    iget v3, v6, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v6, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->changePtByOrientation(FF)[F

    move-result-object v22

    .line 825
    const/4 v2, 0x0

    aget v2, v22, v2

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->left:I

    .line 826
    const/4 v2, 0x1

    aget v2, v22, v2

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->top:I

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    iget v3, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->changePtByOrientation(FF)[F

    move-result-object v22

    .line 828
    const/4 v2, 0x0

    aget v2, v22, v2

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->right:I

    .line 829
    const/4 v2, 0x1

    aget v2, v22, v2

    float-to-int v2, v2

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    .line 832
    .end local v22           #pts1:[F
    :cond_922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2, v6, v3}, Lcom/sec/android/mimage/photoretouching/Crop;->Reset(Landroid/graphics/Rect;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;)V

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/Crop;->GetDrawROI(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setCropBdry(Landroid/graphics/Rect;I)V

    goto/16 :goto_c

    .line 566
    nop

    :pswitch_data_944
    .packed-switch 0x0
        :pswitch_e
        :pswitch_17
        :pswitch_20
        :pswitch_29
        :pswitch_32
        :pswitch_99
        :pswitch_101
        :pswitch_101
        :pswitch_101
        :pswitch_1e0
        :pswitch_2c8
        :pswitch_4f6
        :pswitch_6c1
        :pswitch_897
        :pswitch_8a9
        :pswitch_8dc
    .end packed-switch
.end method

.method public run(I)V
    .registers 30
    .parameter "applytype"

    .prologue
    .line 218
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mAction:I

    packed-switch v2, :pswitch_data_a2a

    .line 561
    :cond_7
    :goto_7
    return-void

    .line 223
    :pswitch_8
    packed-switch p1, :pswitch_data_a4e

    goto :goto_7

    .line 232
    :pswitch_c
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 233
    .local v11, bdry:Landroid/graphics/Rect;
    invoke-static {v11}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 234
    iget v2, v11, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 235
    iget v2, v11, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 236
    iget v2, v11, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 237
    iget v2, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2, v3, v4, v11, v5}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->init(IILandroid/graphics/Rect;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;)V

    .line 241
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mAction:I

    packed-switch v2, :pswitch_data_a56

    .line 254
    :goto_72
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v5

    .line 255
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v7

    iget v6, v7, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v9

    .line 254
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setDrawArrow(FFI)V

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate()V

    goto/16 :goto_7

    .line 226
    .end local v11           #bdry:Landroid/graphics/Rect;
    :pswitch_c5
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 227
    .local v6, bdry_org:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->init(IILandroid/graphics/Rect;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getBuff()[B

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v6

    .end local v6           #bdry_org:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->RunforSave([I[B[IIIF)V

    goto/16 :goto_7

    .line 243
    .restart local v11       #bdry:Landroid/graphics/Rect;
    :pswitch_121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    sget-object v3, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;->BG_LINEAR_PAN:Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->setMode(Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getSBuff(Z)[B

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->FirstRun([I[B[III)V

    goto/16 :goto_72

    .line 247
    :pswitch_15c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    sget-object v3, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;->BG_RADIAL_PAN:Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->setMode(Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getSBuff(Z)[B

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->RunforSave([I[B[IIIF)V

    goto/16 :goto_72

    .line 251
    :pswitch_19f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    sget-object v3, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;->FG_GHOST:Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->setMode(Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;)V

    goto/16 :goto_72

    .line 264
    .end local v11           #bdry:Landroid/graphics/Rect;
    :pswitch_1aa
    packed-switch p1, :pswitch_data_a60

    goto/16 :goto_7

    .line 273
    :pswitch_1af
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 274
    .restart local v11       #bdry:Landroid/graphics/Rect;
    invoke-static {v11}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 275
    iget v2, v11, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 276
    iget v2, v11, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 277
    iget v2, v11, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 278
    iget v2, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 280
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getSBuff(Z)[B

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual/range {v7 .. v12}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->init_speedline([BIILandroid/graphics/Rect;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    sget-object v3, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;->FG_SPEED_LINE:Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->setMode(Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v15

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v0, v2, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v19

    .line 284
    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setDrawArrow(FFI)V

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate()V

    goto/16 :goto_7

    .line 267
    .end local v11           #bdry:Landroid/graphics/Rect;
    :pswitch_277
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 268
    .restart local v6       #bdry_org:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getBuff()[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->init_speedline([BIILandroid/graphics/Rect;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getBuff()[B

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v13

    invoke-virtual/range {v7 .. v13}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->RunforSave([I[B[IIIF)V

    goto/16 :goto_7

    .line 295
    .end local v6           #bdry_org:Landroid/graphics/Rect;
    :pswitch_2db
    packed-switch p1, :pswitch_data_a68

    goto/16 :goto_7

    .line 300
    :pswitch_2e0
    const/4 v2, 0x4

    sput v2, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    .line 301
    const/4 v2, 0x0

    sget v3, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/EffectController;->blur(III)Z

    goto/16 :goto_7

    .line 297
    :pswitch_2ef
    const/4 v2, 0x0

    sget v3, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/EffectController;->blur(III)Z

    goto/16 :goto_7

    .line 306
    :pswitch_2fb
    packed-switch p1, :pswitch_data_a70

    goto/16 :goto_7

    .line 311
    :pswitch_300
    const/4 v2, 0x4

    sput v2, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    .line 312
    const/4 v2, 0x1

    sget v3, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/EffectController;->blur(III)Z

    goto/16 :goto_7

    .line 308
    :pswitch_30f
    const/4 v2, 0x1

    sget v3, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/EffectController;->blur(III)Z

    goto/16 :goto_7

    .line 317
    :pswitch_31b
    if-nez p1, :cond_320

    .line 318
    const/4 v2, 0x4

    sput v2, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    .line 319
    :cond_320
    sget v2, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/EffectController;->gray(II)Z

    goto/16 :goto_7

    .line 322
    :pswitch_32b
    packed-switch p1, :pswitch_data_a78

    goto/16 :goto_7

    .line 327
    :pswitch_330
    const/4 v2, 0x4

    sput v2, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    goto/16 :goto_7

    .line 324
    :pswitch_335
    sget v2, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/EffectController;->control_contrast(II)Z

    goto/16 :goto_7

    .line 332
    :pswitch_340
    packed-switch p1, :pswitch_data_a80

    goto/16 :goto_7

    .line 337
    :pswitch_345
    const/4 v2, 0x4

    sput v2, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    goto/16 :goto_7

    .line 334
    :pswitch_34a
    sget v2, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/EffectController;->control_saturation(II)Z

    goto/16 :goto_7

    .line 342
    :pswitch_355
    packed-switch p1, :pswitch_data_a88

    goto/16 :goto_7

    .line 347
    :pswitch_35a
    const/4 v2, 0x4

    sput v2, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    goto/16 :goto_7

    .line 344
    :pswitch_35f
    sget v2, Lcom/sec/android/mimage/photoretouching/EffectController;->mStep:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/EffectController;->control_brightness(II)Z

    goto/16 :goto_7

    .line 352
    :pswitch_36a
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/mimage/photoretouching/EffectController;->Eraser(I)Z

    goto/16 :goto_7

    .line 355
    :pswitch_36f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/EffectController;->check()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 358
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_413

    .line 359
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 360
    .local v20, bdry1:Landroid/graphics/Rect;
    const/16 v24, 0x0

    .line 362
    .local v24, pad_v:I
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Warping;->getPadHor()I

    move-result v23

    .line 364
    .local v23, pad_h:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Warping;->getPadVer()I

    move-result v24

    .line 366
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move/from16 v0, v23

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 367
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    move/from16 v0, v23

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 368
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move/from16 v0, v24

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 369
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move/from16 v0, v24

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v5

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/sec/android/mimage/photoretouching/Warping;->warp_region_save_partial([IIILandroid/graphics/Rect;)V

    goto/16 :goto_7

    .line 374
    .end local v20           #bdry1:Landroid/graphics/Rect;
    .end local v23           #pad_h:I
    .end local v24           #pad_v:I
    :cond_413
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 376
    .restart local v20       #bdry1:Landroid/graphics/Rect;
    const/16 v24, 0x0

    .line 378
    .restart local v24       #pad_v:I
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 380
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v23, v2, v3

    .line 381
    .restart local v23       #pad_h:I
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v24, v2, v3

    .line 382
    shr-int/lit8 v2, v23, 0x3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v23, v0

    .line 383
    shr-int/lit8 v2, v24, 0x3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v24, v0

    .line 384
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v2, v2, v23

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 385
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int v2, v2, v23

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 386
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v2, v2, v24

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 387
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int v2, v2, v24

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 389
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 391
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 394
    new-instance v2, Lcom/sec/android/mimage/photoretouching/Warping;

    invoke-direct {v2}, Lcom/sec/android/mimage/photoretouching/Warping;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3, v4}, Lcom/sec/android/mimage/photoretouching/Warping;->Init(Landroid/graphics/Rect;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/Warping;->setPad(II)V

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v13

    const/4 v14, 0x0

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v15

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v0, v2, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v19

    .line 398
    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 403
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 404
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 405
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 406
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setWarpBdry(Landroid/graphics/Rect;I)V

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_7

    .line 415
    .end local v20           #bdry1:Landroid/graphics/Rect;
    .end local v23           #pad_h:I
    .end local v24           #pad_v:I
    :pswitch_5b9
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_623

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    if-eqz v2, :cond_7

    .line 419
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 420
    .local v22, objROI:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 422
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_7

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0, v4}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->run_blending_org(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Landroid/graphics/Rect;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestoryResource()V

    .line 427
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getObjroi()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->set_objectROI(Landroid/graphics/Rect;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getBuff()[B

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getObjroi()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->reinit_objectsel([BIILandroid/graphics/Rect;)V

    goto/16 :goto_7

    .line 435
    .end local v22           #objROI:Landroid/graphics/Rect;
    :cond_623
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 436
    .restart local v22       #objROI:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 438
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_7

    .line 440
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 441
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 442
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 443
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 445
    new-instance v2, Lcom/sec/android/mimage/photoretouching/CopyPaste;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/CopyPaste;-><init>(Landroid/graphics/Rect;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DrawPreview([ILcom/sec/android/mimage/photoretouching/common/ImageInfo;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v13

    .line 449
    const/4 v14, 0x0

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v15

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v0, v2, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v18

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v19

    .line 448
    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 456
    new-instance v26, Landroid/graphics/Rect;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Rect;-><init>()V

    .line 457
    .local v26, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    move-object/from16 v0, v26

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    move-object/from16 v0, v26

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    move-object/from16 v0, v26

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    move-object/from16 v0, v26

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 462
    new-instance v25, Landroid/graphics/Point;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Point;-><init>()V

    .line 463
    .local v25, pt:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetCenterPt()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v3

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetCenterPt()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v3

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1, v3}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setDrawBdry(Landroid/graphics/Rect;Landroid/graphics/Point;I)V

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetAngle()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setAngle(I)V

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetObjectBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setObjectBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_7

    .line 474
    .end local v22           #objROI:Landroid/graphics/Rect;
    .end local v25           #pt:Landroid/graphics/Point;
    .end local v26           #rect:Landroid/graphics/Rect;
    :pswitch_7bb
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_825

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    if-eqz v2, :cond_7

    .line 478
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 479
    .restart local v22       #objROI:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 481
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_7

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0, v4}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->run_blending_org(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Landroid/graphics/Rect;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->DestoryResource()V

    .line 486
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getObjroi()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->set_objectROI(Landroid/graphics/Rect;)V

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getBuff()[B

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getObjroi()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->reinit_objectsel([BIILandroid/graphics/Rect;)V

    goto/16 :goto_7

    .line 493
    .end local v22           #objROI:Landroid/graphics/Rect;
    :cond_825
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 494
    .restart local v22       #objROI:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;->get_objectROI(Landroid/graphics/Rect;)V

    .line 496
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_7

    .line 498
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 499
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 500
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 501
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 503
    new-instance v2, Lcom/sec/android/mimage/photoretouching/CopyPaste;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/CopyPaste;-><init>(Landroid/graphics/Rect;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    .line 505
    new-instance v26, Landroid/graphics/Rect;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Rect;-><init>()V

    .line 506
    .restart local v26       #rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    move-object/from16 v0, v26

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    move-object/from16 v0, v26

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    move-object/from16 v0, v26

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    move-object/from16 v0, v26

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 511
    new-instance v25, Landroid/graphics/Point;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Point;-><init>()V

    .line 512
    .restart local v25       #pt:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetCenterPt()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v3

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetCenterPt()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v3

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1, v3}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setDrawBdry(Landroid/graphics/Rect;Landroid/graphics/Point;I)V

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetAngle()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setAngle(I)V

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetObjectBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setObjectBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_7

    .line 522
    .end local v22           #objROI:Landroid/graphics/Rect;
    .end local v25           #pt:Landroid/graphics/Point;
    .end local v26           #rect:Landroid/graphics/Rect;
    :pswitch_966
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mHFlip:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mVFlip:I

    move/from16 v17, v0

    invoke-static/range {v12 .. v17}, Lcom/sec/android/mimage/photoretouching/Effect;->native_rotate_flip([IIIIII)V

    .line 525
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9a4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mRotate:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 527
    :cond_9a4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v27

    .line 528
    .local v27, width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v21

    .line 530
    .local v21, height:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setImageWidthHeight(II)V

    goto/16 :goto_7

    .line 536
    .end local v21           #height:I
    .end local v27           #width:I
    :pswitch_9c1
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_9f4

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    if-eqz v2, :cond_7

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/Crop;->ExecuteCROP(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Crop;->GetROIWidth()I

    move-result v27

    .line 542
    .restart local v27       #width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Crop;->GetROIHeight()I

    move-result v21

    .line 544
    .restart local v21       #height:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setImageWidthHeight(II)V

    goto/16 :goto_7

    .line 549
    .end local v21           #height:I
    .end local v27           #width:I
    :cond_9f4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    if-eqz v2, :cond_a06

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Crop;->Destroy()V

    .line 552
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    .line 555
    :cond_a06
    new-instance v2, Lcom/sec/android/mimage/photoretouching/Crop;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-direct {v2, v3}, Lcom/sec/android/mimage/photoretouching/Crop;-><init>(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/Crop;->GetDrawROI(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setCropBdry(Landroid/graphics/Rect;I)V

    goto/16 :goto_7

    .line 218
    nop

    :pswitch_data_a2a
    .packed-switch 0x0
        :pswitch_340
        :pswitch_32b
        :pswitch_355
        :pswitch_31b
        :pswitch_2fb
        :pswitch_2db
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_1aa
        :pswitch_7bb
        :pswitch_5b9
        :pswitch_36f
        :pswitch_36a
        :pswitch_966
        :pswitch_9c1
    .end packed-switch

    .line 223
    :pswitch_data_a4e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c5
    .end packed-switch

    .line 241
    :pswitch_data_a56
    .packed-switch 0x6
        :pswitch_121
        :pswitch_15c
        :pswitch_19f
    .end packed-switch

    .line 264
    :pswitch_data_a60
    .packed-switch 0x0
        :pswitch_1af
        :pswitch_277
    .end packed-switch

    .line 295
    :pswitch_data_a68
    .packed-switch 0x0
        :pswitch_2e0
        :pswitch_2ef
    .end packed-switch

    .line 306
    :pswitch_data_a70
    .packed-switch 0x0
        :pswitch_300
        :pswitch_30f
    .end packed-switch

    .line 322
    :pswitch_data_a78
    .packed-switch 0x0
        :pswitch_330
        :pswitch_335
    .end packed-switch

    .line 332
    :pswitch_data_a80
    .packed-switch 0x0
        :pswitch_345
        :pswitch_34a
    .end packed-switch

    .line 342
    :pswitch_data_a88
    .packed-switch 0x0
        :pswitch_35a
        :pswitch_35f
    .end packed-switch
.end method

.method public run(II)V
    .registers 3
    .parameter "action"
    .parameter "applytype"

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/EffectController;->setAction(I)V

    .line 214
    invoke-virtual {p0, p2}, Lcom/sec/android/mimage/photoretouching/EffectController;->run(I)V

    .line 215
    return-void
.end method

.method public save()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v1

    .line 208
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v3

    .line 209
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v6

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v7

    move v4, v2

    move v5, v2

    .line 207
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 210
    return-void
.end method

.method public setAction(I)V
    .registers 2
    .parameter "action"

    .prologue
    .line 38
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mAction:I

    return-void
.end method

.method public setView(Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 869
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    return-void
.end method

.method public setWorkspace(Lcom/sec/android/mimage/photoretouching/WorkSpace;)V
    .registers 2
    .parameter "ws"

    .prologue
    .line 870
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWS:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    return-void
.end method

.method public touch_down(FF)Z
    .registers 19
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1038
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mAction:I

    packed-switch v2, :pswitch_data_310

    .line 1145
    :cond_7
    :goto_7
    :pswitch_7
    const/4 v2, 0x1

    return v2

    .line 1043
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->setStartPoint(FF)V

    .line 1044
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    const/4 v3, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1, v3}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setDrawArrow(FFI)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate()V

    goto :goto_7

    .line 1050
    :pswitch_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float p1, p1, v2

    .line 1051
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float p2, p2, v2

    .line 1053
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    if-eqz v2, :cond_7

    .line 1057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->InitMoveObject(FF)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    .line 1059
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_7

    .line 1061
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->StartMoveObject(FFLcom/sec/android/mimage/photoretouching/common/ImageInfo;[I)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v3

    .line 1063
    const/4 v4, 0x0

    .line 1064
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v5

    .line 1065
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 1066
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 1067
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v8

    .line 1068
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v9

    .line 1062
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1070
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 1071
    .local v14, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v14, Landroid/graphics/Rect;->left:I

    .line 1072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v14, Landroid/graphics/Rect;->right:I

    .line 1073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v14, Landroid/graphics/Rect;->top:I

    .line 1074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v14, Landroid/graphics/Rect;->bottom:I

    .line 1076
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .line 1077
    .local v13, pt:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetCenterPt()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v3

    iput v2, v13, Landroid/graphics/Point;->x:I

    .line 1078
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetCenterPt()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v3

    iput v2, v13, Landroid/graphics/Point;->y:I

    .line 1079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    invoke-virtual {v2, v14, v13, v3}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setDrawBdry(Landroid/graphics/Rect;Landroid/graphics/Point;I)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetAngle()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setAngle(I)V

    goto/16 :goto_7

    .line 1087
    .end local v13           #pt:Landroid/graphics/Point;
    .end local v14           #rect:Landroid/graphics/Rect;
    :pswitch_166
    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Warping;->getDestRoi()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1089
    .local v10, bdry1:Landroid/graphics/Rect;
    iget v2, v10, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 1090
    iget v2, v10, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 1091
    iget v2, v10, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 1092
    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    .line 1094
    const/16 v12, 0x28

    .line 1096
    .local v12, offset:I
    iget v2, v10, Landroid/graphics/Rect;->top:I

    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    shr-int/lit8 v15, v2, 0x1

    .line 1097
    .local v15, v_mid:I
    iget v2, v10, Landroid/graphics/Rect;->left:I

    iget v3, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    shr-int/lit8 v11, v2, 0x1

    .line 1099
    .local v11, h_mid:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    .line 1101
    move/from16 v0, p1

    float-to-int v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mInitX:I

    .line 1102
    move/from16 v0, p2

    float-to-int v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mInitY:I

    .line 1104
    iget v2, v10, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v12

    cmpg-float v2, v2, v3

    if-gez v2, :cond_24e

    int-to-float v2, v15

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v12

    cmpg-float v2, v2, v3

    if-gez v2, :cond_24e

    .line 1105
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    .line 1117
    :cond_1f1
    :goto_1f1
    new-instance v10, Landroid/graphics/Rect;

    .end local v10           #bdry1:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Warping;->getDestRoi()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1119
    .restart local v10       #bdry1:Landroid/graphics/Rect;
    iget v2, v10, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 1120
    iget v2, v10, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 1121
    iget v2, v10, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 1122
    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    invoke-virtual {v2, v10, v3}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setWarpBdry(Landroid/graphics/Rect;I)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate()V

    goto/16 :goto_7

    .line 1107
    :cond_24e
    iget v2, v10, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v12

    cmpg-float v2, v2, v3

    if-gez v2, :cond_26e

    int-to-float v2, v15

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v12

    cmpg-float v2, v2, v3

    if-gez v2, :cond_26e

    .line 1108
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    goto :goto_1f1

    .line 1110
    :cond_26e
    int-to-float v2, v11

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v12

    cmpg-float v2, v2, v3

    if-gez v2, :cond_28f

    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v12

    cmpg-float v2, v2, v3

    if-gez v2, :cond_28f

    .line 1111
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    goto/16 :goto_1f1

    .line 1113
    :cond_28f
    int-to-float v2, v11

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v12

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1f1

    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v12

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1f1

    .line 1114
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    goto/16 :goto_1f1

    .line 1129
    .end local v10           #bdry1:Landroid/graphics/Rect;
    .end local v11           #h_mid:I
    .end local v12           #offset:I
    .end local v15           #v_mid:I
    :pswitch_2b0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float p1, p1, v2

    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float p2, p2, v2

    .line 1131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/Crop;->InitMoveObject(FF)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    .line 1133
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_7

    .line 1135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1, v3}, Lcom/sec/android/mimage/photoretouching/Crop;->StartMoveObject(FFLcom/sec/android/mimage/photoretouching/common/ImageInfo;)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/Crop;->GetDrawROI(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setCropBdry(Landroid/graphics/Rect;I)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate()V

    goto/16 :goto_7

    .line 1038
    :pswitch_data_310
    .packed-switch 0x6
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_28
        :pswitch_28
        :pswitch_166
        :pswitch_7
        :pswitch_7
        :pswitch_2b0
    .end packed-switch
.end method

.method public touch_move(FF)Z
    .registers 19
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1149
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mAction:I

    packed-switch v2, :pswitch_data_39e

    .line 1281
    :cond_7
    :goto_7
    :pswitch_7
    const/4 v2, 0x1

    return v2

    .line 1154
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    const/4 v3, 0x2

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1, v3}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setDrawArrow(FFI)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate()V

    .line 1157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMotion:Lcom/sec/android/mimage/photoretouching/MotionPhoto;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mMask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getSBuff(Z)[B

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v9

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->Run(FF[I[B[III)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v5

    .line 1159
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v9

    .line 1158
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_7

    .line 1167
    :pswitch_95
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1c7

    .line 1169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float p1, p1, v2

    .line 1170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float p2, p2, v2

    .line 1171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->StartMoveObject(FFLcom/sec/android/mimage/photoretouching/common/ImageInfo;[I)V

    .line 1173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v3

    .line 1175
    const/4 v4, 0x0

    .line 1176
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v5

    .line 1177
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 1178
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 1179
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v8

    .line 1180
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v9

    .line 1174
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1182
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 1183
    .local v14, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v14, Landroid/graphics/Rect;->left:I

    .line 1184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v14, Landroid/graphics/Rect;->right:I

    .line 1185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v14, Landroid/graphics/Rect;->top:I

    .line 1186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v14, Landroid/graphics/Rect;->bottom:I

    .line 1188
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .line 1189
    .local v13, pt:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetCenterPt()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v3

    iput v2, v13, Landroid/graphics/Point;->x:I

    .line 1190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetCenterPt()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v3

    iput v2, v13, Landroid/graphics/Point;->y:I

    .line 1191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    invoke-virtual {v2, v14, v13, v3}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setDrawBdry(Landroid/graphics/Rect;Landroid/graphics/Point;I)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetAngle()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setAngle(I)V

    .line 1195
    .end local v13           #pt:Landroid/graphics/Point;
    .end local v14           #rect:Landroid/graphics/Rect;
    :cond_1c7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate()V

    goto/16 :goto_7

    .line 1199
    :pswitch_1d0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    if-eqz v2, :cond_7

    .line 1202
    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Warping;->getDestRoi()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1204
    .local v10, bdry1:Landroid/graphics/Rect;
    const/4 v15, 0x0

    .line 1206
    .local v15, set_result:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2d5

    .line 1208
    move/from16 v0, p1

    float-to-int v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mInitX:I

    sub-int v11, v2, v3

    .line 1209
    .local v11, posx:I
    iget v2, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v11

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 1210
    iget v2, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v11

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 1212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    invoke-virtual {v2, v10, v3}, Lcom/sec/android/mimage/photoretouching/Warping;->setDestRoi(Landroid/graphics/Rect;I)Z

    move-result v15

    .line 1239
    .end local v11           #posx:I
    :cond_20a
    :goto_20a
    if-eqz v15, :cond_7

    .line 1240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/Warping;->warp_region([I[IIII)V

    .line 1241
    move/from16 v0, p1

    float-to-int v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mInitX:I

    .line 1242
    move/from16 v0, p2

    float-to-int v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mInitY:I

    .line 1244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v3

    .line 1245
    const/4 v4, 0x0

    .line 1246
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v5

    .line 1247
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 1248
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 1249
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v8

    .line 1250
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v9

    .line 1244
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1253
    iget v2, v10, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 1254
    iget v2, v10, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 1255
    iget v2, v10, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 1256
    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    .line 1258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    invoke-virtual {v2, v10, v3}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setWarpBdry(Landroid/graphics/Rect;I)V

    .line 1259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate()V

    goto/16 :goto_7

    .line 1214
    :cond_2d5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2fd

    .line 1216
    move/from16 v0, p1

    float-to-int v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mInitX:I

    sub-int v11, v2, v3

    .line 1217
    .restart local v11       #posx:I
    iget v2, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v11

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 1218
    iget v2, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v11

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 1220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    invoke-virtual {v2, v10, v3}, Lcom/sec/android/mimage/photoretouching/Warping;->setDestRoi(Landroid/graphics/Rect;I)Z

    move-result v15

    goto/16 :goto_20a

    .line 1222
    .end local v11           #posx:I
    :cond_2fd
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_325

    .line 1224
    move/from16 v0, p2

    float-to-int v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mInitY:I

    sub-int v12, v2, v3

    .line 1225
    .local v12, posy:I
    iget v2, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v12

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 1226
    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v12

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    .line 1228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    invoke-virtual {v2, v10, v3}, Lcom/sec/android/mimage/photoretouching/Warping;->setDestRoi(Landroid/graphics/Rect;I)Z

    move-result v15

    goto/16 :goto_20a

    .line 1230
    .end local v12           #posy:I
    :cond_325
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_20a

    .line 1232
    move/from16 v0, p2

    float-to-int v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mInitY:I

    sub-int v12, v2, v3

    .line 1233
    .restart local v12       #posy:I
    iget v2, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v12

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 1234
    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v12

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    invoke-virtual {v2, v10, v3}, Lcom/sec/android/mimage/photoretouching/Warping;->setDestRoi(Landroid/graphics/Rect;I)Z

    move-result v15

    goto/16 :goto_20a

    .line 1265
    .end local v10           #bdry1:Landroid/graphics/Rect;
    .end local v12           #posy:I
    .end local v15           #set_result:Z
    :pswitch_34d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_7

    .line 1267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float p1, p1, v2

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float p2, p2, v2

    .line 1270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1, v3}, Lcom/sec/android/mimage/photoretouching/Crop;->StartMoveObject(FFLcom/sec/android/mimage/photoretouching/common/ImageInfo;)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/Crop;->GetDrawROI(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setCropBdry(Landroid/graphics/Rect;I)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate()V

    goto/16 :goto_7

    .line 1149
    nop

    :pswitch_data_39e
    .packed-switch 0x6
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_95
        :pswitch_95
        :pswitch_1d0
        :pswitch_7
        :pswitch_7
        :pswitch_34d
    .end packed-switch
.end method

.method public touch_up(FF)Z
    .registers 16
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 1285
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mAction:I

    packed-switch v0, :pswitch_data_1d8

    .line 1375
    :cond_7
    :goto_7
    :pswitch_7
    return v12

    .line 1290
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setDrawArrow(FFI)V

    .line 1291
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate()V

    goto :goto_7

    .line 1298
    :pswitch_14
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    if-lt v0, v12, :cond_7

    .line 1300
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 1301
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 1302
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v3

    invoke-virtual {v0, p1, p2, v1, v3}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->EndMoveObject(FFLcom/sec/android/mimage/photoretouching/common/ImageInfo;[I)V

    .line 1304
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v1

    .line 1306
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    .line 1307
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 1308
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 1309
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v6

    .line 1310
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v7

    .line 1304
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1312
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 1313
    .local v11, rect:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, v11, Landroid/graphics/Rect;->left:I

    .line 1314
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, v11, Landroid/graphics/Rect;->right:I

    .line 1315
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, v11, Landroid/graphics/Rect;->top:I

    .line 1316
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetDestROI()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, v11, Landroid/graphics/Rect;->bottom:I

    .line 1318
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    .line 1320
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 1321
    .local v10, pt:Landroid/graphics/Point;
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetCenterPt()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v1

    iput v0, v10, Landroid/graphics/Point;->x:I

    .line 1322
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetCenterPt()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    iput v0, v10, Landroid/graphics/Point;->y:I

    .line 1323
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    invoke-virtual {v0, v11, v10, v1}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setDrawBdry(Landroid/graphics/Rect;Landroid/graphics/Point;I)V

    .line 1324
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCopyPaste:Lcom/sec/android/mimage/photoretouching/CopyPaste;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/CopyPaste;->GetAngle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setAngle(I)V

    .line 1325
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate()V

    goto/16 :goto_7

    .line 1330
    .end local v10           #pt:Landroid/graphics/Point;
    .end local v11           #rect:Landroid/graphics/Rect;
    :pswitch_101
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    if-lez v0, :cond_19e

    .line 1332
    new-instance v9, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Warping;->getDestRoi()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1334
    .local v9, bdry1:Landroid/graphics/Rect;
    iget v0, v9, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 1335
    iget v0, v9, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 1336
    iget v0, v9, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 1337
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 1339
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v0, v9, v2}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setWarpBdry(Landroid/graphics/Rect;I)V

    .line 1341
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mWarping:Lcom/sec/android/mimage/photoretouching/Warping;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v7

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/mimage/photoretouching/Warping;->warp_region([I[IIII)V

    .line 1343
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSOutBuff()[I

    move-result-object v1

    .line 1345
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    .line 1346
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 1347
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 1348
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v6

    .line 1349
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v7

    .line 1343
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1351
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate()V

    .line 1354
    .end local v9           #bdry1:Landroid/graphics/Rect;
    :cond_19e
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    goto/16 :goto_7

    .line 1358
    :pswitch_1a2
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    if-lt v0, v12, :cond_7

    .line 1360
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 1361
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 1363
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/Crop;->EndMoveObject(FF)V

    .line 1365
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    .line 1366
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mCrop:Lcom/sec/android/mimage/photoretouching/Crop;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/Crop;->GetDrawROI(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mTouchType:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setCropBdry(Landroid/graphics/Rect;I)V

    .line 1367
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/EffectController;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->invalidate()V

    goto/16 :goto_7

    .line 1285
    nop

    :pswitch_data_1d8
    .packed-switch 0x6
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_14
        :pswitch_14
        :pswitch_101
        :pswitch_7
        :pswitch_7
        :pswitch_1a2
    .end packed-switch
.end method
