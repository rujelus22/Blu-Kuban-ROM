.class public Lcom/x/google/common/io/IoUtil;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR_INVALID_REDIRECT:Ljava/lang/String; = "Invalid redirect."

.field public static final ERROR_MAX_REDIRECTS:Ljava/lang/String; = "Maximum redirects reached."

.field public static final ERROR_NOT_SECURE:Ljava/lang/String; = "The connection is not end-to-end secure."

.field public static final ERROR_UNEXPECTED_RESPONSE:Ljava/lang/String; = "Unexpected response."

.field private static final HEX_DIGITS:[C = null

.field private static final HI_MASK:J = 0x47fffffe87fffffeL

.field private static final LOW_MASK:J = 0x3ff678200000000L

.field public static final MAILTO_BODY_PARAM:Ljava/lang/String; = "body"

.field private static final MAILTO_SCHEME:Ljava/lang/String; = "mailto:"

.field public static final MAILTO_SUBJECT_PARAM:Ljava/lang/String; = "subject"

.field public static final NETWORK_NOT_AVAILABLE:Ljava/lang/String; = "Network not available."


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/x/google/common/io/IoUtil;->HEX_DIGITS:[C

    return-void

    :array_a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendParams(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 5

    const/16 v0, 0x3f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1b

    :goto_13
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1a
    return-void

    :cond_1b
    const/16 v0, 0x26

    goto :goto_13
.end method

.method public static closeConnection(Lcom/x/google/common/io/GoogleHttpConnection;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Lcom/x/google/common/io/GoogleHttpConnection;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static closeConnection(Lcom/x/google/common/io/GoogleTcpConnection;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Lcom/x/google/common/io/GoogleTcpConnection;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static closeInputStream(Ljava/io/InputStream;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static closeOutputStream(Ljava/io/OutputStream;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static closeReader(Ljava/io/Reader;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static connect(Lcom/x/google/common/io/HttpConnectionFactory;Ljava/lang/String;Ljava/util/Vector;[BZIII)Lcom/x/google/common/io/GoogleHttpConnection;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/x/google/common/io/HttpConnectionFactory;->isNetworkAvailable()I

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Network not available."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v0, 0x0

    :goto_f
    const/4 v1, 0x0

    :goto_10
    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p3, :cond_4b

    const/4 v2, 0x1

    :goto_15
    :try_start_15
    invoke-interface {p0, p1, v2}, Lcom/x/google/common/io/HttpConnectionFactory;->createConnection(Ljava/lang/String;Z)Lcom/x/google/common/io/GoogleHttpConnection;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/x/google/common/io/IoUtil;->setConnectionHeaders(Lcom/x/google/common/io/GoogleHttpConnection;Ljava/util/Vector;)V

    if-eqz p3, :cond_25

    invoke-interface {v4}, Lcom/x/google/common/io/GoogleHttpConnection;->openDataOutputStream()Ljava/io/DataOutputStream;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/io/OutputStream;->write([B)V

    :cond_25
    if-eqz p4, :cond_4d

    invoke-interface {v4}, Lcom/x/google/common/io/GoogleHttpConnection;->isHttps()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v4}, Lcom/x/google/common/io/GoogleHttpConnection;->isEndToEndSecure()Z

    move-result v2

    if-nez v2, :cond_4d

    new-instance v2, Ljava/io/IOException;

    const-string v5, "The connection is not end-to-end secure."

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3b
    .catchall {:try_start_15 .. :try_end_3b} :catchall_69
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_3b} :catch_3b

    :catch_3b
    move-exception v2

    if-ge v1, p5, :cond_71

    int-to-long v5, p6

    :try_start_3f
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_69
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_42} :catch_8d

    :goto_42
    invoke-static {v3}, Lcom/x/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    invoke-static {v4}, Lcom/x/google/common/io/IoUtil;->closeConnection(Lcom/x/google/common/io/GoogleHttpConnection;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_4b
    const/4 v2, 0x0

    goto :goto_15

    :cond_4d
    :try_start_4d
    invoke-interface {v4}, Lcom/x/google/common/io/GoogleHttpConnection;->getResponseCode()I
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_69
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_3b

    move-result v1

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_59

    const/16 v2, 0x12e

    if-ne v1, v2, :cond_89

    :cond_59
    :try_start_59
    const-string v1, "Location"

    invoke-interface {v4, v1}, Lcom/x/google/common/io/GoogleHttpConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_72

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid redirect."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_69
    .catchall {:try_start_59 .. :try_end_69} :catchall_69

    :catchall_69
    move-exception v0

    invoke-static {v3}, Lcom/x/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    invoke-static {v4}, Lcom/x/google/common/io/IoUtil;->closeConnection(Lcom/x/google/common/io/GoogleHttpConnection;)V

    throw v0

    :cond_71
    :try_start_71
    throw v2

    :cond_72
    invoke-static {p1, v1}, Lcom/x/google/common/io/IoUtil;->getAbsoluteUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_69

    move-result-object p1

    if-ge v0, p7, :cond_81

    invoke-static {v3}, Lcom/x/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    invoke-static {v4}, Lcom/x/google/common/io/IoUtil;->closeConnection(Lcom/x/google/common/io/GoogleHttpConnection;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_81
    :try_start_81
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Maximum redirects reached."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_89
    .catchall {:try_start_81 .. :try_end_89} :catchall_69

    :cond_89
    invoke-static {v3}, Lcom/x/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    return-object v4

    :catch_8d
    move-exception v2

    goto :goto_42
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x200

    new-array v0, v0, [B

    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    :cond_10
    return-void
.end method

.method public static createDataInputFromBytes([B)Ljava/io/DataInput;
    .registers 2

    new-instance v0, Lcom/x/google/common/io/ByteArrayDataInput;

    invoke-direct {v0, p0}, Lcom/x/google/common/io/ByteArrayDataInput;-><init>([B)V

    return-object v0
.end method

.method public static decodeURLs([Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_12

    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/x/google/common/io/IoUtil;->decodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_12
    return-object v1
.end method

.method public static decodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    new-array v5, v4, [B

    move v0, v2

    move v3, v2

    :goto_9
    if-ge v0, v4, :cond_64

    :try_start_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sparse-switch v6, :sswitch_data_6a

    add-int/lit8 v1, v3, 0x1

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    :goto_17
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    goto :goto_9

    :sswitch_1b
    add-int/lit8 v1, v3, 0x1

    const/16 v6, 0x20

    aput-byte v6, v5, v3
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_21} :catch_22

    goto :goto_17

    :catch_22
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_2d
    :try_start_2d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v6, v0, 0x3

    if-ge v1, v6, :cond_4e

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v6, v0, 0x1

    add-int/lit8 v7, v0, 0x3

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v3
    :try_end_61
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_61} :catch_22

    add-int/lit8 v0, v0, 0x2

    goto :goto_17

    :cond_64
    const/4 v0, 0x1

    invoke-static {v5, v2, v3, v0}, Lcom/x/google/common/io/IoUtil;->decodeUtf8([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_6a
    .sparse-switch
        0x25 -> :sswitch_2d
        0x2b -> :sswitch_1b
    .end sparse-switch
.end method

.method public static decodeUtf8([BIIZ)Ljava/lang/String;
    .registers 14

    new-instance v7, Ljava/lang/StringBuffer;

    sub-int v0, p2, p1

    invoke-direct {v7, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_7
    if-ge p1, p2, :cond_bb

    add-int/lit8 v1, p1, 0x1

    aget-byte v0, p0, p1

    and-int/lit16 v8, v0, 0xff

    const/16 v0, 0x7f

    if-gt v8, v0, :cond_19

    int-to-char v0, v8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_17
    move p1, v1

    goto :goto_7

    :cond_19
    const/16 v0, 0xf5

    if-lt v8, v0, :cond_2c

    if-nez p3, :cond_27

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    int-to-char v0, v8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_17

    :cond_2c
    const/16 v4, 0xe0

    const/4 v3, 0x1

    const/16 v2, 0x80

    const/16 v0, 0x1f

    move v5, v3

    move v9, v2

    move v2, v0

    move v0, v4

    move v4, v9

    :goto_38
    if-lt v8, v0, :cond_4f

    shr-int/lit8 v0, v0, 0x1

    or-int/lit16 v6, v0, 0x80

    const/4 v0, 0x1

    if-ne v5, v0, :cond_4d

    const/4 v0, 0x4

    :goto_42
    shl-int v3, v4, v0

    add-int/lit8 v4, v5, 0x1

    shr-int/lit8 v0, v2, 0x1

    move v2, v0

    move v5, v4

    move v4, v3

    move v0, v6

    goto :goto_38

    :cond_4d
    const/4 v0, 0x5

    goto :goto_42

    :cond_4f
    and-int/2addr v2, v8

    const/4 v0, 0x0

    move v3, v0

    move v0, v2

    :goto_53
    if-ge v3, v5, :cond_81

    shl-int/lit8 v0, v0, 0x6

    if-lt v1, p2, :cond_63

    if-nez p3, :cond_7d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    if-nez p3, :cond_75

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xc0

    const/16 v6, 0x80

    if-eq v2, v6, :cond_75

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_75
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    move v1, v2

    :cond_7d
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_53

    :cond_81
    if-nez p3, :cond_85

    if-lt v0, v4, :cond_8f

    :cond_85
    const v2, 0xd800

    if-lt v0, v2, :cond_97

    const v2, 0xdfff

    if-gt v0, v2, :cond_97

    :cond_8f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_97
    const v2, 0xffff

    if-gt v0, v2, :cond_a2

    int-to-char v0, v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_17

    :cond_a2
    const/high16 v2, 0x1

    sub-int/2addr v0, v2

    const v2, 0xd800

    shr-int/lit8 v3, v0, 0xa

    or-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const v2, 0xdc00

    and-int/lit16 v0, v0, 0x3ff

    or-int/2addr v0, v2

    int-to-char v0, v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_17

    :cond_bb
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeMailto([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p0, :cond_19

    invoke-static {p0}, Lcom/x/google/common/io/IoUtil;->encodeURLs([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v1, v2}, Lcom/x/google/common/util/text/TextUtil;->join([Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_19
    invoke-static {p1}, Lcom/x/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subject="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/x/google/common/io/IoUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/x/google/common/io/IoUtil;->appendParams(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_39
    invoke-static {p2}, Lcom/x/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_59

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "body="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/x/google/common/io/IoUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/x/google/common/io/IoUtil;->appendParams(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_59
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-static {p0}, Lcom/x/google/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object v1

    array-length v2, v1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_76

    aget-byte v4, v1, v0

    const/16 v5, 0x41

    if-gt v5, v4, :cond_17

    const/16 v5, 0x5a

    if-le v4, v5, :cond_4b

    :cond_17
    const/16 v5, 0x61

    if-gt v5, v4, :cond_1f

    const/16 v5, 0x7a

    if-le v4, v5, :cond_4b

    :cond_1f
    const/16 v5, 0x30

    if-gt v5, v4, :cond_27

    const/16 v5, 0x39

    if-le v4, v5, :cond_4b

    :cond_27
    const/16 v5, 0x2d

    if-eq v4, v5, :cond_4b

    const/16 v5, 0x5f

    if-eq v4, v5, :cond_4b

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_4b

    const/16 v5, 0x21

    if-eq v4, v5, :cond_4b

    const/16 v5, 0x7e

    if-eq v4, v5, :cond_4b

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_4b

    const/16 v5, 0x27

    if-eq v4, v5, :cond_4b

    const/16 v5, 0x28

    if-eq v4, v5, :cond_4b

    const/16 v5, 0x29

    if-ne v4, v5, :cond_52

    :cond_4b
    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_52
    const/16 v5, 0x20

    if-ne v4, v5, :cond_5c

    const/16 v4, 0x2b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4f

    :cond_5c
    const/16 v5, 0x25

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v5, Lcom/x/google/common/io/IoUtil;->HEX_DIGITS:[C

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v5, Lcom/x/google/common/io/IoUtil;->HEX_DIGITS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4f

    :cond_76
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeURLParameters(Ljava/util/Vector;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [[Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/x/google/common/io/IoUtil;->encodeURLParameters([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeURLParameters([[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    :goto_7
    array-length v3, p0

    if-ge v0, v3, :cond_3e

    aget-object v3, p0, v0

    array-length v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expects type / value pairs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz v4, :cond_23

    const/16 v4, 0x26

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_23
    aget-object v4, v3, v1

    invoke-static {v4}, Lcom/x/google/common/io/IoUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/x/google/common/io/IoUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_3e
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeURLs([Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_12

    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/x/google/common/io/IoUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_12
    return-object v1
.end method

.method public static encodeUtf8(Ljava/lang/String;[BI)I
    .registers 12

    const v7, 0xd800

    const v6, 0xfc00

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v3, :cond_b7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v7, :cond_3b

    const v0, 0xdfff

    if-gt v1, v0, :cond_3b

    add-int/lit8 v0, v2, 0x1

    if-ge v0, v3, :cond_3b

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int v4, v0, v6

    and-int v5, v1, v6

    xor-int/2addr v4, v5

    const/16 v5, 0x400

    if-ne v4, v5, :cond_3b

    add-int/lit8 v2, v2, 0x1

    and-int v4, v0, v6

    if-ne v4, v7, :cond_4a

    :goto_31
    and-int/lit16 v0, v0, 0x3ff

    shl-int/lit8 v0, v0, 0xa

    and-int/lit16 v1, v1, 0x3ff

    or-int/2addr v0, v1

    const/high16 v1, 0x1

    add-int/2addr v1, v0

    :cond_3b
    const/16 v0, 0x7f

    if-gt v1, v0, :cond_4e

    if-eqz p1, :cond_44

    int-to-byte v0, v1

    aput-byte v0, p1, p2

    :cond_44
    add-int/lit8 v0, p2, 0x1

    :goto_46
    add-int/lit8 v2, v2, 0x1

    move p2, v0

    goto :goto_b

    :cond_4a
    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_31

    :cond_4e
    const/16 v0, 0x7ff

    if-gt v1, v0, :cond_67

    if-eqz p1, :cond_64

    shr-int/lit8 v0, v1, 0x6

    or-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    :cond_64
    add-int/lit8 v0, p2, 0x2

    goto :goto_46

    :cond_67
    const v0, 0xffff

    if-gt v1, v0, :cond_8c

    if-eqz p1, :cond_89

    shr-int/lit8 v0, v1, 0xc

    or-int/lit16 v0, v0, 0xe0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v4, v1, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    add-int/lit8 v0, p2, 0x2

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    :cond_89
    add-int/lit8 v0, p2, 0x3

    goto :goto_46

    :cond_8c
    if-eqz p1, :cond_b4

    shr-int/lit8 v0, v1, 0x12

    or-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v4, v1, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    add-int/lit8 v0, p2, 0x3

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    :cond_b4
    add-int/lit8 v0, p2, 0x4

    goto :goto_46

    :cond_b7
    return p2
.end method

.method public static encodeUtf8(Ljava/lang/String;)[B
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/x/google/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;[BI)I

    move-result v0

    new-array v0, v0, [B

    invoke-static {p0, v0, v1}, Lcom/x/google/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;[BI)I

    return-object v0
.end method

.method public static fetchRedirect(Lcom/x/google/common/io/HttpConnectionFactory;Ljava/lang/String;Ljava/util/Vector;II)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-interface {p0}, Lcom/x/google/common/io/HttpConnectionFactory;->isNetworkAvailable()I

    move-result v1

    if-nez v1, :cond_20

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Network not available."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_10
    move-exception v1

    move-object v2, v3

    :goto_12
    if-ge v0, p3, :cond_44

    int-to-long v4, p4

    :try_start_15
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_3c
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_60

    :goto_18
    invoke-static {v3}, Lcom/x/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lcom/x/google/common/io/IoUtil;->closeConnection(Lcom/x/google/common/io/GoogleHttpConnection;)V

    add-int/lit8 v0, v0, 0x1

    :cond_20
    const/4 v1, 0x0

    :try_start_21
    invoke-interface {p0, p1, v1}, Lcom/x/google/common/io/HttpConnectionFactory;->createConnection(Ljava/lang/String;Z)Lcom/x/google/common/io/GoogleHttpConnection;
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_62
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_10

    move-result-object v2

    :try_start_25
    invoke-static {v2, p2}, Lcom/x/google/common/io/IoUtil;->setConnectionHeaders(Lcom/x/google/common/io/GoogleHttpConnection;Ljava/util/Vector;)V

    invoke-interface {v2}, Lcom/x/google/common/io/GoogleHttpConnection;->getResponseCode()I
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_3c
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2b} :catch_65

    move-result v0

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_45

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_45

    :try_start_34
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected response."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v0

    :goto_3d
    invoke-static {v3}, Lcom/x/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lcom/x/google/common/io/IoUtil;->closeConnection(Lcom/x/google/common/io/GoogleHttpConnection;)V

    throw v0

    :cond_44
    :try_start_44
    throw v1

    :cond_45
    const-string v0, "Location"

    invoke-interface {v2, v0}, Lcom/x/google/common/io/GoogleHttpConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_55

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid redirect."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    invoke-static {p1, v0}, Lcom/x/google/common/io/IoUtil;->getAbsoluteUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_58
    .catchall {:try_start_44 .. :try_end_58} :catchall_3c

    move-result-object v0

    invoke-static {v3}, Lcom/x/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lcom/x/google/common/io/IoUtil;->closeConnection(Lcom/x/google/common/io/GoogleHttpConnection;)V

    return-object v0

    :catch_60
    move-exception v1

    goto :goto_18

    :catchall_62
    move-exception v0

    move-object v2, v3

    goto :goto_3d

    :catch_65
    move-exception v1

    goto :goto_12
.end method

.method public static getAbsoluteUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v5, 0x3a

    const/16 v4, 0x2f

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-static {p0}, Lcom/x/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-object p1

    :cond_d
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_17

    const/4 v1, 0x7

    if-lt v0, v1, :cond_c

    :cond_17
    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v0, v2, :cond_39

    :goto_2c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_39
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2c

    :cond_3e
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v0, v2, :cond_4e

    if-eq v1, v2, :cond_5a

    :cond_4e
    if-eq v0, v2, :cond_80

    if-eq v1, v2, :cond_80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_56
    :goto_56
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_5a
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v0, v2, :cond_84

    :goto_73
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_80
    if-ne v0, v2, :cond_56

    move v0, v1

    goto :goto_56

    :cond_84
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_73

    :cond_89
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    if-le v1, v0, :cond_aa

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_c

    :cond_aa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_c
.end method

.method public static getMailtoBody(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p0, v0}, Lcom/x/google/common/io/IoUtil;->getMailtoParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMailtoParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x26

    const/4 v4, -0x1

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_17
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_24

    const-string v0, ""

    :goto_23
    return-object v0

    :cond_24
    if-lez v0, :cond_50

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_38

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_50

    :cond_38
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v4, :cond_47

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_47
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/common/io/IoUtil;->decodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method

.method public static getMailtoSubject(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "subject"

    invoke-static {p0, v0}, Lcom/x/google/common/io/IoUtil;->getMailtoParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMailtoTo(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_e

    new-array v0, v3, [Ljava/lang/String;

    :goto_d
    return-object v0

    :cond_e
    const/16 v0, 0x3f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1b
    if-ne v1, v0, :cond_20

    new-array v0, v3, [Ljava/lang/String;

    goto :goto_d

    :cond_20
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-static {v0, v1}, Lcom/x/google/common/util/text/TextUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/common/io/IoUtil;->decodeURLs([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public static inflate([BIII)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    add-int/lit8 v1, p2, 0x1

    new-array v1, v1, [B

    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v4, p2, 0x1

    invoke-direct {v3, v1, v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual {v2, v3}, Lcom/x/google/common/Config;->getInflaterInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    new-array v3, p3, [B

    move v1, p3

    :goto_1a
    if-lez v1, :cond_26

    :try_start_1c
    invoke-virtual {v2, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_26

    sub-int/2addr v1, v4

    add-int/2addr v0, v4

    goto :goto_1a

    :cond_26
    if-eqz v1, :cond_56

    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] bytes, but only read ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_51
    .catchall {:try_start_1c .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_56
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-object v3
.end method

.method public static isUrlSafe(Ljava/lang/String;)Z
    .registers 14

    const-wide/16 v11, 0x1

    const-wide/16 v9, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    move v3, v2

    move v0, v1

    :goto_c
    if-ge v3, v4, :cond_42

    if-eqz v0, :cond_42

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x40

    if-ge v0, v5, :cond_2a

    const-wide v5, 0x3ff678200000000L

    shl-long v7, v11, v0

    and-long/2addr v5, v7

    cmp-long v0, v5, v9

    if-eqz v0, :cond_28

    move v0, v1

    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_28
    move v0, v2

    goto :goto_25

    :cond_2a
    const/16 v5, 0x80

    if-ge v0, v5, :cond_40

    const-wide v5, 0x47fffffe87fffffeL

    add-int/lit8 v0, v0, -0x40

    shl-long v7, v11, v0

    and-long/2addr v5, v7

    cmp-long v0, v5, v9

    if-eqz v0, :cond_3e

    move v0, v1

    goto :goto_25

    :cond_3e
    move v0, v2

    goto :goto_25

    :cond_40
    move v0, v2

    goto :goto_25

    :cond_42
    return v0
.end method

.method public static readAllBytes(Ljava/io/InputStream;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/x/google/common/io/IoUtil;->readAllBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static readAllBytes(Ljava/io/InputStream;I)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_18

    :try_start_5
    invoke-static {p0, v0}, Lcom/x/google/common/io/IoUtil;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_13

    :try_start_8
    invoke-static {v0}, Lcom/x/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_18

    move-result-object v0

    invoke-static {p0}, Lcom/x/google/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    return-object v0

    :catchall_13
    move-exception v1

    :try_start_14
    invoke-static {v0}, Lcom/x/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    throw v1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception v0

    invoke-static {p0}, Lcom/x/google/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    throw v0
.end method

.method private static setConnectionHeaders(Lcom/x/google/common/io/GoogleHttpConnection;Ljava/util/Vector;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    move v1, v2

    :goto_8
    if-ge v1, v3, :cond_1e

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    aget-object v4, v0, v2

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-interface {p0, v4, v0}, Lcom/x/google/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_1e
    return-void
.end method

.method public static skipBytes(Ljava/io/DataInput;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    if-lez p1, :cond_1f

    const/16 v0, 0x800

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [B

    :goto_12
    if-lez p1, :cond_1f

    array-length v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, v1}, Ljava/io/DataInput;->readFully([BII)V

    sub-int/2addr p1, v1

    goto :goto_12

    :cond_1f
    return-void
.end method
