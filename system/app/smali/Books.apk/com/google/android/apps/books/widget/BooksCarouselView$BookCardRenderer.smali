.class Lcom/google/android/apps/books/widget/BooksCarouselView$BookCardRenderer;
.super Ljava/lang/Object;
.source "BooksCarouselView.java"

# interfaces
.implements Lcom/google/android/opengl/carousel/ICardRenderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/BooksCarouselView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BookCardRenderer"
.end annotation


# instance fields
.field private mTexCoord:Ljava/nio/FloatBuffer;

.field private mTexCoordData:[F

.field private mVertices:Ljava/nio/FloatBuffer;

.field mVerticesData:[F

.field final synthetic this$0:Lcom/google/android/apps/books/widget/BooksCarouselView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/widget/BooksCarouselView;)V
    .registers 3
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/apps/books/widget/BooksCarouselView$BookCardRenderer;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/16 v0, 0x48

    new-array v0, v0, [F

    fill-array-data v0, :array_18

    iput-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselView$BookCardRenderer;->mVerticesData:[F

    .line 122
    const/16 v0, 0x30

    new-array v0, v0, [F

    fill-array-data v0, :array_ac

    iput-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselView$BookCardRenderer;->mTexCoordData:[F

    return-void

    .line 88
    :array_18
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3ft
        0x0t 0x0t 0x40t 0xbft
        0x33t 0x33t 0xb3t 0x3ft
        0x33t 0x33t 0xb3t 0x3ft
        0x0t 0x0t 0x40t 0xbft
        0x33t 0x33t 0xb3t 0xbft
        0x33t 0x33t 0xb3t 0xbft
        0x0t 0x0t 0x40t 0xbft
        0x33t 0x33t 0xb3t 0x3ft
        0x33t 0x33t 0xb3t 0xbft
        0x0t 0x0t 0x40t 0xbft
        0x33t 0x33t 0xb3t 0xbft
        0xaet 0x47t 0x31t 0xbft
        0x9at 0x99t 0x39t 0xbft
        0x71t 0x3dt 0xat 0xbet
        0xaet 0x47t 0x31t 0x3ft
        0x9at 0x99t 0x39t 0xbft
        0x71t 0x3dt 0xat 0xbet
        0xaet 0x47t 0x31t 0xbft
        0x33t 0x33t 0x93t 0x3ft
        0x71t 0x3dt 0xat 0xbet
        0xaet 0x47t 0x31t 0x3ft
        0x33t 0x33t 0x93t 0x3ft
        0x71t 0x3dt 0xat 0xbet
        0x9at 0x99t 0x29t 0x3ft
        0x86t 0xebt 0x31t 0xbft
        0x71t 0x3dt 0x12t 0x3et
        0x9at 0x99t 0x29t 0x3ft
        0x86t 0xebt 0x31t 0xbft
        0x71t 0x3dt 0xat 0xbet
        0x9at 0x99t 0x29t 0x3ft
        0x29t 0x5ct 0x8ft 0x3ft
        0x71t 0x3dt 0x12t 0x3et
        0x9at 0x99t 0x29t 0x3ft
        0x29t 0x5ct 0x8ft 0x3ft
        0x71t 0x3dt 0xat 0xbet
        0xaet 0x47t 0x31t 0xbft
        0x9at 0x99t 0x39t 0xbft
        0x71t 0x3dt 0x12t 0xbet
        0xaet 0x47t 0x31t 0xbft
        0x9at 0x99t 0x39t 0xbft
        0x71t 0x3dt 0xat 0x3et
        0xaet 0x47t 0x31t 0xbft
        0x33t 0x33t 0x93t 0x3ft
        0x71t 0x3dt 0x12t 0xbet
        0xaet 0x47t 0x31t 0xbft
        0x33t 0x33t 0x93t 0x3ft
        0x71t 0x3dt 0xat 0x3et
        0xaet 0x47t 0x33t 0xbft
        0x9at 0x99t 0x39t 0xbft
        0x71t 0x3dt 0xat 0x3et
        0xaet 0x47t 0x31t 0x3ft
        0x9at 0x99t 0x39t 0xbft
        0x71t 0x3dt 0xat 0x3et
        0xaet 0x47t 0x33t 0xbft
        0x33t 0x33t 0x93t 0x3ft
        0x71t 0x3dt 0xat 0x3et
        0xaet 0x47t 0x31t 0x3ft
        0x33t 0x33t 0x93t 0x3ft
        0x71t 0x3dt 0xat 0x3et
        0xaet 0x47t 0x33t 0xbft
        0x9at 0x99t 0x39t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0xaet 0x47t 0x31t 0x3ft
        0x9at 0x99t 0x39t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0xaet 0x47t 0x33t 0xbft
        0x33t 0x33t 0x93t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0xaet 0x47t 0x31t 0x3ft
        0x33t 0x33t 0x93t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 122
    :array_ac
    .array-data 0x4
        0x0t 0x0t 0x62t 0x3ft
        0x0t 0x0t 0x5et 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x5et 0x3ft
        0x0t 0x0t 0x62t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x60t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x60t 0x3ft
        0x0t 0x0t 0x60t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x60t 0x3ft
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x60t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x60t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/widget/BooksCarouselView;Lcom/google/android/apps/books/widget/BooksCarouselView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/BooksCarouselView$BookCardRenderer;-><init>(Lcom/google/android/apps/books/widget/BooksCarouselView;)V

    return-void
.end method


# virtual methods
.method public beforeDrawAllCards()V
    .registers 10

    .prologue
    const/16 v2, 0x1406

    const/4 v0, 0x0

    .line 155
    const/4 v1, 0x3

    iget-object v5, p0, Lcom/google/android/apps/books/widget/BooksCarouselView$BookCardRenderer;->mVertices:Ljava/nio/FloatBuffer;

    move v3, v0

    move v4, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 157
    const/4 v3, 0x1

    const/4 v4, 0x2

    iget-object v8, p0, Lcom/google/android/apps/books/widget/BooksCarouselView$BookCardRenderer;->mTexCoord:Ljava/nio/FloatBuffer;

    move v5, v2

    move v6, v0

    move v7, v0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 159
    return-void
.end method

.method public draw(I)V
    .registers 6
    .parameter "id"

    .prologue
    const/4 v3, 0x5

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, currentIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v3, :cond_e

    .line 166
    const/4 v2, 0x4

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 167
    add-int/lit8 v0, v0, 0x4

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 169
    :cond_e
    return-void
.end method

.method public drawGlowingBorder(I)V
    .registers 5
    .parameter "id"

    .prologue
    .line 173
    const/4 v0, 0x5

    const/16 v1, 0x14

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 174
    return-void
.end method

.method public onSurfaceCreated()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselView$BookCardRenderer;->mVerticesData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselView$BookCardRenderer;->mVertices:Ljava/nio/FloatBuffer;

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselView$BookCardRenderer;->mVertices:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/google/android/apps/books/widget/BooksCarouselView$BookCardRenderer;->mVerticesData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselView$BookCardRenderer;->mTexCoordData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselView$BookCardRenderer;->mTexCoord:Ljava/nio/FloatBuffer;

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselView$BookCardRenderer;->mTexCoord:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/google/android/apps/books/widget/BooksCarouselView$BookCardRenderer;->mTexCoordData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 151
    return-void
.end method
