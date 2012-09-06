.class public final Lcom/google/googlenav/common/io/protocol/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/googlenav/common/io/protocol/b;->a:Z

    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;III)I
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_b
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_9

    move-result p3

    .line 345
    :goto_8
    return p3

    .line 344
    :catch_9
    move-exception v0

    goto :goto_8

    .line 342
    :catch_b
    move-exception v0

    goto :goto_8
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/InputStream;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 262
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v0

    .line 263
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    .line 264
    const/4 v0, -0x1

    .line 275
    :goto_c
    return v0

    .line 267
    :cond_d
    const-wide/16 v2, 0x7

    and-long/2addr v2, v0

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1e

    .line 268
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Message expected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_1e
    const/4 v2, 0x3

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    .line 272
    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setType(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 273
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v2

    long-to-int v0, v2

    .line 274
    invoke-virtual {p2, p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    move v0, v1

    .line 275
    goto :goto_c
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;IJ)J
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    if-eqz p0, :cond_c

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_b} :catch_f
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_b} :catch_d

    move-result-wide p2

    .line 131
    :cond_c
    :goto_c
    return-wide p2

    .line 130
    :catch_d
    move-exception v0

    goto :goto_c

    .line 128
    :catch_f
    move-exception v0

    goto :goto_c
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter

    .prologue
    .line 401
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {p0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getType()Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 402
    invoke-virtual {p0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 403
    return-object v0
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 291
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {v0, p0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 292
    invoke-static {p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Ljava/io/DataInput;)Ljava/io/InputStream;

    move-result-object v1

    .line 293
    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 294
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    .line 295
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 297
    :cond_19
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 298
    return-object v0
.end method

.method public static a(Ljava/io/DataInput;)Ljava/io/InputStream;
    .registers 4
    .parameter

    .prologue
    .line 234
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 235
    new-instance v0, Lcom/google/googlenav/common/io/c;

    check-cast p0, Ljava/io/InputStream;

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/google/googlenav/common/io/c;-><init>(Ljava/io/InputStream;I)V

    .line 238
    if-gez v1, :cond_18

    .line 239
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/googlenav/common/io/protocol/b;->a:Z

    .line 240
    invoke-static {v0}, Lcom/google/googlenav/common/io/e;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 242
    :cond_18
    return-object v0
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 39
    if-eqz p0, :cond_d

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_c
    return-object v0

    .line 39
    :cond_d
    const-string v0, ""
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_f} :catch_10

    goto :goto_c

    .line 40
    :catch_10
    move-exception v0

    .line 41
    const-string v0, ""

    goto :goto_c
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 57
    if-eqz p0, :cond_13

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    if-le v1, p2, :cond_13

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_12} :catch_14

    move-result-object v0

    .line 60
    :cond_13
    :goto_13
    return-object v0

    .line 59
    :catch_14
    move-exception v1

    goto :goto_13
.end method

.method public static a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 386
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 387
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 388
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 389
    array-length v1, v0

    invoke-interface {p0, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 390
    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write([B)V

    .line 391
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;IZ)Z
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    if-eqz p0, :cond_c

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_b} :catch_f
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_b} :catch_d

    move-result p2

    .line 216
    :cond_c
    :goto_c
    return p2

    .line 215
    :catch_d
    move-exception v0

    goto :goto_c

    .line 213
    :catch_f
    move-exception v0

    goto :goto_c
.end method

.method public static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 48
    if-eqz p0, :cond_d

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_c} :catch_e

    move-result-object v0

    .line 50
    :cond_d
    :goto_d
    return-object v0

    .line 49
    :catch_e
    move-exception v1

    goto :goto_d
.end method

.method public static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 70
    :goto_8
    return-object v0

    .line 69
    :catch_9
    move-exception v0

    .line 70
    const-string v0, ""

    goto :goto_8
.end method

.method public static c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    if-eqz p0, :cond_c

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_b} :catch_f
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_b} :catch_d

    move-result p2

    .line 111
    :cond_c
    :goto_c
    return p2

    .line 110
    :catch_d
    move-exception v0

    goto :goto_c

    .line 108
    :catch_f
    move-exception v0

    goto :goto_c
.end method

.method public static c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 76
    if-eqz p0, :cond_d

    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)J
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    .line 316
    :try_start_2
    invoke-static {p0, p1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/google/googlenav/common/io/protocol/b;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_9} :catch_d
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_9} :catch_b

    move-result-wide v0

    .line 320
    :goto_a
    return-wide v0

    .line 319
    :catch_b
    move-exception v2

    goto :goto_a

    .line 317
    :catch_d
    move-exception v2

    goto :goto_a
.end method

.method public static d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)[Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 81
    if-nez p0, :cond_6

    .line 82
    new-array v0, v0, [Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 90
    :goto_5
    return-object v0

    .line 85
    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    new-array v1, v1, [Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 86
    :goto_c
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    aput-object v2, v1, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1b
    move-object v0, v1

    .line 90
    goto :goto_5
.end method

.method public static e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    return v0
.end method

.method public static f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J
    .registers 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 159
    if-eqz p0, :cond_e

    :try_start_4
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_d} :catch_11
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_d} :catch_f

    move-result-wide v0

    .line 163
    :cond_e
    :goto_e
    return-wide v0

    .line 162
    :catch_f
    move-exception v2

    goto :goto_e

    .line 160
    :catch_11
    move-exception v2

    goto :goto_e
.end method

.method public static g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J
    .registers 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    .line 178
    if-eqz p0, :cond_e

    :try_start_4
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_d} :catch_11
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_d} :catch_f

    move-result-wide v0

    .line 182
    :cond_e
    :goto_e
    return-wide v0

    .line 181
    :catch_f
    move-exception v2

    goto :goto_e

    .line 179
    :catch_11
    move-exception v2

    goto :goto_e
.end method

.method public static h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;IZ)Z

    move-result v0

    return v0
.end method

.method public static i(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 358
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 359
    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 360
    return-object v0
.end method

.method public static j(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 372
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 373
    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 374
    return-object v0
.end method
