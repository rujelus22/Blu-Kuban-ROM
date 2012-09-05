.class public Lcom/google/android/finsky/exploreactivity/SubTexture;
.super Ljava/lang/Object;
.source "SubTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;
    }
.end annotation


# instance fields
.field private final mAppNode:Lcom/google/android/finsky/exploreactivity/AppNode;

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mTextureType:Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/google/android/finsky/exploreactivity/AppNode;)V
    .registers 4
    .parameter "bitmap"
    .parameter "appNode"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/SubTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 38
    iput-object p2, p0, Lcom/google/android/finsky/exploreactivity/SubTexture;->mAppNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    .line 39
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SubTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    .line 40
    sget-object v0, Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;->IMAGE:Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/SubTexture;->mTextureType:Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;

    .line 44
    :goto_f
    return-void

    .line 42
    :cond_10
    sget-object v0, Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;->TEXT:Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/SubTexture;->mTextureType:Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;

    goto :goto_f
.end method


# virtual methods
.method public getAppNode()Lcom/google/android/finsky/exploreactivity/AppNode;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SubTexture;->mAppNode:Lcom/google/android/finsky/exploreactivity/AppNode;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SubTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isImageTexture()Z
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/SubTexture;->mTextureType:Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;->IMAGE:Lcom/google/android/finsky/exploreactivity/SubTexture$TextureType;

    if-ne v0, v1, :cond_8

    .line 62
    const/4 v0, 0x1

    .line 64
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
