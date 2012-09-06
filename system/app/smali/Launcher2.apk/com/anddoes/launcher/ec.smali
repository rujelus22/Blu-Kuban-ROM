.class Lcom/anddoes/launcher/ec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field h:J

.field i:I

.field j:J

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field p:Z

.field q:[I


# direct methods
.method constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide v2, p0, Lcom/anddoes/launcher/ec;->h:J

    .line 52
    iput-wide v2, p0, Lcom/anddoes/launcher/ec;->j:J

    .line 57
    iput v0, p0, Lcom/anddoes/launcher/ec;->k:I

    .line 62
    iput v0, p0, Lcom/anddoes/launcher/ec;->l:I

    .line 67
    iput v0, p0, Lcom/anddoes/launcher/ec;->m:I

    .line 72
    iput v1, p0, Lcom/anddoes/launcher/ec;->n:I

    .line 77
    iput v1, p0, Lcom/anddoes/launcher/ec;->o:I

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/ec;->p:Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/ec;->q:[I

    .line 90
    return-void
.end method

.method constructor <init>(Lcom/anddoes/launcher/ec;)V
    .registers 6
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide v2, p0, Lcom/anddoes/launcher/ec;->h:J

    .line 52
    iput-wide v2, p0, Lcom/anddoes/launcher/ec;->j:J

    .line 57
    iput v0, p0, Lcom/anddoes/launcher/ec;->k:I

    .line 62
    iput v0, p0, Lcom/anddoes/launcher/ec;->l:I

    .line 67
    iput v0, p0, Lcom/anddoes/launcher/ec;->m:I

    .line 72
    iput v1, p0, Lcom/anddoes/launcher/ec;->n:I

    .line 77
    iput v1, p0, Lcom/anddoes/launcher/ec;->o:I

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/ec;->p:Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/ec;->q:[I

    .line 93
    iget-wide v0, p1, Lcom/anddoes/launcher/ec;->h:J

    iput-wide v0, p0, Lcom/anddoes/launcher/ec;->h:J

    .line 94
    iget v0, p1, Lcom/anddoes/launcher/ec;->l:I

    iput v0, p0, Lcom/anddoes/launcher/ec;->l:I

    .line 95
    iget v0, p1, Lcom/anddoes/launcher/ec;->m:I

    iput v0, p0, Lcom/anddoes/launcher/ec;->m:I

    .line 96
    iget v0, p1, Lcom/anddoes/launcher/ec;->n:I

    iput v0, p0, Lcom/anddoes/launcher/ec;->n:I

    .line 97
    iget v0, p1, Lcom/anddoes/launcher/ec;->o:I

    iput v0, p0, Lcom/anddoes/launcher/ec;->o:I

    .line 98
    iget v0, p1, Lcom/anddoes/launcher/ec;->k:I

    iput v0, p0, Lcom/anddoes/launcher/ec;->k:I

    .line 99
    iget v0, p1, Lcom/anddoes/launcher/ec;->i:I

    iput v0, p0, Lcom/anddoes/launcher/ec;->i:I

    .line 100
    iget-wide v0, p1, Lcom/anddoes/launcher/ec;->j:J

    iput-wide v0, p0, Lcom/anddoes/launcher/ec;->j:J

    .line 101
    return-void
.end method

.method static a(Landroid/content/ContentValues;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    const-string v0, "cellX"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    const-string v0, "cellY"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    return-void
.end method

.method static a(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 142
    if-eqz p1, :cond_b

    .line 143
    invoke-static {p1}, Lcom/anddoes/launcher/ec;->b(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 144
    const-string v1, "icon"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 146
    :cond_b
    return-void
.end method

.method static b(Landroid/graphics/Bitmap;)[B
    .registers 4
    .parameter

    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    .line 129
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 131
    :try_start_10
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 132
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 133
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 134
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_20} :catch_22

    move-result-object v0

    .line 137
    :goto_21
    return-object v0

    .line 136
    :catch_22
    move-exception v0

    const-string v0, "Favorite"

    const-string v1, "Could not write icon"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x0

    goto :goto_21
.end method


# virtual methods
.method a(Landroid/content/ContentValues;)V
    .registers 5
    .parameter

    .prologue
    .line 109
    const-string v0, "itemType"

    iget v1, p0, Lcom/anddoes/launcher/ec;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    iget-boolean v0, p0, Lcom/anddoes/launcher/ec;->p:Z

    if-nez v0, :cond_51

    .line 111
    const-string v0, "container"

    iget-wide v1, p0, Lcom/anddoes/launcher/ec;->j:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 112
    const-string v0, "screen"

    iget v1, p0, Lcom/anddoes/launcher/ec;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    const-string v0, "cellX"

    iget v1, p0, Lcom/anddoes/launcher/ec;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    const-string v0, "cellY"

    iget v1, p0, Lcom/anddoes/launcher/ec;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    const-string v0, "spanX"

    iget v1, p0, Lcom/anddoes/launcher/ec;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const-string v0, "spanY"

    iget v1, p0, Lcom/anddoes/launcher/ec;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    :cond_51
    return-void
.end method

.method a_()V
    .registers 1

    .prologue
    .line 155
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Item(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/anddoes/launcher/ec;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/anddoes/launcher/ec;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/anddoes/launcher/ec;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/anddoes/launcher/ec;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/anddoes/launcher/ec;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/anddoes/launcher/ec;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/anddoes/launcher/ec;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/anddoes/launcher/ec;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isGesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/anddoes/launcher/ec;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/ec;->q:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
