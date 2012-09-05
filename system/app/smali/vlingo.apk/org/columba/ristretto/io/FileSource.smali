.class public Lorg/columba/ristretto/io/FileSource;
.super Ljava/lang/Object;
.source "FileSource.java"

# interfaces
.implements Lorg/columba/ristretto/io/Source;


# instance fields
.field private end:I

.field private model:Lorg/columba/ristretto/io/FileSourceModel;

.field private pos:I

.field private start:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lorg/columba/ristretto/io/FileSourceModel;

    invoke-direct {v0, p1}, Lorg/columba/ristretto/io/FileSourceModel;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/columba/ristretto/io/FileSource;->model:Lorg/columba/ristretto/io/FileSourceModel;

    .line 63
    iget-object v0, p0, Lorg/columba/ristretto/io/FileSource;->model:Lorg/columba/ristretto/io/FileSourceModel;

    invoke-virtual {v0}, Lorg/columba/ristretto/io/FileSourceModel;->incReferences()V

    .line 64
    iput v1, p0, Lorg/columba/ristretto/io/FileSource;->start:I

    .line 65
    iget-object v0, p0, Lorg/columba/ristretto/io/FileSource;->model:Lorg/columba/ristretto/io/FileSourceModel;

    invoke-virtual {v0}, Lorg/columba/ristretto/io/FileSourceModel;->length()I

    move-result v0

    iput v0, p0, Lorg/columba/ristretto/io/FileSource;->end:I

    .line 66
    iput v1, p0, Lorg/columba/ristretto/io/FileSource;->pos:I

    .line 67
    return-void
.end method

.method protected constructor <init>(Lorg/columba/ristretto/io/FileSource;)V
    .registers 3
    .parameter "parent"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iget-object v0, p1, Lorg/columba/ristretto/io/FileSource;->model:Lorg/columba/ristretto/io/FileSourceModel;

    iput-object v0, p0, Lorg/columba/ristretto/io/FileSource;->model:Lorg/columba/ristretto/io/FileSourceModel;

    .line 71
    iget-object v0, p0, Lorg/columba/ristretto/io/FileSource;->model:Lorg/columba/ristretto/io/FileSourceModel;

    invoke-virtual {v0}, Lorg/columba/ristretto/io/FileSourceModel;->incReferences()V

    .line 72
    iget v0, p1, Lorg/columba/ristretto/io/FileSource;->start:I

    iput v0, p0, Lorg/columba/ristretto/io/FileSource;->start:I

    .line 73
    iget v0, p1, Lorg/columba/ristretto/io/FileSource;->end:I

    iput v0, p0, Lorg/columba/ristretto/io/FileSource;->end:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lorg/columba/ristretto/io/FileSource;->pos:I

    .line 75
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .registers 5
    .parameter "arg0"

    .prologue
    .line 120
    :try_start_0
    iget-object v1, p0, Lorg/columba/ristretto/io/FileSource;->model:Lorg/columba/ristretto/io/FileSourceModel;

    iget v2, p0, Lorg/columba/ristretto/io/FileSource;->start:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/io/FileSourceModel;->get(I)C
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_a

    move-result v1

    .line 123
    :goto_9
    return v1

    .line 121
    :catch_a
    move-exception v0

    .line 122
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 123
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lorg/columba/ristretto/io/FileSource;->model:Lorg/columba/ristretto/io/FileSourceModel;

    if-eqz v0, :cond_c

    .line 189
    iget-object v0, p0, Lorg/columba/ristretto/io/FileSource;->model:Lorg/columba/ristretto/io/FileSourceModel;

    invoke-virtual {v0}, Lorg/columba/ristretto/io/FileSourceModel;->decReferences()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/columba/ristretto/io/FileSource;->model:Lorg/columba/ristretto/io/FileSourceModel;

    .line 192
    :cond_c
    return-void
.end method

.method public deepClose()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lorg/columba/ristretto/io/FileSource;->model:Lorg/columba/ristretto/io/FileSourceModel;

    if-eqz v0, :cond_9

    .line 199
    iget-object v0, p0, Lorg/columba/ristretto/io/FileSource;->model:Lorg/columba/ristretto/io/FileSourceModel;

    invoke-virtual {v0}, Lorg/columba/ristretto/io/FileSourceModel;->close()V

    .line 200
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/columba/ristretto/io/FileSource;->model:Lorg/columba/ristretto/io/FileSourceModel;

    .line 201
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 178
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 179
    iget-object v0, p0, Lorg/columba/ristretto/io/FileSource;->model:Lorg/columba/ristretto/io/FileSourceModel;

    if-eqz v0, :cond_f

    .line 180
    iget-object v0, p0, Lorg/columba/ristretto/io/FileSource;->model:Lorg/columba/ristretto/io/FileSourceModel;

    invoke-virtual {v0}, Lorg/columba/ristretto/io/FileSourceModel;->decReferences()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/columba/ristretto/io/FileSource;->model:Lorg/columba/ristretto/io/FileSourceModel;

    .line 183
    :cond_f
    return-void
