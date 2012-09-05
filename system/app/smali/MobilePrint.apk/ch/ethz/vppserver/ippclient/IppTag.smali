.class public Lch/ethz/vppserver/ippclient/IppTag;
.super Ljava/lang/Object;
.source "IppTag.java"


# static fields
.field private static final ATTRIBUTES_BOOLEAN_FALSE_VALUE:B = 0x0t

.field private static final ATTRIBUTES_BOOLEAN_TRUE_VALUE:B = 0x1t

.field private static final ATTRIBUTES_BOOLEAN_VALUE_LENGTH:S = 0x1s

.field private static final ATTRIBUTES_CHARSET:Ljava/lang/String; = "attributes-charset"

.field private static final ATTRIBUTES_CHARSET_VALUE:Ljava/lang/String; = "utf-8"

.field private static final ATTRIBUTES_INTEGER_VALUE_LENGTH:S = 0x4s

.field private static final ATTRIBUTES_NATURAL_LANGUAGE:Ljava/lang/String; = "attributes-natural-language"

.field private static final ATTRIBUTES_NATURAL_LANGUAGE_VALUE:Ljava/lang/String; = "en-us"

.field private static final ATTRIBUTES_RANGE_OF_INT_VALUE_LENGTH:S = 0x8s

.field private static final ATTRIBUTES_RESOLUTION_VALUE_LENGTH:S = 0x9s

.field private static final BOOLEAN_TAG:B = 0x22t

.field private static final CHARSET_TAG:B = 0x47t

.field private static final END_OF_ATTRIBUTES_TAG:B = 0x3t

.field private static final ENUM_TAG:B = 0x23t

.field private static final EVENT_NOTIFICATION_ATTRIBUTES_TAG:B = 0x7t

.field private static final INTEGER_TAG:B = 0x21t

.field private static final JOB_ATTRIBUTES_TAG:B = 0x2t

.field private static final KEYWORD_TAG:B = 0x44t

.field private static final MAJOR_VERSION:B = 0x1t

.field private static final MIME_MEDIA_TYPE_TAG:B = 0x49t

.field private static final MINOR_VERSION:B = 0x1t

.field private static final NAME_WITHOUT_LANGUAGE_TAG:B = 0x42t

.field private static final NATURAL_LANGUAGE_TAG:B = 0x48t

.field private static final NULL_LENGTH:S = 0x0s

.field private static final OPERATION_ATTRIBUTES_TAG:B = 0x1t

.field private static final PRINTER_ATTRIBUTES_TAG:B = 0x4t

.field private static final RANGE_OF_INTEGER_TAG:B = 0x33t

.field private static final RESOLUTION_TAG:B = 0x32t

.field private static final SUBSCRIPTION_ATTRIBUTES_TAG:B = 0x6t

.field private static final UNSUPPORTED_ATTRIBUTES_TAG:B = 0x5t

.field private static final URI_SCHEME_TAG:B = 0x46t

.field private static final URI_TAG:B = 0x45t

