.class public Lorg/apache/commons/io/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field public static final DIR_SEPARATOR:C

.field public static final LINE_SEPARATOR:Ljava/lang/String;

.field private static mCopyAllCancel:Z

.field private static mCopyCancel:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 103
    sget-char v2, Ljava/io/File;->separatorChar:C

    sput-char v2, Lorg/apache/commons/io/IOUtils;->DIR_SEPARATOR:C

    .line 118
    new-instance v0, Ljava/io/StringWriter;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 119
    .local v0, buf:Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 120
    .local v1, out:Ljava/io/PrintWriter;
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 121
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 1268
    sput-boolean v3, Lorg/apache/commons/io/IOUtils;->mCopyCancel:Z

    .line 1270
    sput-boolean v3, Lorg/apache/commons/io/IOUtils;->mCopyAllCancel:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    return-void
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .registers 2
    .parameter "input"

    .prologue
    .line 183
    if-eqz p0, :cond_5

    .line 184
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 189
    :cond_5
    :goto_5
    return-void

    .line 186
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static closeQuietly(Ljava/io/Reader;)V
    .registers 2
    .parameter "input"

    .prologue
    .line 147
    if-eqz p0, :cond_5

    .line 148
    :try_start_2
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 153
    :cond_5
    :goto_5
    return-void

    .line 150
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .registers 6
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 999
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 1000
    .local v0, count:J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    .line 1001
    const/4 v2, -0x1

    .line 1003
    :goto_c
    return v2

    :cond_d
    long-to-int v2, v0

    goto :goto_c
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)I
    .registers 6
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1101
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J

    move-result-wide v0

    .line 1102
    .local v0, count:J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    .line 1103
    const/4 v2, -0x1

    .line 1105
    :goto_c
    return v2

    :cond_d
    long-to-int v2, v0

    goto :goto_c
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;)V
    .registers 3
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1153
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1154
    .local v0, out:Ljava/io/OutputStreamWriter;
    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 1157
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 1158
    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .parameter "input"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1184
    if-nez p2, :cond_6

    .line 1185
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;)V

    .line 1193
    :goto_5
    return-void

    .line 1187
    :cond_6
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1188
    .local v0, out:Ljava/io/OutputStreamWriter;
    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 1191
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    goto :goto_5
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 8
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1021
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 1022
    .local v0, buffer:[B
    const-wide/16 v1, 0x0

    .line 1023
    .local v1, count:J
    const/4 v3, 0x0

    .line 1024
    .local v3, n:I
    :goto_7
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v4, v3, :cond_15

    .line 1025
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1026
    int-to-long v4, v3

    add-long/2addr v1, v4

    goto :goto_7

    .line 1028
    :cond_15
    return-wide v1
.end method

.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J
    .registers 8
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1123
    const/16 v4, 0x1000

    new-array v0, v4, [C

    .line 1124
    .local v0, buffer:[C
    const-wide/16 v1, 0x0

    .line 1125
    .local v1, count:J
    const/4 v3, 0x0

    .line 1126
    .local v3, n:I
    :goto_7
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-eq v4, v3, :cond_15

    .line 1127
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/Writer;->write([CII)V

    .line 1128
    int-to-long v4, v3

    add-long/2addr v1, v4

    goto :goto_7

    .line 1130
    :cond_15
    return-wide v1
.end method

.method public static copyLarge_status(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)J
    .registers 15
    .parameter "input"
    .parameter "output"
    .parameter "listener"
    .parameter "total"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1282
    const/16 v7, 0x1000

    new-array v0, v7, [B

    .line 1283
    .local v0, buffer:[B
    const-wide/16 v1, 0x0

    .line 1284
    .local v1, count:J
    const/4 v3, 0x0

    .line 1285
    .local v3, n:I
    const/4 v4, 0x0

    .line 1287
    .local v4, num:I
    const/4 v5, 0x0

    .line 1288
    .local v5, progress:I
    const/4 v6, 0x0

    .line 1289
    .local v6, temp:I
    :goto_a
    const/4 v7, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v7, v3, :cond_5f

    .line 1290
    const/4 v7, 0x0

    invoke-virtual {p1, v0, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1291
    int-to-long v7, v3

    add-long/2addr v1, v7

    .line 1293
    sget-boolean v7, Lorg/apache/commons/io/IOUtils;->mCopyCancel:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_32

    .line 1294
    const-string v7, "IOUtils"

    const-string v8, "Attachmentdownload is cancelled in copyLarge_status"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    sget-boolean v7, Lorg/apache/commons/io/IOUtils;->mCopyAllCancel:Z

    if-nez v7, :cond_2a

    .line 1299
    const/4 v7, 0x0

    sput-boolean v7, Lorg/apache/commons/io/IOUtils;->mCopyCancel:Z

    .line 1301
    :cond_2a
    new-instance v7, Ljava/io/IOException;

    const-string v8, "ATTACHMENT_DOWNLOAD_CANCEL"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1304
    :cond_32
    if-eqz p3, :cond_5c

    .line 1305
    rem-int/lit8 v7, v4, 0x5

    if-eqz v7, :cond_4c

    const-wide/16 v7, 0x64

    mul-long/2addr v7, v1

    int-to-long v9, p3

    div-long/2addr v7, v9

    const-wide/16 v9, 0x5a

    cmp-long v7, v7, v9

    if-lez v7, :cond_47

    rem-int/lit8 v7, v4, 0x2

    if-eqz v7, :cond_4c

    :cond_47
    int-to-long v7, p3

    cmp-long v7, v1, v7

    if-ltz v7, :cond_5c

    .line 1307
    :cond_4c
    if-eqz p2, :cond_5c

    .line 1308
    const-wide/16 v7, 0x64

    mul-long/2addr v7, v1

    int-to-long v9, p3

    div-long/2addr v7, v9

    long-to-int v6, v7

    .line 1310
    if-eq v6, v5, :cond_5c

    .line 1311
    move v5, v6

    .line 1312
    sget-object v7, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;->IOCOPY:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;

    invoke-interface {p2, v5, v7}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->loadAttachmentProgress(ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;)V

    .line 1318
    :cond_5c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1321
    :cond_5f
    if-eqz p2, :cond_68

    .line 1322
    const/16 v7, 0x64

    sget-object v8, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;->IOCOPY:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;

    invoke-interface {p2, v7, v8}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->loadAttachmentProgress(ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;)V

    .line 1325
    :cond_68
    return-wide v1
.end method

.method public static copy_status(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)I
    .registers 8
    .parameter "input"
    .parameter "output"
    .parameter "listener"
    .parameter "total"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1330
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/io/IOUtils;->copyLarge_status(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)J

    move-result-wide v0

    .line 1331
    .local v0, count:J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    .line 1332
    const/4 v2, -0x1

    .line 1334
    :goto_c
    return v2

    :cond_d
    long-to-int v2, v0

    goto :goto_c
.end method

.method public static setCopyAllCancel(Z)V
    .registers 1
    .parameter "cancel"

    .prologue
    .line 1277
    sput-boolean p0, Lorg/apache/commons/io/IOUtils;->mCopyAllCancel:Z

    .line 1278
    return-void
.end method

.method public static setCopyCancel(Z)V
    .registers 1
    .parameter "cancel"

    .prologue
    .line 1273
    sput-boolean p0, Lorg/apache/commons/io/IOUtils;->mCopyCancel:Z

    .line 1274
    return-void
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    .line 224
    .local v0, output:Lorg/apache/commons/io/output/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 225
    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray(Ljava/io/Reader;)[B
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    .line 242
    .local v0, output:Lorg/apache/commons/io/output/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;)V

    .line 243
    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray(Ljava/io/Reader;Ljava/lang/String;)[B
    .registers 4
    .parameter "input"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    .line 265
    .local v0, output:Lorg/apache/commons/io/output/ByteArrayOutputStream;
    invoke-static {p0, v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