.end method

.method public fromActualPosition()Lorg/columba/ristretto/io/Source;
    .registers 4

    .prologue
    .line 81
    new-instance v0, Lorg/columba/ristretto/io/FileSource;

    invoke-direct {v0, p0}, Lorg/columba/ristretto/io/FileSource;-><init>(Lorg/columba/ristretto/io/FileSource;)V

    .line 82
    .local v0, subsource:Lorg/columba/ristretto/io/FileSource;
    iget v1, p0, Lorg/columba/ristretto/io/FileSource;->start:I

    iget v2, p0, Lorg/columba/ristretto/io/FileSource;->pos:I

    add-int/2addr v1, v2

    iput v1, v0, Lorg/columba/ristretto/io/FileSource;->start:I

    .line 84
    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lorg/columba/ristretto/io/FileSource;->model:Lorg/columba/ristretto/io/FileSourceModel;

    invoke-virtual {v0}, Lorg/columba/ristretto/io/FileSourceModel;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lorg/columba/ristretto/io/FileSource;->pos:I

    return v0
.end method

.method public isEOF()Z
    .registers 3

    .prologue
    .line 169
    iget v0, p0, Lorg/columba/ristretto/io/FileSource;->pos:I

    iget v1, p0, Lorg/columba/ristretto/io/FileSource;->end:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public length()I
    .registers 3

    .prologue
    .line 112
    iget v0, p0, Lorg/columba/ristretto/io/FileSource;->end:I

    iget v1, p0, Lorg/columba/ristretto/io/FileSource;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public next()C
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lorg/columba/ristretto/io/FileSource;->model:Lorg/columba/ristretto/io/FileSourceModel;

    iget v1, p0, Lorg/columba/ristretto/io/FileSource;->start:I

    iget v2, p0, Lorg/columba/ristretto/io/FileSource;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/columba/ristretto/io/FileSource;->pos:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/columba/ristretto/io/FileSourceModel;->get(I)C

    move-result v0

    return v0
.end method

.method public seek(I)V
    .registers 2
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    iput p1, p0, Lorg/columba/ristretto/io/FileSource;->pos:I

    .line 99
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 141
    sub-int v2, p2, p1

    const/16 v3, 0x400

    if-ge v2, v3, :cond_1a

    .line 142
    new-instance v1, Ljava/lang/StringBuffer;

    sub-int v2, p2, p1

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 143
    .local v1, result:Ljava/lang/StringBuffer;
    move v0, p1

    .local v0, i:I
    :goto_e
    if-ge v0, p2, :cond_1e

    .line 144
    invoke-virtual {p0, v0}, Lorg/columba/ristretto/io/FileSource;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 148
    .end local v0           #i:I
    .end local v1           #result:Ljava/lang/StringBuffer;
    :cond_1a
    invoke-virtual {p0, p1, p2}, Lorg/columba/ristretto/io/FileSource;->subSource(II)Lorg/columba/ristretto/io/Source;

    move-result-object v1

    :cond_1e
    return-object v1
.end method

.method public subSource(II)Lorg/columba/ristretto/io/Source;
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 131
    new-instance v0, Lorg/columba/ristretto/io/FileSource;

    invoke-direct {v0, p0}, Lorg/columba/ristretto/io/FileSource;-><init>(Lorg/columba/ristretto/io/FileSource;)V

    .line 132
    .local v0, subsource:Lorg/columba/ristretto/io/FileSource;
    iget v1, p0, Lorg/columba/ristretto/io/FileSource;->start:I

    add-int/2addr v1, p1

    iput v1, v0, Lorg/columba/ristretto/io/FileSource;->start:I

    .line 133
    iget v1, p0, Lorg/columba/ristretto/io/FileSource;->start:I

    add-int/2addr v1, p2

    iput v1, v0, Lorg/columba/ristretto/io/FileSource;->end:I

    .line 134
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/columba/ristretto/io/FileSource;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 157
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    invoke-virtual {p0}, Lorg/columba/ristretto/io/FileSource;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 158
    invoke-virtual {p0, v1}, Lorg/columba/ristretto/io/FileSource;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 160
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
