.class public Lcom/sec/android/app/music/framework/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    const-string v0, "[\\w%+,./=_-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/framework/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "file"
    .parameter "max"
    .parameter "ellipsis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v11, 0x0

    .line 190
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 192
    .local v2, input:Ljava/io/InputStream;
    :try_start_7
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 193
    .local v7, size:J
    if-gtz p1, :cond_13

    cmp-long v10, v7, v11

    if-lez v10, :cond_62

    if-nez p1, :cond_62

    .line 194
    :cond_13
    cmp-long v10, v7, v11

    if-lez v10, :cond_1f

    if-eqz p1, :cond_1e

    int-to-long v10, p1

    cmp-long v10, v7, v10

    if-gez v10, :cond_1f

    :cond_1e
    long-to-int p1, v7

    .line 195
    :cond_1f
    add-int/lit8 v10, p1, 0x1

    new-array v1, v10, [B

    .line 196
    .local v1, data:[B
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 197
    .local v5, length:I
    if-gtz v5, :cond_2f

    const-string v10, ""
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_e5

    .line 232
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .end local v5           #length:I
    :goto_2e
    return-object v10

    .line 198
    .restart local v5       #length:I
    :cond_2f
    if-gt v5, p1, :cond_3b

    :try_start_31
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_e5

    .line 232
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_2e

    .line 199
    :cond_3b
    if-nez p2, :cond_47

    :try_start_3d
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_e5

    .line 232
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_2e

    .line 200
    :cond_47
    :try_start_47
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v11, v1, v12, p1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5d
    .catchall {:try_start_47 .. :try_end_5d} :catchall_e5

    move-result-object v10

    .line 232
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_2e

    .line 201
    .end local v1           #data:[B
    .end local v5           #length:I
    :cond_62
    if-gez p1, :cond_c6

    .line 203
    const/4 v6, 0x0

    .line 204
    .local v6, rolled:Z
    const/4 v3, 0x0

    .local v3, last:[B
    const/4 v1, 0x0

    .line 206
    .restart local v1       #data:[B
    :cond_67
    if-eqz v3, :cond_6a

    const/4 v6, 0x1

    .line 207
    :cond_6a
    move-object v9, v3

    .local v9, tmp:[B
    move-object v3, v1

    move-object v1, v9

    .line 208
    if-nez v1, :cond_72

    neg-int v10, p1

    :try_start_70
    new-array v1, v10, [B

    .line 209
    :cond_72
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 210
    .local v4, len:I
    array-length v10, v1

    if-eq v4, v10, :cond_67

    .line 212
    if-nez v3, :cond_83

    if-gtz v4, :cond_83

    const-string v10, ""
    :try_end_7f
    .catchall {:try_start_70 .. :try_end_7f} :catchall_e5

    .line 232
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_2e

    .line 213
    :cond_83
    if-nez v3, :cond_8f

    :try_start_85
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_8b
    .catchall {:try_start_85 .. :try_end_8b} :catchall_e5

    .line 232
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_2e

    .line 214
    :cond_8f
    if-lez v4, :cond_9e

    .line 215
    const/4 v6, 0x1

    .line 216
    const/4 v10, 0x0

    :try_start_93
    array-length v11, v3

    sub-int/2addr v11, v4

    invoke-static {v3, v4, v3, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    const/4 v10, 0x0

    array-length v11, v3

    sub-int/2addr v11, v4

    invoke-static {v1, v10, v3, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    :cond_9e
    if-eqz p2, :cond_a2

    if-nez v6, :cond_ab

    :cond_a2
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_a7
    .catchall {:try_start_93 .. :try_end_a7} :catchall_e5

    .line 232
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_2e

    .line 220
    :cond_ab
    :try_start_ab
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c0
    .catchall {:try_start_ab .. :try_end_c0} :catchall_e5

    move-result-object v10

    .line 232
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto/16 :goto_2e

    .line 222
    .end local v1           #data:[B
    .end local v3           #last:[B
    .end local v4           #len:I
    .end local v6           #rolled:Z
    .end local v9           #tmp:[B
    :cond_c6
    :try_start_c6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 224
    .local v0, contents:Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x400

    new-array v1, v10, [B

    .line 226
    .restart local v1       #data:[B
    :cond_cf
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 227
    .restart local v4       #len:I
    if-lez v4, :cond_d9

    const/4 v10, 0x0

    invoke-virtual {v0, v1, v10, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 228
    :cond_d9
    array-length v10, v1

    if-eq v4, v10, :cond_cf

    .line 229
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_df
    .catchall {:try_start_c6 .. :try_end_df} :catchall_e5

    move-result-object v10

    .line 232
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto/16 :goto_2e

    .end local v0           #contents:Ljava/io/ByteArrayOutputStream;
    .end local v1           #data:[B
    .end local v4           #len:I
    .end local v7           #size:J
    :catchall_e5
    move-exception v10

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v10
.end method
