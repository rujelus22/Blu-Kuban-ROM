.class Lcom/cooliris/media/DiskCacheSEC$Chunk;
.super Ljava/lang/Object;
.source "DiskCacheSEC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/DiskCacheSEC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Chunk"
.end annotation


# instance fields
.field private mChunk:I

.field private mCount:I

.field private mOffset:I

.field final synthetic this$0:Lcom/cooliris/media/DiskCacheSEC;


# direct methods
.method constructor <init>(Lcom/cooliris/media/DiskCacheSEC;III)V
    .registers 5
    .parameter
    .parameter "c"
    .parameter "o"
    .parameter "cnt"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/cooliris/media/DiskCacheSEC$Chunk;->this$0:Lcom/cooliris/media/DiskCacheSEC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p2, p0, Lcom/cooliris/media/DiskCacheSEC$Chunk;->mChunk:I

    .line 84
    iput p3, p0, Lcom/cooliris/media/DiskCacheSEC$Chunk;->mOffset:I

    .line 85
    iput p4, p0, Lcom/cooliris/media/DiskCacheSEC$Chunk;->mCount:I

    .line 86
    return-void
.end method


# virtual methods
.method getChunk()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lcom/cooliris/media/DiskCacheSEC$Chunk;->mChunk:I

    return v0
.end method

.method getOffset()I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Lcom/cooliris/media/DiskCacheSEC$Chunk;->mOffset:I

    mul-int/lit16 v0, v0, 0x400

    return v0
.end method

.method getSize()I
    .registers 2

    .prologue
    .line 97
    iget v0, p0, Lcom/cooliris/media/DiskCacheSEC$Chunk;->mCount:I

    mul-int/lit16 v0, v0, 0x400

    return v0
.end method
