.class public Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;
.super Ljava/lang/Object;
.source "Ui3dStaticDP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private DP_ID:Ljava/lang/String;

.field private mContentImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const-class v0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->DP_ID:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->mDefaultImageList:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->mContentImageList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public CancelRequest(I)Z
    .registers 3
    .parameter "requestId"

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public GetContentImageHeight(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->mContentImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_14

    .line 198
    sget-boolean v0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 199
    :cond_12
    const/4 v0, 0x0

    .line 202
    :goto_13
    return v0

    :cond_14
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->mContentImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_height:I
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$300(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)I

    move-result v0

    goto :goto_13
.end method

.method public GetContentImageWidth(II)I
    .registers 4
    .parameter "index"
    .parameter "fieldIndex"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->mContentImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_14

    .line 189
    sget-boolean v0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 190
    :cond_12
    const/4 v0, 0x0

    .line 193
    :goto_13
    return v0

    :cond_14
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->mContentImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_width:I
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$200(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)I

    move-result v0

    goto :goto_13
.end method

.method public GetCount()I
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->mContentImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public GetDefaultImage(IIII[B)Z
    .registers 11
    .parameter "field"
    .parameter "width"
    .parameter "height"
    .parameter "format"
    .parameter "imageBuf"

    .prologue
    const/4 v3, 0x0

    .line 121
    if-eqz p2, :cond_d

    if-eqz p3, :cond_d

    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->mDefaultImageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p1, v4, :cond_17

    .line 122
    :cond_d
    sget-boolean v4, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->$assertionsDisabled:Z

    if-nez v4, :cond_a3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 126
    :cond_17
    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->mDefaultImageList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;

    .line 128
    .local v0, defBmpInfo:Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;
    invoke-static {p4}, Lcom/samsung/stri/ui3dglobe/Ui3d_DPUtils;->ConvertFormat(I)Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 130
    .local v2, wantedPixelFormat:Landroid/graphics/Bitmap$Config;
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$100(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    if-eq v4, v2, :cond_3e

    .line 131
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_originalBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$000(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    if-ne v4, v2, :cond_4e

    .line 132
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_originalBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$000(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;
    invoke-static {v0, v4}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$102(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 138
    :cond_3e
    :goto_3e
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$100(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_5a

    .line 139
    sget-boolean v4, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->$assertionsDisabled:Z

    if-nez v4, :cond_a3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 134
    :cond_4e
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_originalBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$000(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;
    invoke-static {v0, v4}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$102(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_3e

    .line 143
    :cond_5a
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_width:I
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$200(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)I

    move-result v4

    if-ne v4, p2, :cond_66

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_height:I
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$300(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)I

    move-result v4

    if-eq v4, p3, :cond_71

    .line 144
    :cond_66
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$100(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v3, v3, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;
    invoke-static {v0, v4}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$102(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 147
    :cond_71
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$100(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_81

    .line 148
    sget-boolean v4, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->$assertionsDisabled:Z

    if-nez v4, :cond_a3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 152
    :cond_81
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$100(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    #setter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_width:I
    invoke-static {v0, v3}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$202(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;I)I

    .line 153
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$100(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    #setter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_height:I
    invoke-static {v0, v3}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$302(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;I)I

    .line 155
    invoke-static {p5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 156
    .local v1, imageBytesBuffer:Ljava/nio/ByteBuffer;
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$100(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 158
    const/4 v3, 0x1

    .end local v0           #defBmpInfo:Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;
    .end local v1           #imageBytesBuffer:Ljava/nio/ByteBuffer;
    .end local v2           #wantedPixelFormat:Landroid/graphics/Bitmap$Config;
    :cond_a3
    return v3
.end method

.method public GetDefaultImageHeight(I)I
    .registers 3
    .parameter "field"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->mDefaultImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_14

    .line 180
    sget-boolean v0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 181
    :cond_12
    const/4 v0, 0x0

    .line 184
    :goto_13
    return v0

    :cond_14
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->mDefaultImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_height:I
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$300(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)I

    move-result v0

    goto :goto_13
.end method

.method public GetDefaultImageWidth(I)I
    .registers 3
    .parameter "field"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->mDefaultImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_14

    .line 171
    sget-boolean v0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 172
    :cond_12
    const/4 v0, 0x0

    .line 175
    :goto_13
    return v0

    :cond_14
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->mDefaultImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_width:I
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$200(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)I

    move-result v0

    goto :goto_13
.end method

.method public GetDefaultImagesCount()I
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->mDefaultImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public GetFieldIndex(Ljava/lang/String;)I
    .registers 3
    .parameter "ff"

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public GetID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->DP_ID:Ljava/lang/String;

    return-object v0
.end method

.method public GetImage(IIIII[B)Z
    .registers 12
    .parameter "index"
    .parameter "field"
    .parameter "width"
    .parameter "height"
    .parameter "format"
    .parameter "imageBuf"

    .prologue
    const/4 v3, 0x0

    .line 75
    if-eqz p3, :cond_d

    if-eqz p4, :cond_d

    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->mContentImageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p1, v4, :cond_17

    .line 76
    :cond_d
    sget-boolean v4, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->$assertionsDisabled:Z

    if-nez v4, :cond_a3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 80
    :cond_17
    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->mContentImageList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;

    .line 82
    .local v0, defBmpInfo:Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;
    invoke-static {p5}, Lcom/samsung/stri/ui3dglobe/Ui3d_DPUtils;->ConvertFormat(I)Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 84
    .local v2, wantedPixelFormat:Landroid/graphics/Bitmap$Config;
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$100(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    if-eq v4, v2, :cond_3e

    .line 85
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_originalBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$000(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    if-ne v4, v2, :cond_4e

    .line 86
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_originalBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$000(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;
    invoke-static {v0, v4}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$102(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 92
    :cond_3e
    :goto_3e
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$100(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_5a

    .line 93
    sget-boolean v4, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->$assertionsDisabled:Z

    if-nez v4, :cond_a3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 88
    :cond_4e
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_originalBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$000(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;
    invoke-static {v0, v4}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$102(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_3e

    .line 97
    :cond_5a
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_width:I
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$200(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)I

    move-result v4

    if-ne v4, p3, :cond_66

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_height:I
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$300(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)I

    move-result v4

    if-eq v4, p4, :cond_71

    .line 98
    :cond_66
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$100(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v3, v3, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;
    invoke-static {v0, v4}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$102(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 101
    :cond_71
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$100(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_81

    .line 102
    sget-boolean v4, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->$assertionsDisabled:Z

    if-nez v4, :cond_a3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 106
    :cond_81
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$100(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    #setter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_width:I
    invoke-static {v0, v3}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$202(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;I)I

    .line 107
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$100(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    #setter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_height:I
    invoke-static {v0, v3}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$302(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;I)I

    .line 109
    invoke-static {p6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 110
    .local v1, imageBytesBuffer:Ljava/nio/ByteBuffer;
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$100(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 112
    const/4 v3, 0x1

    .end local v0           #defBmpInfo:Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;
    .end local v1           #imageBytesBuffer:Ljava/nio/ByteBuffer;
    .end local v2           #wantedPixelFormat:Landroid/graphics/Bitmap$Config;
    :cond_a3
    return v3
.end method

.method public Init()V
    .registers 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->nativeCreate()V

    .line 64
    return-void
.end method

.method public Release()V
    .registers 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->nativeRelease()V

    .line 68
    return-void
.end method

.method public SetContentBitmap(ILandroid/graphics/Bitmap;)V
    .registers 7
    .parameter "index"
    .parameter "mapTextureBmp"

    .prologue
    .line 43
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->mContentImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_19

    .line 44
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->mContentImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, i:I
    :goto_e
    if-gt v0, p1, :cond_19

    .line 45
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->mContentImageList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 49
    .end local v0           #i:I
    :cond_19
    new-instance v1, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;

    invoke-direct {v1, p0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;)V

    .line 50
    .local v1, newBmp:Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;
    #setter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_originalBmp:Landroid/graphics/Bitmap;
    invoke-static {v1, p2}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$002(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 51
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_originalBmp:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$000(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$102(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 52
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$100(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    #setter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_width:I
    invoke-static {v1, v2}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$202(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;I)I

    .line 53
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$100(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    #setter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_height:I
    invoke-static {v1, v2}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$302(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;I)I

    .line 55
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->mContentImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public SetDefaultBitmap(ILandroid/graphics/Bitmap;)V
    .registers 7
    .parameter "index"
    .parameter "mapTextureBmp"

    .prologue
    .line 27
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->mDefaultImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_19

    .line 28
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->mDefaultImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, i:I
    :goto_e
    if-gt v0, p1, :cond_19

    .line 29
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->mDefaultImageList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 33
    .end local v0           #i:I
    :cond_19
    new-instance v1, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;

    invoke-direct {v1, p0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;)V

    .line 34
    .local v1, newBmp:Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;
    #setter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_originalBmp:Landroid/graphics/Bitmap;
    invoke-static {v1, p2}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$002(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 35
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_originalBmp:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$000(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$102(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 36
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$100(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    #setter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_width:I
    invoke-static {v1, v2}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$202(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;I)I

    .line 37
    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_lastBmp:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$100(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    #setter for: Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->m_height:I
    invoke-static {v1, v2}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;->access$302(Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP$BitmapInfo;I)I

    .line 39
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->mDefaultImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public SetID(Ljava/lang/String;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->DP_ID:Ljava/lang/String;

    .line 24
    return-void
.end method

.method protected native nativeCreate()V
.end method

.method protected native nativeRelease()V
.end method