.field private static requestID:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput v0, Lch/ethz/vppserver/ippclient/IppTag;->requestID:I

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 2
    .parameter "ippBuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 428
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lch/ethz/vppserver/ippclient/IppTag;->getBoolean(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getBoolean(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "ippBuf"
    .parameter "attributeName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 439
    if-nez p0, :cond_c

    .line 440
    const-string v0, "cups4j"

    const-string v1, "IppTag.getBoolean(): ippBuf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 p0, 0x0

    .line 453
    .end local p0
    :goto_b
    return-object p0

    .line 444
    .restart local p0
    :cond_c
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 445
    if-eqz p1, :cond_26

    .line 446
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 447
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 452
    :goto_22
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_b

    .line 449
    :cond_26
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_22
.end method

.method public static getBoolean(Ljava/nio/ByteBuffer;Ljava/lang/String;Z)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "ippBuf"
    .parameter "attributeName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 466
    if-nez p0, :cond_d

    .line 467
    const-string v0, "cups4j"

    const-string v1, "IppTag.getBoolean(): ippBuf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 p0, 0x0

    .line 485
    .end local p0
    :goto_c
    return-object p0

    .line 471
    .restart local p0
    :cond_d
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 472
    if-eqz p1, :cond_2c

    .line 473
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 474
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 479
    :goto_23
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 480
    if-eqz p2, :cond_30

    .line 481
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_c

    .line 476
    :cond_2c
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_23

    .line 483
    :cond_30
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_c
.end method

.method public static getCharset(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 2
    .parameter "ippBuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 197
    invoke-static {p0, v0, v0}, Lch/ethz/vppserver/ippclient/IppTag;->getCharset(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getCharset(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "ippBuf"
    .parameter "attributeName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lch/ethz/vppserver/ippclient/IppTag;->getCharset(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getCharset(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "ippBuf"
    .parameter "attributeName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 221
    const/16 v0, 0x47

    invoke-static {p0, v0, p1, p2}, Lch/ethz/vppserver/ippclient/IppTag;->getUsAscii(Ljava/nio/ByteBuffer;BLjava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getEnd(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "ippBuf"

    .prologue
    .line 753
    if-nez p0, :cond_b

    .line 754
    const-string v0, "cups4j"

    const-string v1, "IppTag.getEnd(): ippBuf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const/4 p0, 0x0

    .line 758
    .end local p0
    :goto_a
    return-object p0

    .line 757
    .restart local p0
    :cond_b
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_a
.end method

.method public static getEnum(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 2
    .parameter "ippBuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 495
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lch/ethz/vppserver/ippclient/IppTag;->getEnum(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getEnum(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "ippBuf"
    .parameter "attributeName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 506
    if-nez p0, :cond_c

    .line 507
    const-string v0, "cups4j"

    const-string v1, "IppTag.getEnum(): ippBuf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 p0, 0x0

    .line 519
    .end local p0
    :goto_b
    return-object p0

    .line 511
    .restart local p0
    :cond_c
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 512
    if-eqz p1, :cond_26

    .line 513
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 514
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 518
    :goto_22
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_b

    .line 516
    :cond_26
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_22
.end method

.method public static getEnum(Ljava/nio/ByteBuffer;Ljava/lang/String;I)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "ippBuf"
    .parameter "attributeName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 532
    if-nez p0, :cond_b

    .line 533
    const-string v0, "cups4j"

    const-string v1, "IppTag.getEnum(): ippBuf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 p0, 0x0

    .line 546
    .end local p0
    :goto_a
    return-object p0

    .line 537
    .restart local p0
    :cond_b
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 538
    if-eqz p1, :cond_29

    .line 539
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 540
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 544
    :goto_21
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 545
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_a

    .line 542
    :cond_29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_21
.end method

.method public static getEventNotificationAttributesTag(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "ippBuf"

    .prologue
    .line 154
    if-nez p0, :cond_b

    .line 155
    const-string v0, "cups4j"

    const-string v1, "IppTag.getEventNotificationAttributesTag(): ippBuf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 p0, 0x0

    .line 159
    .end local p0
    :goto_a
    return-object p0

    .line 158
    .restart local p0
    :cond_b
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_a
.end method

.method public static getInteger(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 2
    .parameter "ippBuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 366
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lch/ethz/vppserver/ippclient/IppTag;->getInteger(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getInteger(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "ippBuf"
    .parameter "attributeName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 376
    if-nez p0, :cond_c

    .line 377
    const-string v0, "cups4j"

    const-string v1, "IppTag.getInteger(): ippBuf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 p0, 0x0

    .line 391
    .end local p0
    :goto_b
    return-object p0

    .line 381
    .restart local p0
    :cond_c
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 382
    if-eqz p1, :cond_26

    .line 383
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 384
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 389
    :goto_22
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_b

    .line 386
    :cond_26
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_22
.end method

.method public static getInteger(Ljava/nio/ByteBuffer;Ljava/lang/String;I)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "ippBuf"
    .parameter "attributeName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 403
    if-nez p0, :cond_b

    .line 404
    const-string v0, "cups4j"

    const-string v1, "IppTag.getInteger(): ippBuf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 p0, 0x0

    .line 418
    .end local p0
    :goto_a
    return-object p0

    .line 408
    .restart local p0
    :cond_b
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 409
    if-eqz p1, :cond_29

    .line 410
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 411
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 416
    :goto_21
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 417
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_a

    .line 413
    :cond_29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_21
.end method

.method public static getJobAttributesTag(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "ippBuf"

    .prologue
    .line 126
    if-nez p0, :cond_b

    .line 127
    const-string v0, "cups4j"

    const-string v1, "IppTag.getJobAttributesTag(): ippBuf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 p0, 0x0

    .line 131
    .end local p0
    :goto_a
    return-object p0

    .line 130
    .restart local p0
    :cond_b
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_a
.end method

.method public static getKeyword(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 2
    .parameter "ippBuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 720
    invoke-static {p0, v0, v0}, Lch/ethz/vppserver/ippclient/IppTag;->getKeyword(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getKeyword(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "ippBuf"
    .parameter "attributeName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 731
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lch/ethz/vppserver/ippclient/IppTag;->getKeyword(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getKeyword(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "ippBuf"
    .parameter "attributeName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 744
    const/16 v0, 0x44

    invoke-static {p0, v0, p1, p2}, Lch/ethz/vppserver/ippclient/IppTag;->getUsAscii(Ljava/nio/ByteBuffer;BLjava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getMimeMediaType(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 2
    .parameter "ippBuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 685
    invoke-static {p0, v0, v0}, Lch/ethz/vppserver/ippclient/IppTag;->getMimeMediaType(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getMimeMediaType(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "ippBuf"
    .parameter "attributeName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 697
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lch/ethz/vppserver/ippclient/IppTag;->getMimeMediaType(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getMimeMediaType(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "ippBuf"
    .parameter "attributeName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 710
    const/16 v0, 0x49

    invoke-static {p0, v0, p1, p2}, Lch/ethz/vppserver/ippclient/IppTag;->getUsAscii(Ljava/nio/ByteBuffer;BLjava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getNameWithoutLanguage(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "ippBuf"
    .parameter "attributeName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 337
    if-nez p0, :cond_c

    .line 338
    const-string v0, "cups4j"

    const-string v1, "IppTag.getNameWithoutLanguage(): ippBuf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 p0, 0x0

    .line 357
    .end local p0
    :goto_b
    return-object p0

    .line 342
    .restart local p0
    :cond_c
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 344
    if-eqz p1, :cond_34

    .line 345
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 346
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 351
    :goto_22
    if-eqz p2, :cond_38

    .line 352
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 353
    invoke-static {p2}, Lch/ethz/vppserver/ippclient/IppUtil;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_b

    .line 348
    :cond_34
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_22

    .line 355
    :cond_38
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_b
.end method

.method public static getNaturalLanguage(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 2
    .parameter "ippBuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 231
    invoke-static {p0, v0, v0}, Lch/ethz/vppserver/ippclient/IppTag;->getNaturalLanguage(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getNaturalLanguage(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "ippBuf"
    .parameter "attributeName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lch/ethz/vppserver/ippclient/IppTag;->getNaturalLanguage(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getNaturalLanguage(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "ippBuf"
    .parameter "attributeName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 256
    const/16 v0, 0x48

    invoke-static {p0, v0, p1, p2}, Lch/ethz/vppserver/ippclient/IppTag;->getUsAscii(Ljava/nio/ByteBuffer;BLjava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getOperation(Ljava/nio/ByteBuffer;S)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "ippBuf"
    .parameter "operation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-static {p0, p1, v0, v0}, Lch/ethz/vppserver/ippclient/IppTag;->getOperation(Ljava/nio/ByteBuffer;SLjava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getOperation(Ljava/nio/ByteBuffer;SLjava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "ippBuf"
    .parameter "operation"
    .parameter "charset"
    .parameter "naturalLanguage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 85
    if-nez p0, :cond_c

    .line 86
    const-string v0, "cups4j"

    const-string v1, "IppTag.getOperation(): ippBuf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 p0, 0x0

    .line 103
    .end local p0
    :goto_b
    return-object p0

    .line 89
    .restart local p0
    :cond_c
    if-nez p2, :cond_10

    .line 90
    const-string p2, "utf-8"

    .line 92
    :cond_10
    if-nez p3, :cond_14

    .line 93
    const-string p3, "en-us"

    .line 95
    :cond_14
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 96
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 97
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 98
    sget v0, Lch/ethz/vppserver/ippclient/IppTag;->requestID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lch/ethz/vppserver/ippclient/IppTag;->requestID:I

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 99
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 101
    const-string v0, "attributes-charset"

    invoke-static {p0, v0, p2}, Lch/ethz/vppserver/ippclient/IppTag;->getCharset(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 102
    const-string v0, "attributes-natural-language"

    invoke-static {p0, v0, p3}, Lch/ethz/vppserver/ippclient/IppTag;->getNaturalLanguage(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 103
    goto :goto_b
.end method

.method public static getOperationAttributesTag(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "ippBuf"

    .prologue
    .line 112
    if-nez p0, :cond_b

    .line 113
    const-string v0, "cups4j"

    const-string v1, "IppTag.getOperationAttributesTag(): ippBuf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 p0, 0x0

    .line 117
    .end local p0
    :goto_a
    return-object p0

    .line 116
    .restart local p0
    :cond_b
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_a
.end method

.method public static getPrinterAttributesTag(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "ippBuf"

    .prologue
    .line 182
    if-nez p0, :cond_b

    .line 183
    const-string v0, "cups4j"

    const-string v1, "IppTag.getPrinterAttributesTag(): ippBuf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 p0, 0x0

    .line 187
    .end local p0
    :goto_a
    return-object p0

    .line 186
    .restart local p0
    :cond_b
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_a
.end method

.method public static getRangeOfInteger(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 2
    .parameter "ippBuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 621
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lch/ethz/vppserver/ippclient/IppTag;->getRangeOfInteger(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getRangeOfInteger(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "ippBuf"
    .parameter "attributeName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 633
    if-nez p0, :cond_c

    .line 634
    const-string v0, "cups4j"

    const-string v1, "IppTag.getRangeOfInteger(): ippBuf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 p0, 0x0

    .line 646
    .end local p0
    :goto_b
    return-object p0

    .line 638
    .restart local p0
    :cond_c
    const/16 v0, 0x33

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 639
    if-eqz p1, :cond_26

    .line 640
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 641
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 645
    :goto_22
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_b

    .line 643
    :cond_26
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_22
.end method

.method public static getRangeOfInteger(Ljava/nio/ByteBuffer;Ljava/lang/String;II)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "ippBuf"
    .parameter "attributeName"
    .parameter "value1"
    .parameter "value2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 660
    if-nez p0, :cond_b

    .line 661
    const-string v0, "cups4j"

    const-string v1, "IppTag.getRangeOfInteger(): ippBuf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/4 p0, 0x0

    .line 675
    .end local p0
    :goto_a
    return-object p0

    .line 665
    .restart local p0
    :cond_b
    const/16 v0, 0x33

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 666
    if-eqz p1, :cond_2d

    .line 667
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 668
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 672
    :goto_21
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 673
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 674
    invoke-virtual {p0, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_a

    .line 670
    :cond_2d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_21
.end method

.method public static getResolution(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 2
    .parameter "ippBuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 556
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lch/ethz/vppserver/ippclient/IppTag;->getResolution(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getResolution(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "ippBuf"
    .parameter "attributeName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 567
    if-nez p0, :cond_c

    .line 568
    const-string v0, "cups4j"

    const-string v1, "IppTag.getResolution(): ippBuf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/4 p0, 0x0

    .line 580
    .end local p0
    :goto_b
    return-object p0

    .line 572
    .restart local p0
    :cond_c
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 573
    if-eqz p1, :cond_26

    .line 574
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 575
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 579
    :goto_22
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_b

    .line 577
    :cond_26
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_22
.end method

.method public static getResolution(Ljava/nio/ByteBuffer;Ljava/lang/String;IIB)Ljava/nio/ByteBuffer;
    .registers 7
    .parameter "ippBuf"
    .parameter "attributeName"
    .parameter "value1"
    .parameter "value2"
    .parameter "value3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 595
    if-nez p0, :cond_b

    .line 596
    const-string v0, "cups4j"

    const-string v1, "IppTag.getResolution(): ippBuf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 p0, 0x0

    .line 611
    .end local p0
    :goto_a
    return-object p0

    .line 600
    .restart local p0
    :cond_b
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 601
    if-eqz p1, :cond_30

    .line 602
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 603
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 607
    :goto_21
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 608
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 609
    invoke-virtual {p0, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 610
    invoke-virtual {p0, p4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_a

    .line 605
    :cond_30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_21
.end method

.method public static getSubscriptionAttributesTag(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "ippBuf"

    .prologue
    .line 140
    if-nez p0, :cond_b

    .line 141
    const-string v0, "cups4j"

    const-string v1, "IppTag.getSubscriptionAttributesTag(): ippBuf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 p0, 0x0

    .line 145
    .end local p0
    :goto_a
    return-object p0

    .line 144
    .restart local p0
    :cond_b
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_a
.end method

.method public static getUnsupportedAttributesTag(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "ippBuf"

    .prologue
    .line 168
    if-nez p0, :cond_b

    .line 169
    const-string v0, "cups4j"

    const-string v1, "IppTag.getUnsupportedAttributesTag(): ippBuf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 p0, 0x0

    .line 173
    .end local p0
    :goto_a
    return-object p0

    .line 172
    .restart local p0
    :cond_b
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_a
.end method

.method public static getUri(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 2
    .parameter "ippBuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 266
    invoke-static {p0, v0, v0}, Lch/ethz/vppserver/ippclient/IppTag;->getUri(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getUri(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "ippBuf"
    .parameter "attributeName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lch/ethz/vppserver/ippclient/IppTag;->getUri(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getUri(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "ippBuf"
    .parameter "attributeName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 290
    const/16 v0, 0x45

    invoke-static {p0, v0, p1, p2}, Lch/ethz/vppserver/ippclient/IppTag;->getUsAscii(Ljava/nio/ByteBuffer;BLjava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getUriScheme(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 2
    .parameter "ippBuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 300
    invoke-static {p0, v0, v0}, Lch/ethz/vppserver/ippclient/IppTag;->getUriScheme(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getUriScheme(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "ippBuf"
    .parameter "attributeName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lch/ethz/vppserver/ippclient/IppTag;->getUriScheme(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getUriScheme(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "ippBuf"
    .parameter "attributeName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 324
    const/16 v0, 0x46

    invoke-static {p0, v0, p1, p2}, Lch/ethz/vppserver/ippclient/IppTag;->getUsAscii(Ljava/nio/ByteBuffer;BLjava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static getUsAscii(Ljava/nio/ByteBuffer;BLjava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "ippBuf"
    .parameter "tag"
    .parameter "attributeName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 772
    if-nez p0, :cond_c

    .line 773
    const-string v0, "cups4j"

    const-string v1, "IppTag.getUsAscii(): ippBuf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 p0, 0x0

    .line 791
    .end local p0
    :goto_b
    return-object p0

    .line 777
    .restart local p0
    :cond_c
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 778
    if-eqz p2, :cond_32

    .line 779
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 780
    invoke-static {p2}, Lch/ethz/vppserver/ippclient/IppUtil;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 785
    :goto_20
    if-eqz p3, :cond_36

    .line 786
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 787
    invoke-static {p3}, Lch/ethz/vppserver/ippclient/IppUtil;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_b

    .line 782
    :cond_32
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_20

    .line 789
    :cond_36
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_b
.end method
