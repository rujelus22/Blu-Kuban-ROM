.class public Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR_INVALID_REDIRECT:Ljava/lang/String; = "Invalid redirect."

.field public static final ERROR_MAX_REDIRECTS:Ljava/lang/String; = "Maximum redirects reached."

.field public static final ERROR_NOT_SECURE:Ljava/lang/String; = "The connection is not end-to-end secure."

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

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->HEX_DIGITS:[C

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

    const/16 v2, 0x3f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    move v0, v2

    :goto_14
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1b
    return-void

    :cond_1c
    const/16 v0, 0x26

    goto :goto_14
.end method

.method public static closeConnection(Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;->close()V
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

.method public static connect(Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;Ljava/lang/String;Ljava/util/Vector;[BZIII)Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;->isNetworkAvailable()I

    move-result v2

    if-nez v2, :cond_e

    new-instance p0, Ljava/io/IOException;

    const-string p1, "Network not available."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    const/4 v2, 0x0

    move-object v3, p1

    :goto_10
    const/4 p1, 0x0

    move v4, p1

    :goto_12
    const/4 p1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz p3, :cond_3b

    const/4 v7, 0x1

    :goto_18
    :try_start_18
    invoke-interface {p0, v3, v7}, Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;->createConnection(Ljava/lang/String;Z)Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_d1
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_d9

    move-result-object v7

    if-eqz p2, :cond_3d

    :try_start_1e
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v8

    const/4 p1, 0x0

    move v9, p1

    :goto_24
    if-ge v9, v8, :cond_3d

    invoke-virtual {p2, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v10, p1, v10

    const/4 v11, 0x1

    aget-object p1, p1, v11

    invoke-interface {v7, v10, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p1, v9, 0x1

    move v9, p1

    goto :goto_24

    :cond_3b
    const/4 v7, 0x0

    goto :goto_18

    :cond_3d
    if-eqz p3, :cond_e0

    invoke-interface {v7}, Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;->openDataOutputStream()Ljava/io/DataOutputStream;
    :try_end_42
    .catchall {:try_start_1e .. :try_end_42} :catchall_d5
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_42} :catch_de

    move-result-object p1

    :try_start_43
    move-object v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :goto_49
    if-eqz p4, :cond_7b

    invoke-interface {v7}, Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;->isHttps()Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-interface {v7}, Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;->isEndToEndSecure()Z

    move-result v5

    if-nez v5, :cond_7b

    new-instance v5, Ljava/io/IOException;

    const-string v8, "The connection is not end-to-end secure."

    invoke-direct {v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_5f
    .catchall {:try_start_43 .. :try_end_5f} :catchall_97
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_5f} :catch_5f

    :catch_5f
    move-exception v5

    move-object v12, v5

    move-object v5, p1

    move-object p1, v12

    :goto_63
    move v0, v4

    move/from16 v1, p5

    if-ge v0, v1, :cond_a2

    move/from16 v0, p6

    int-to-long v0, v0

    move-wide v8, v0

    :try_start_6c
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_a3
    .catch Ljava/lang/InterruptedException; {:try_start_6c .. :try_end_6f} :catch_cf

    :goto_6f
    invoke-static {v5}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    if-nez v6, :cond_77

    invoke-static {v7}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->closeConnection(Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;)V

    :cond_77
    add-int/lit8 p1, v4, 0x1

    move v4, p1

    goto :goto_12

    :cond_7b
    :try_start_7b
    invoke-interface {v7}, Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;->getResponseCode()I
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_97
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_5f

    move-result v4

    const/16 v5, 0x12d

    if-eq v4, v5, :cond_87

    const/16 v5, 0x12e

    if-ne v4, v5, :cond_c5

    :cond_87
    :try_start_87
    const-string v4, "Location"

    invoke-interface {v7, v4}, Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a7

    new-instance p0, Ljava/io/IOException;

    const-string p2, "Invalid redirect."

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_97
    .catchall {:try_start_87 .. :try_end_97} :catchall_97

    :catchall_97
    move-exception p0

    move-object p2, v7

    :goto_99
    invoke-static {p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    if-nez v6, :cond_a1

    invoke-static {p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->closeConnection(Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;)V

    :cond_a1
    throw p0

    :cond_a2
    :try_start_a2
    throw p1
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a3

    :catchall_a3
    move-exception p0

    move-object p1, v5

    move-object p2, v7

    goto :goto_99

    :cond_a7
    :try_start_a7
    invoke-static {v3, v4}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->getAbsoluteUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_97

    move-result-object v3

    move v0, v2

    move/from16 v1, p7

    if-ge v0, v1, :cond_bd

    invoke-static {p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    if-nez v6, :cond_b8

    invoke-static {v7}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->closeConnection(Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;)V

    :cond_b8
    add-int/lit8 p1, v2, 0x1

    move v2, p1

    goto/16 :goto_10

    :cond_bd
    :try_start_bd
    new-instance p0, Ljava/io/IOException;

    const-string p2, "Maximum redirects reached."

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_c5
    .catchall {:try_start_bd .. :try_end_c5} :catchall_97

    :cond_c5
    const/4 p0, 0x1

    invoke-static {p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    if-nez p0, :cond_ce

    invoke-static {v7}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->closeConnection(Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;)V

    :cond_ce
    return-object v7

    :catch_cf
    move-exception p1

    goto :goto_6f

    :catchall_d1
    move-exception p0

    move-object p2, p1

    move-object p1, v5

    goto :goto_99

    :catchall_d5
    move-exception p0

    move-object p1, v5

    move-object p2, v7

    goto :goto_99

    :catch_d9
    move-exception v7

    move-object v12, v7

    move-object v7, p1

    move-object p1, v12

    goto :goto_63

    :catch_de
    move-exception p1

    goto :goto_63

    :cond_e0
    move-object p1, v5

    goto/16 :goto_49
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

.method public static decodeURLs([Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->decodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-object v0
.end method

.method public static decodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [B

    move v2, v7

    move v3, v7

    :goto_9
    if-ge v2, v0, :cond_66

    :try_start_b
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_6c

    add-int/lit8 v5, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    move v3, v5

    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :sswitch_1b
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x20

    aput-byte v5, v1, v3

    move v3, v4

    goto :goto_18

    :sswitch_23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v2, 0x3

    if-ge v4, v5, :cond_4f

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
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_44} :catch_44

    :catch_44
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4f
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v2, 0x3

    :try_start_55
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v3
    :try_end_62
    .catch Ljava/lang/NumberFormatException; {:try_start_55 .. :try_end_62} :catch_44

    add-int/lit8 v2, v2, 0x2

    move v3, v4

    goto :goto_18

    :cond_66
    const/4 v0, 0x1

    invoke-static {v1, v7, v3, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->decodeUtf8([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_6c
    .sparse-switch
        0x25 -> :sswitch_23
        0x2b -> :sswitch_1b
    .end sparse-switch
.end method

.method public static decodeUtf8([BIIZ)Ljava/lang/String;
    .registers 16

    const v10, 0xd800

    const/16 v9, 0x80

    const/4 v8, 0x1

    new-instance v0, Ljava/lang/StringBuffer;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    move v1, p1

    :goto_e
    if-ge v1, p2, :cond_b5

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0x7f

    if-gt v1, v3, :cond_20

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v2

    goto :goto_e

    :cond_20
    const/16 v3, 0xf5

    if-lt v1, v3, :cond_34

    if-nez p3, :cond_2e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v2

    goto :goto_e

    :cond_34
    const/16 v3, 0xe0

    const/16 v4, 0x1f

    move v5, v8

    move v6, v3

    move v3, v4

    move v4, v9

    :goto_3c
    if-lt v1, v6, :cond_4d

    shr-int/lit8 v6, v6, 0x1

    or-int/lit16 v6, v6, 0x80

    if-ne v5, v8, :cond_4b

    const/4 v7, 0x4

    :goto_45
    shl-int/2addr v4, v7

    add-int/lit8 v5, v5, 0x1

    shr-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :cond_4b
    const/4 v7, 0x5

    goto :goto_45

    :cond_4d
    and-int/2addr v1, v3

    const/4 v3, 0x0

    move v11, v3

    move v3, v2

    move v2, v1

    move v1, v11

    :goto_53
    if-ge v1, v5, :cond_7e

    shl-int/lit8 v2, v2, 0x6

    if-lt v3, p2, :cond_63

    if-nez p3, :cond_7b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    if-nez p3, :cond_73

    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xc0

    if-eq v6, v9, :cond_73

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_73
    add-int/lit8 v6, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    move v3, v6

    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    :cond_7e
    if-nez p3, :cond_82

    if-lt v2, v4, :cond_89

    :cond_82
    if-lt v2, v10, :cond_91

    const v1, 0xdfff

    if-gt v2, v1, :cond_91

    :cond_89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTF8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_91
    const v1, 0xffff

    if-gt v2, v1, :cond_9d

    int-to-char v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v3

    goto/16 :goto_e

    :cond_9d
    const/high16 v1, 0x1

    sub-int v1, v2, v1

    shr-int/lit8 v2, v1, 0xa

    or-int/2addr v2, v10

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const v2, 0xdc00

    and-int/lit16 v1, v1, 0x3ff

    or-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v3

    goto/16 :goto_e

    :cond_b5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

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

    invoke-static {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->encodeURLs([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/util/text/TextUtil;->join([Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_19
    invoke-static {p1}, Lcom/google/android/apps/uploader/googlemobile/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subject="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->appendParams(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_39
    invoke-static {p2}, Lcom/google/android/apps/uploader/googlemobile/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_59

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "body="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->appendParams(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_59
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-static {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_76

    aget-byte v4, v0, v3

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

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_52
    const/16 v5, 0x20

    if-ne v4, v5, :cond_5c

    const/16 v4, 0x2b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4f

    :cond_5c
    const/16 v5, 0x25

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v5, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->HEX_DIGITS:[C

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v5, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->HEX_DIGITS:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4f

    :cond_76
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeURLParameters(Ljava/util/Vector;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [[Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->encodeURLParameters([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeURLParameters([[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v5

    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_3e

    aget-object v2, p0, v1

    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expects type / value pairs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_23

    const/16 v3, 0x26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_23
    aget-object v3, v2, v5

    invoke-static {v3}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeURLs([Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-object v0
.end method

.method public static encodeUtf8(Ljava/lang/String;[BI)I
    .registers 13

    const v8, 0xd800

    const v7, 0xfc00

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, p2

    :goto_c
    if-ge v1, v0, :cond_bc

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v8, :cond_bd

    const v4, 0xdfff

    if-gt v3, v4, :cond_bd

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v0, :cond_bd

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    and-int v5, v4, v7

    and-int v6, v3, v7

    xor-int/2addr v5, v6

    const/16 v6, 0x400

    if-ne v5, v6, :cond_bd

    add-int/lit8 v1, v1, 0x1

    and-int v5, v4, v7

    if-ne v5, v8, :cond_35

    move v9, v4

    move v4, v3

    move v3, v9

    :cond_35
    and-int/lit16 v3, v3, 0x3ff

    shl-int/lit8 v3, v3, 0xa

    and-int/lit16 v4, v4, 0x3ff

    or-int/2addr v3, v4

    const/high16 v4, 0x1

    add-int/2addr v3, v4

    move v9, v3

    move v3, v1

    move v1, v9

    :goto_42
    const/16 v4, 0x7f

    if-gt v1, v4, :cond_53

    if-eqz p1, :cond_4b

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    :cond_4b
    add-int/lit8 v1, v2, 0x1

    :goto_4d
    add-int/lit8 v2, v3, 0x1

    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_c

    :cond_53
    const/16 v4, 0x7ff

    if-gt v1, v4, :cond_6c

    if-eqz p1, :cond_69

    shr-int/lit8 v4, v1, 0x6

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    add-int/lit8 v4, v2, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v4

    :cond_69
    add-int/lit8 v1, v2, 0x2

    goto :goto_4d

    :cond_6c
    const v4, 0xffff

    if-gt v1, v4, :cond_91

    if-eqz p1, :cond_8e

    shr-int/lit8 v4, v1, 0xc

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v2, 0x2

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v4

    :cond_8e
    add-int/lit8 v1, v2, 0x3

    goto :goto_4d

    :cond_91
    if-eqz p1, :cond_b9

    shr-int/lit8 v4, v1, 0x12

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v2, 0x2

    shr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v2, 0x3

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v4

    :cond_b9
    add-int/lit8 v1, v2, 0x4

    goto :goto_4d

    :cond_bc
    return v2

    :cond_bd
    move v9, v3

    move v3, v1

    move v1, v9

    goto :goto_42
.end method

.method public static encodeUtf8(Ljava/lang/String;)[B
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;[BI)I

    move-result v0

    new-array v0, v0, [B

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;[BI)I

    return-object v0
.end method

.method public static getAbsoluteUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v2, 0x3a

    const/16 v5, 0x2f

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-static {p0}, Lcom/google/android/apps/uploader/googlemobile/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object v0, p1

    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1a

    const/4 v1, 0x7

    if-ge v0, v1, :cond_1a

    move-object v0, p1

    goto :goto_d

    :cond_1a
    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v0, v3, :cond_3d

    move-object v0, p0

    :goto_30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_3d
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    :cond_42
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v0, v3, :cond_52

    if-eq v1, v3, :cond_c5

    :cond_52
    if-eq v0, v3, :cond_84

    if-eq v1, v3, :cond_84

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_5a
    :goto_5a
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_5e
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8d

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v1, v3, :cond_88

    :goto_77
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_84
    if-ne v0, v3, :cond_5a

    move v0, v1

    goto :goto_5a

    :cond_88
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_77

    :cond_8d
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x2

    if-le v2, v1, :cond_ae

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    :cond_ae
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    :cond_c5
    move-object v0, p0

    goto :goto_5e
.end method

.method public static getMailtoBody(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->getMailtoParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMailtoParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x26

    const/4 v5, 0x1

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

    :goto_18
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_25

    const-string v0, ""

    :goto_24
    return-object v0

    :cond_25
    if-lez v0, :cond_51

    sub-int v2, v0, v5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_39

    sub-int v2, v0, v5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_51

    :cond_39
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v4, :cond_48

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_48
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->decodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method public static getMailtoSubject(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "subject"

    invoke-static {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->getMailtoParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    add-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_e

    new-array v0, v3, [Ljava/lang/String;

    :goto_d
    return-object v0

    :cond_e
    const/16 v1, 0x3f

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_1b
    if-ne v0, v1, :cond_20

    new-array v0, v3, [Ljava/lang/String;

    goto :goto_d

    :cond_20
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-static {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/util/text/TextUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->decodeURLs([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public static isUrlSafe(Ljava/lang/String;)Z
    .registers 15

    const-wide/16 v12, 0x1

    const-wide/16 v10, 0x0

    const/16 v9, 0x40

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v7

    move v2, v8

    :goto_e
    if-ge v1, v0, :cond_43

    if-eqz v2, :cond_43

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ge v2, v9, :cond_2b

    const-wide v3, 0x3ff678200000000L

    shl-long v5, v12, v2

    and-long v2, v3, v5

    cmp-long v2, v2, v10

    if-eqz v2, :cond_29

    move v2, v8

    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_29
    move v2, v7

    goto :goto_26

    :cond_2b
    const/16 v3, 0x80

    if-ge v2, v3, :cond_41

    const-wide v3, 0x47fffffe87fffffeL

    sub-int/2addr v2, v9

    shl-long v5, v12, v2

    and-long v2, v3, v5

    cmp-long v2, v2, v10

    if-eqz v2, :cond_3f

    move v2, v8

    goto :goto_26

    :cond_3f
    move v2, v7

    goto :goto_26

    :cond_41
    move v2, v7

    goto :goto_26

    :cond_43
    return v2
.end method

.method public static readAllBytes(Ljava/io/InputStream;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->readAllBytes(Ljava/io/InputStream;I)[B

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
    invoke-static {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_13

    :try_start_8
    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_18

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    return-object v0

    :catchall_13
    move-exception v1

    :try_start_14
    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    throw v1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception v0

    invoke-static {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    throw v0
.end method

.method public static skipBytes(Ljava/io/DataInput;I)V
    .registers 6
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
    if-lez p1, :cond_20

    const/16 v0, 0x800

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [B

    move v1, p1

    :goto_13
    if-lez v1, :cond_20

    array-length v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {p0, v0, v3, v2}, Ljava/io/DataInput;->readFully([BII)V

    sub-int/2addr v1, v2

    goto :goto_13

    :cond_20
    return-void
.end method
