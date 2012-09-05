.class public Lcom/google/android/apps/plus/content/DbComment;
.super Lcom/google/android/apps/plus/content/DbSerializer;
.source "DbComment.java"


# instance fields
.field private mAuthorName:Ljava/lang/String;

.field private mContentHtml:Ljava/lang/String;

.field private mCreationTime:J

.field private mTruncated:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/apps/plus/content/DbSerializer;-><init>()V

    .line 33
    return-void
.end method

.method public static deserialize([B)[Lcom/google/android/apps/plus/content/DbComment;
    .registers 11
    .parameter "array"

    .prologue
    const/4 v7, 0x1

    .line 144
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 145
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 147
    .local v4, items:S
    if-lez v4, :cond_40

    .line 148
    new-array v2, v4, [Lcom/google/android/apps/plus/content/DbComment;

    .line 150
    .local v2, commentArray:[Lcom/google/android/apps/plus/content/DbComment;
    const/4 v3, 0x0

    .local v3, i:S
    :goto_e
    if-ge v3, v4, :cond_41

    .line 151
    new-instance v1, Lcom/google/android/apps/plus/content/DbComment;

    invoke-direct {v1}, Lcom/google/android/apps/plus/content/DbComment;-><init>()V

    .line 153
    .local v1, comment:Lcom/google/android/apps/plus/content/DbComment;
    invoke-static {v0}, Lcom/google/android/apps/plus/content/DbComment;->getShortString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, value:Ljava/lang/String;
    if-eqz v5, :cond_1e

    .line 155
    invoke-direct {v1, v5}, Lcom/google/android/apps/plus/content/DbComment;->setAuthorName(Ljava/lang/String;)V

    .line 158
    :cond_1e
    invoke-static {v0}, Lcom/google/android/apps/plus/content/DbComment;->getLongString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    .line 159
    if-eqz v5, :cond_27

    .line 160
    invoke-direct {v1, v5}, Lcom/google/android/apps/plus/content/DbComment;->setContentHtml(Ljava/lang/String;)V

    .line 163
    :cond_27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    if-ne v6, v7, :cond_3e

    move v6, v7

    :goto_2e
    invoke-direct {v1, v6}, Lcom/google/android/apps/plus/content/DbComment;->setTruncated(Z)V

    .line 164
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v8

    invoke-direct {v1, v8, v9}, Lcom/google/android/apps/plus/content/DbComment;->setCreationTime(J)V

    .line 166
    aput-object v1, v2, v3

    .line 150
    add-int/lit8 v6, v3, 0x1

    int-to-short v3, v6

    goto :goto_e

    .line 163
    :cond_3e
    const/4 v6, 0x0

    goto :goto_2e

    .line 169
    .end local v1           #comment:Lcom/google/android/apps/plus/content/DbComment;
    .end local v2           #commentArray:[Lcom/google/android/apps/plus/content/DbComment;
    .end local v3           #i:S
    .end local v5           #value:Ljava/lang/String;
    :cond_40
    const/4 v2, 0x0

    .line 172
    .restart local v2       #commentArray:[Lcom/google/android/apps/plus/content/DbComment;
    :cond_41
    return-object v2
.end method

.method public static serialize(Ljava/util/List;Ljava/util/Map;)[B
    .registers 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Comment;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, comments:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Comment;>;"
    .local p1, personMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    const/4 v10, 0x0

    .line 101
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_9

    .line 102
    const/4 v5, 0x0

    .line 133
    :goto_8
    return-object v5

    .line 105
    :cond_9
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v9, 0x12c

    invoke-direct {v6, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 106
    .local v6, stream:Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 108
    .local v4, os:Ljava/io/DataOutputStream;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x2

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 110
    .local v3, items:I
    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 111
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    sub-int v2, v9, v3

    .local v2, i:I
    :goto_27
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_75

    .line 112
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$Comment;

    .line 113
    .local v1, comment:Lcom/google/wireless/tacotruck/proto/Data$Comment;
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getAuthorGaiaId()J

    move-result-wide v7

    .line 114
    .local v7, userId:J
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 115
    .local v0, author:Lcom/google/wireless/tacotruck/proto/Data$Person;
    if-eqz v0, :cond_6b

    .line 116
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/google/android/apps/plus/content/DbComment;->putShortString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 121
    :goto_4a
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->hasContentHtml()Z

    move-result v9

    if-eqz v9, :cond_6f

    .line 122
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getContentHtml()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/google/android/apps/plus/content/DbComment;->putLongString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 127
    :goto_57
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getTruncated()Z

    move-result v9

    if-eqz v9, :cond_73

    const/4 v9, 0x1

    :goto_5e
    invoke-virtual {v4, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 128
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getCreationTimestampMsec()J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 118
    :cond_6b
    invoke-virtual {v4, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_4a

    .line 124
    :cond_6f
    invoke-virtual {v4, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_57

    :cond_73
    move v9, v10

    .line 127
    goto :goto_5e

    .line 131
    .end local v0           #author:Lcom/google/wireless/tacotruck/proto/Data$Person;
    .end local v1           #comment:Lcom/google/wireless/tacotruck/proto/Data$Comment;
    .end local v7           #userId:J
    :cond_75
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 132
    .local v5, result:[B
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    goto :goto_8
.end method

.method private setAuthorName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/apps/plus/content/DbComment;->mAuthorName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private setContentHtml(Ljava/lang/String;)V
    .registers 2
    .parameter "html"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/apps/plus/content/DbComment;->mContentHtml:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private setCreationTime(J)V
    .registers 3
    .parameter "time"

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/google/android/apps/plus/content/DbComment;->mCreationTime:J

    .line 82
    return-void
.end method

.method private setTruncated(Z)V
    .registers 2
    .parameter "truncated"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/google/android/apps/plus/content/DbComment;->mTruncated:Z

    .line 68
    return-void
.end method


# virtual methods
.method public getAuthorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/plus/content/DbComment;->mAuthorName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentHtml()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/plus/content/DbComment;->mContentHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationTime()J
    .registers 3

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/google/android/apps/plus/content/DbComment;->mCreationTime:J

    return-wide v0
.end method
