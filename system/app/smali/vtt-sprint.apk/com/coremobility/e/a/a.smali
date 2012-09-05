.class public final Lcom/coremobility/e/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B

.field private static final d:[B

.field private static final e:[B


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    new-array v0, v2, [B

    fill-array-data v0, :array_28

    sput-object v0, Lcom/coremobility/e/a/a;->a:[B

    const/16 v0, 0xae

    new-array v0, v0, [B

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/coremobility/e/a/a;->b:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_8a

    sput-object v0, Lcom/coremobility/e/a/a;->c:[B

    new-array v0, v4, [B

    const/4 v1, 0x3

    aput-byte v1, v0, v3

    sput-object v0, Lcom/coremobility/e/a/a;->d:[B

    new-array v0, v4, [B

    aput-byte v2, v0, v3

    sput-object v0, Lcom/coremobility/e/a/a;->e:[B

    return-void

    :array_28
    .array-data 0x1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_2e
    .array-data 0x1
        0x51t
        0x4ct
        0x43t
        0x4dt
        0x66t
        0x6dt
        0x74t
        0x20t
        0x96t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x8dt
        0xd4t
        0x89t
        0xe6t
        0x76t
        0x90t
        0xb5t
        0x46t
        0x91t
        0xeft
        0x73t
        0x6at
        0x51t
        0x0t
        0xcet
        0xb4t
        0x1t
        0x0t
        0x54t
        0x49t
        0x41t
        0x20t
        0x49t
        0x53t
        0x2dt
        0x31t
        0x32t
        0x37t
        0x20t
        0x45t
        0x6et
        0x68t
        0x61t
        0x6et
        0x63t
        0x65t
        0x64t
        0x20t
        0x56t
        0x61t
        0x72t
        0x69t
        0x61t
        0x62t
        0x6ct
        0x65t
        0x20t
        0x52t
        0x61t
        0x74t
        0x65t
        0x20t
        0x43t
        0x6ft
        0x64t
        0x65t
        0x63t
        0x2ct
        0x20t
        0x53t
        0x70t
        0x65t
        0x65t
        0x63t
        0x68t
        0x20t
        0x53t
        0x65t
        0x72t
        0x76t
        0x69t
        0x63t
        0x65t
        0x20t
        0x4ft
        0x70t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x20t
        0x33t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x80t
        0x25t
        0x17t
        0x0t
        0xa0t
        0x0t
        0x40t
        0x1ft
        0x10t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x16t
        0x4t
        0xat
        0x3t
        0x0t
        0x2t
        0x2t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x76t
        0x72t
        0x61t
        0x74t
        0x8t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_8a
    .array-data 0x1
        0x64t
        0x61t
        0x74t
        0x61t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B)I
    .registers 3

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method public static a(Ljava/lang/String;J)J
    .registers 10

    const-wide/16 v2, 0x0

    const/16 v6, 0x21

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    if-nez p0, :cond_14

    const-string v0, "CM+EMA GetDuration Null File "

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    move-wide v0, v2

    :goto_13
    return-wide v0

    :cond_14
    const-wide/16 v4, 0x15

    cmp-long v4, p1, v4

    if-eqz v4, :cond_2f

    const-wide/16 v4, 0x16

    cmp-long v4, p1, v4

    if-eqz v4, :cond_2f

    const-string v4, "CM+EMA Unsupported File type %d"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-static {v6, v4, v0}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    move-wide v0, v2

    goto :goto_13

    :cond_2f
    const/4 v4, 0x0

    invoke-static {v0, p0, v4}, Lcom/coremobility/e/a/a;->a(ZLjava/lang/String;Lcom/coremobility/integration/r;)Lcom/coremobility/integration/h;

    move-result-object v4

    if-nez v4, :cond_41

    const-string v4, "CM+EMA unable to open file %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-static {v6, v4, v0}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    move-wide v0, v2

    goto :goto_13

    :cond_41
    const/16 v5, 0xb6

    invoke-static {v4, v5, v1}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;II)I

    move-result v5

    if-eqz v5, :cond_58

    const-string v4, "CM+EMA FileSeekError %d"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-static {v6, v4, v0}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    move-wide v0, v2

    goto :goto_13

    :cond_58
    const/4 v2, 0x4

    new-array v2, v2, [B

    new-instance v3, Lcom/coremobility/integration/r;

    array-length v5, v2

    invoke-direct {v3, v5}, Lcom/coremobility/integration/r;-><init>(I)V

    invoke-static {v4, v2, v3}, Lcom/coremobility/integration/file/a;->c(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    array-length v4, v2

    iget v3, v3, Lcom/coremobility/integration/r;->a:I

    if-ne v4, v3, :cond_76

    :goto_69
    const-string v1, "Unable to read Frame Count data"

    invoke-static {v0, v1}, Lcom/coremobility/integration/c/a;->a(ZLjava/lang/String;)V

    invoke-static {v2}, Lcom/coremobility/e/a/a;->a([B)I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    int-to-long v0, v0

    goto :goto_13

    :cond_76
    move v0, v1

    goto :goto_69
.end method

.method private static a(ZLjava/lang/String;Lcom/coremobility/integration/r;)Lcom/coremobility/integration/h;
    .registers 11

    const/4 v3, 0x0

    const/16 v7, 0x21

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    new-instance v4, Lcom/coremobility/integration/h;

    invoke-direct {v4}, Lcom/coremobility/integration/h;-><init>()V

    if-eqz p0, :cond_23

    new-instance v0, Lcom/coremobility/integration/q;

    invoke-direct {v0}, Lcom/coremobility/integration/q;-><init>()V

    invoke-static {p1, v0}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/q;)I

    move-result v5

    if-nez v5, :cond_3c

    iget-boolean v0, v0, Lcom/coremobility/integration/q;->a:Z

    if-eqz v0, :cond_3c

    move v0, v1

    :goto_20
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_23
    invoke-static {p1, v4}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/h;)I

    move-result v0

    const/16 v5, 0x8

    if-ne v0, v5, :cond_3e

    const-string v4, "CM+EMA %s File Already Open %d"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v7, v4, v5}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    :goto_3b
    return-object v0

    :cond_3c
    move v0, v2

    goto :goto_20

    :cond_3e
    if-eqz v0, :cond_51

    const-string v4, "CM+EMA %s FileOpenError %d"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v7, v4, v5}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_3b

    :cond_51
    if-eqz p2, :cond_5c

    invoke-static {v4, p2}, Lcom/coremobility/integration/file/a;->b(Lcom/coremobility/integration/h;Lcom/coremobility/integration/r;)I

    move-result v0

    if-nez v0, :cond_5e

    :goto_59
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_5c
    move-object v0, v4

    goto :goto_3b

    :cond_5e
    move v1, v2

    goto :goto_59
.end method

.method public static a(Ljava/lang/String;Lcom/coremobility/integration/r;Lcom/coremobility/integration/r;)Ljava/lang/String;
    .registers 19

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    const/4 v1, 0x0

    move-object/from16 v0, p2

    iput v1, v0, Lcom/coremobility/integration/r;->a:I

    const-string v5, "QCP-1"

    if-eqz p0, :cond_e

    if-nez p1, :cond_31

    :cond_e
    const/16 v2, 0x21

    const-string v3, "CM+EMA Null File/Mime type %s %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez p0, :cond_1a

    const-string p0, "NULL"

    :cond_1a
    aput-object p0, v4, v1

    const/4 v5, 0x1

    if-nez p1, :cond_28

    const-string v1, "NULL"

    :goto_21
    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_27
    return-object v1

    :cond_28
    move-object/from16 v0, p1

    iget v1, v0, Lcom/coremobility/integration/r;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_21

    :cond_31
    move-object/from16 v0, p1

    iget v1, v0, Lcom/coremobility/integration/r;->a:I

    const v2, 0x20001

    if-eq v1, v2, :cond_5f

    move-object/from16 v0, p1

    iget v1, v0, Lcom/coremobility/integration/r;->a:I

    const v2, 0x20002

    if-eq v1, v2, :cond_5f

    const/16 v2, 0x21

    const-string v3, "CM+EMA Unsupported Mime type %d"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-nez p1, :cond_56

    const-string v1, "NULL"

    :goto_4f
    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto :goto_27

    :cond_56
    move-object/from16 v0, p1

    iget v1, v0, Lcom/coremobility/integration/r;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4f

    :cond_5f
    new-instance v7, Lcom/coremobility/integration/r;

    invoke-direct {v7}, Lcom/coremobility/integration/r;-><init>()V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-static {v1, v0, v7}, Lcom/coremobility/e/a/a;->a(ZLjava/lang/String;Lcom/coremobility/integration/r;)Lcom/coremobility/integration/h;

    move-result-object v8

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v5, v2}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v5, v2}, Lcom/coremobility/e/a/a;->a(ZLjava/lang/String;Lcom/coremobility/integration/r;)Lcom/coremobility/integration/h;

    move-result-object v9

    if-eqz v8, :cond_7e

    if-eqz v9, :cond_7e

    iget v1, v7, Lcom/coremobility/integration/r;->a:I

    if-nez v1, :cond_8a

    :cond_7e
    const/16 v1, 0x21

    const-string v2, "CM+EMA unable to open files"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto :goto_27

    :cond_8a
    move-object/from16 v0, p1

    iget v1, v0, Lcom/coremobility/integration/r;->a:I

    const v2, 0x20002

    if-ne v1, v2, :cond_f5

    const/16 v1, 0x16

    :goto_95
    iget v2, v7, Lcom/coremobility/integration/r;->a:I

    rem-int/2addr v2, v1

    if-nez v2, :cond_f8

    const/4 v2, 0x1

    :goto_9b
    const-string v3, "Invalid EVRC Data"

    invoke-static {v2, v3}, Lcom/coremobility/integration/c/a;->a(ZLjava/lang/String;)V

    iget v2, v7, Lcom/coremobility/integration/r;->a:I

    div-int v3, v2, v1

    iget v2, v7, Lcom/coremobility/integration/r;->a:I

    add-int v4, v2, v3

    add-int/lit16 v10, v4, 0xc2

    new-instance v2, Lcom/coremobility/integration/r;

    sget-object v6, Lcom/coremobility/e/a/a;->a:[B

    array-length v6, v6

    invoke-direct {v2, v6}, Lcom/coremobility/integration/r;-><init>(I)V

    sget-object v6, Lcom/coremobility/e/a/a;->a:[B

    invoke-static {v9, v6, v2}, Lcom/coremobility/integration/file/a;->d(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v6

    sget-object v11, Lcom/coremobility/e/a/a;->a:[B

    array-length v11, v11

    iget v2, v2, Lcom/coremobility/integration/r;->a:I

    if-ne v11, v2, :cond_fa

    const/4 v2, 0x1

    :goto_c0
    const-string v11, "Unable to write all Riff header"

    invoke-static {v2, v11}, Lcom/coremobility/integration/c/a;->a(ZLjava/lang/String;)V

    if-eqz v6, :cond_fc

    const/16 v1, 0x21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+EMA file err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " riff hdr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v8, v0, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    invoke-static {v9, v5, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    goto/16 :goto_27

    :cond_f5
    const/16 v1, 0xa

    goto :goto_95

    :cond_f8
    const/4 v2, 0x0

    goto :goto_9b

    :cond_fa
    const/4 v2, 0x0

    goto :goto_c0

    :cond_fc
    add-int/lit8 v2, v10, -0x8

    invoke-static {v2}, Lcom/coremobility/e/a/a;->a(I)[B

    move-result-object v2

    new-instance v6, Lcom/coremobility/integration/r;

    array-length v11, v2

    invoke-direct {v6, v11}, Lcom/coremobility/integration/r;-><init>(I)V

    invoke-static {v9, v2, v6}, Lcom/coremobility/integration/file/a;->d(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v11

    array-length v2, v2

    iget v6, v6, Lcom/coremobility/integration/r;->a:I

    if-ne v2, v6, :cond_147

    const/4 v2, 0x1

    :goto_112
    const-string v6, "Unable to write File Length header"

    invoke-static {v2, v6}, Lcom/coremobility/integration/c/a;->a(ZLjava/lang/String;)V

    if-eqz v11, :cond_149

    const/16 v1, 0x21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+EMA file err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " file length hdr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v8, v0, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    invoke-static {v9, v5, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    goto/16 :goto_27

    :cond_147
    const/4 v2, 0x0

    goto :goto_112

    :cond_149
    new-instance v2, Lcom/coremobility/integration/r;

    sget-object v6, Lcom/coremobility/e/a/a;->b:[B

    array-length v6, v6

    invoke-direct {v2, v6}, Lcom/coremobility/integration/r;-><init>(I)V

    sget-object v6, Lcom/coremobility/e/a/a;->b:[B

    invoke-static {v9, v6, v2}, Lcom/coremobility/integration/file/a;->d(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v6

    sget-object v11, Lcom/coremobility/e/a/a;->b:[B

    array-length v11, v11

    iget v2, v2, Lcom/coremobility/integration/r;->a:I

    if-ne v11, v2, :cond_194

    const/4 v2, 0x1

    :goto_15f
    const-string v11, "Unable to write all Qcp header"

    invoke-static {v2, v11}, Lcom/coremobility/integration/c/a;->a(ZLjava/lang/String;)V

    if-eqz v6, :cond_196

    const/16 v1, 0x21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+EMA file err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " qcp hdr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v8, v0, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    invoke-static {v9, v5, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    goto/16 :goto_27

    :cond_194
    const/4 v2, 0x0

    goto :goto_15f

    :cond_196
    invoke-static {v3}, Lcom/coremobility/e/a/a;->a(I)[B

    move-result-object v2

    new-instance v3, Lcom/coremobility/integration/r;

    array-length v6, v2

    invoke-direct {v3, v6}, Lcom/coremobility/integration/r;-><init>(I)V

    invoke-static {v9, v2, v3}, Lcom/coremobility/integration/file/a;->d(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v6

    array-length v2, v2

    iget v3, v3, Lcom/coremobility/integration/r;->a:I

    if-ne v2, v3, :cond_1df

    const/4 v2, 0x1

    :goto_1aa
    const-string v3, "Unable to write Frame count header"

    invoke-static {v2, v3}, Lcom/coremobility/integration/c/a;->a(ZLjava/lang/String;)V

    if-eqz v6, :cond_1e1

    const/16 v1, 0x21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+EMA file err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " frame count hdr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v8, v0, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    invoke-static {v9, v5, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    goto/16 :goto_27

    :cond_1df
    const/4 v2, 0x0

    goto :goto_1aa

    :cond_1e1
    new-instance v2, Lcom/coremobility/integration/r;

    sget-object v3, Lcom/coremobility/e/a/a;->c:[B

    array-length v3, v3

    invoke-direct {v2, v3}, Lcom/coremobility/integration/r;-><init>(I)V

    sget-object v3, Lcom/coremobility/e/a/a;->c:[B

    invoke-static {v9, v3, v2}, Lcom/coremobility/integration/file/a;->d(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v3

    sget-object v6, Lcom/coremobility/e/a/a;->c:[B

    array-length v6, v6

    iget v2, v2, Lcom/coremobility/integration/r;->a:I

    if-ne v6, v2, :cond_22c

    const/4 v2, 0x1

    :goto_1f7
    const-string v6, "Unable to write Data header"

    invoke-static {v2, v6}, Lcom/coremobility/integration/c/a;->a(ZLjava/lang/String;)V

    if-eqz v3, :cond_22e

    const/16 v1, 0x21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CM+EMA file err "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data hdr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v8, v0, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    invoke-static {v9, v5, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    goto/16 :goto_27

    :cond_22c
    const/4 v2, 0x0

    goto :goto_1f7

    :cond_22e
    invoke-static {v4}, Lcom/coremobility/e/a/a;->a(I)[B

    move-result-object v2

    new-instance v3, Lcom/coremobility/integration/r;

    array-length v4, v2

    invoke-direct {v3, v4}, Lcom/coremobility/integration/r;-><init>(I)V

    invoke-static {v9, v2, v3}, Lcom/coremobility/integration/file/a;->d(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v4

    array-length v2, v2

    iget v3, v3, Lcom/coremobility/integration/r;->a:I

    if-ne v2, v3, :cond_277

    const/4 v2, 0x1

    :goto_242
    const-string v3, "Unable to write Data length header"

    invoke-static {v2, v3}, Lcom/coremobility/integration/c/a;->a(ZLjava/lang/String;)V

    if-eqz v4, :cond_279

    const/16 v1, 0x21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+EMA file err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data length hdr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v8, v0, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    invoke-static {v9, v5, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    goto/16 :goto_27

    :cond_277
    const/4 v2, 0x0

    goto :goto_242

    :cond_279
    move-object/from16 v0, p1

    iget v2, v0, Lcom/coremobility/integration/r;->a:I

    const v3, 0x20002

    if-ne v2, v3, :cond_2f5

    sget-object v2, Lcom/coremobility/e/a/a;->e:[B

    :goto_284
    mul-int/lit16 v3, v1, 0x1f4

    new-array v11, v3, [B

    const/4 v3, 0x0

    :goto_289
    iget v4, v7, Lcom/coremobility/integration/r;->a:I

    if-ge v3, v4, :cond_34d

    new-instance v12, Lcom/coremobility/integration/r;

    array-length v4, v11

    invoke-direct {v12, v4}, Lcom/coremobility/integration/r;-><init>(I)V

    invoke-static {v8, v11, v12}, Lcom/coremobility/integration/file/a;->c(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    array-length v4, v11

    iget v6, v12, Lcom/coremobility/integration/r;->a:I

    if-eq v4, v6, :cond_2a2

    iget v4, v7, Lcom/coremobility/integration/r;->a:I

    sub-int/2addr v4, v3

    iget v6, v12, Lcom/coremobility/integration/r;->a:I

    if-ne v4, v6, :cond_2f8

    :cond_2a2
    const/4 v4, 0x1

    :goto_2a3
    const-string v6, "Unable to read evrc data"

    invoke-static {v4, v6}, Lcom/coremobility/integration/c/a;->a(ZLjava/lang/String;)V

    iget v4, v12, Lcom/coremobility/integration/r;->a:I

    div-int v13, v4, v1

    const/4 v4, 0x0

    move v6, v4

    :goto_2ae
    if-ge v6, v13, :cond_348

    new-instance v4, Lcom/coremobility/integration/r;

    array-length v14, v2

    invoke-direct {v4, v14}, Lcom/coremobility/integration/r;-><init>(I)V

    invoke-static {v9, v2, v4}, Lcom/coremobility/integration/file/a;->d(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v14

    array-length v15, v2

    iget v4, v4, Lcom/coremobility/integration/r;->a:I

    if-ne v15, v4, :cond_2fa

    const/4 v4, 0x1

    :goto_2c0
    const-string v15, "Unable to write Rate Indicator header"

    invoke-static {v4, v15}, Lcom/coremobility/integration/c/a;->a(ZLjava/lang/String;)V

    if-eqz v14, :cond_2fc

    const/16 v1, 0x21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+EMA file err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rate ind hdr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v8, v0, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    invoke-static {v9, v5, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    goto/16 :goto_27

    :cond_2f5
    sget-object v2, Lcom/coremobility/e/a/a;->d:[B

    goto :goto_284

    :cond_2f8
    const/4 v4, 0x0

    goto :goto_2a3

    :cond_2fa
    const/4 v4, 0x0

    goto :goto_2c0

    :cond_2fc
    new-instance v4, Lcom/coremobility/integration/r;

    invoke-direct {v4, v1}, Lcom/coremobility/integration/r;-><init>(I)V

    mul-int v14, v6, v1

    invoke-static {v9, v11, v14, v4}, Lcom/coremobility/integration/file/a;->b(Lcom/coremobility/integration/h;[BILcom/coremobility/integration/r;)I

    move-result v14

    iget v4, v4, Lcom/coremobility/integration/r;->a:I

    if-ne v1, v4, :cond_341

    const/4 v4, 0x1

    :goto_30c
    const-string v15, "Unable to write evrc data "

    invoke-static {v4, v15}, Lcom/coremobility/integration/c/a;->a(ZLjava/lang/String;)V

    if-eqz v14, :cond_343

    const/16 v1, 0x21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+EMA file err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rate ind hdr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v8, v0, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    invoke-static {v9, v5, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    goto/16 :goto_27

    :cond_341
    const/4 v4, 0x0

    goto :goto_30c

    :cond_343
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto/16 :goto_2ae

    :cond_348
    iget v4, v12, Lcom/coremobility/integration/r;->a:I

    add-int/2addr v3, v4

    goto/16 :goto_289

    :cond_34d
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-static {v8, v0, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    invoke-static {v9, v5, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    move-object/from16 v0, p1

    iget v1, v0, Lcom/coremobility/integration/r;->a:I

    const v2, 0x20002

    if-ne v1, v2, :cond_36e

    const v1, 0x2000d

    :goto_363
    move-object/from16 v0, p1

    iput v1, v0, Lcom/coremobility/integration/r;->a:I

    move-object/from16 v0, p2

    iput v10, v0, Lcom/coremobility/integration/r;->a:I

    move-object v1, v5

    goto/16 :goto_27

    :cond_36e
    const v1, 0x2000c

    goto :goto_363
.end method

.method public static a()V
    .registers 3

    const/4 v0, 0x0

    const-string v1, "EVRC-1"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    return-void
.end method

.method private static a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V
    .registers 9

    const/16 v5, 0x21

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    if-eqz p0, :cond_1c

    invoke-static {p0}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    move-result v0

    if-eqz v0, :cond_1c

    const-string v1, "CM+EMA FileCloseError %d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v5, v1, v2}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    if-eqz p2, :cond_36

    if-eqz p1, :cond_36

    invoke-static {p1}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_36

    const-string v1, "CM+EMA %s FileDeleteError %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v5, v1, v2}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_36
    return-void
.end method

.method private static a(I)[B
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static b(Ljava/lang/String;Lcom/coremobility/integration/r;Lcom/coremobility/integration/r;)Ljava/lang/String;
    .registers 18

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    const/4 v1, 0x0

    move-object/from16 v0, p2

    iput v1, v0, Lcom/coremobility/integration/r;->a:I

    if-eqz p0, :cond_c

    if-nez p1, :cond_2f

    :cond_c
    const/16 v2, 0x21

    const-string v3, "CM+EMA Null File/Mime type %s %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez p0, :cond_18

    const-string p0, "NULL"

    :cond_18
    aput-object p0, v4, v1

    const/4 v5, 0x1

    if-nez p1, :cond_26

    const-string v1, "NULL"

    :goto_1f
    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_25
    return-object v1

    :cond_26
    move-object/from16 v0, p1

    iget v1, v0, Lcom/coremobility/integration/r;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1f

    :cond_2f
    move-object/from16 v0, p1

    iget v1, v0, Lcom/coremobility/integration/r;->a:I

    const v2, 0x2000c

    if-eq v1, v2, :cond_5d

    move-object/from16 v0, p1

    iget v1, v0, Lcom/coremobility/integration/r;->a:I

    const v2, 0x2000d

    if-eq v1, v2, :cond_5d

    const/16 v2, 0x21

    const-string v3, "CM+EMA Unsupported Mime type %d"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-nez p1, :cond_54

    const-string v1, "NULL"

    :goto_4d
    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto :goto_25

    :cond_54
    move-object/from16 v0, p1

    iget v1, v0, Lcom/coremobility/integration/r;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4d

    :cond_5d
    move-object/from16 v0, p1

    iget v1, v0, Lcom/coremobility/integration/r;->a:I

    const v2, 0x2000c

    if-ne v1, v2, :cond_98

    const v1, 0x20001

    :goto_69
    move-object/from16 v0, p1

    iput v1, v0, Lcom/coremobility/integration/r;->a:I

    const-string v4, "EVRC-1"

    new-instance v2, Lcom/coremobility/integration/r;

    invoke-direct {v2}, Lcom/coremobility/integration/r;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1, p0, v2}, Lcom/coremobility/e/a/a;->a(ZLjava/lang/String;Lcom/coremobility/integration/r;)Lcom/coremobility/integration/h;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v4, v3}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v4, v3}, Lcom/coremobility/e/a/a;->a(ZLjava/lang/String;Lcom/coremobility/integration/r;)Lcom/coremobility/integration/h;

    move-result-object v8

    if-eqz v7, :cond_8c

    if-eqz v8, :cond_8c

    iget v1, v2, Lcom/coremobility/integration/r;->a:I

    if-nez v1, :cond_9c

    :cond_8c
    const/16 v1, 0x21

    const-string v2, "CM+EMA unable to open files"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto :goto_25

    :cond_98
    const v1, 0x20002

    goto :goto_69

    :cond_9c
    sget-object v1, Lcom/coremobility/e/a/a;->a:[B

    array-length v1, v1

    const/4 v3, 0x2

    invoke-static {v7, v1, v3}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;II)I

    move-result v1

    if-eqz v1, :cond_c2

    const/16 v2, 0x21

    const-string v3, "CM+EMA file err %d unable seek past RiffHdr"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v2, v3, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {v8, v4, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    invoke-static {v7, p0, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    goto/16 :goto_25

    :cond_c2
    const/4 v1, 0x4

    new-array v1, v1, [B

    new-instance v3, Lcom/coremobility/integration/r;

    const/4 v5, 0x4

    invoke-direct {v3, v5}, Lcom/coremobility/integration/r;-><init>(I)V

    invoke-static {v7, v1, v3}, Lcom/coremobility/integration/file/a;->c(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v3

    if-eqz v3, :cond_fd

    const/16 v1, 0x21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CM+EMA file err "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unable to get qcp length"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {v8, v4, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    invoke-static {v7, p0, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    goto/16 :goto_25

    :cond_fd
    invoke-static {v1}, Lcom/coremobility/e/a/a;->a([B)I

    move-result v1

    iget v5, v2, Lcom/coremobility/integration/r;->a:I

    add-int/lit8 v5, v5, -0x8

    if-eq v1, v5, :cond_133

    const/16 v1, 0x21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CM+EMA file err "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " wrong qcp length"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {v8, v4, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    invoke-static {v7, p0, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    goto/16 :goto_25

    :cond_133
    sget-object v1, Lcom/coremobility/e/a/a;->b:[B

    array-length v1, v1

    const/4 v3, 0x2

    invoke-static {v7, v1, v3}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;II)I

    move-result v1

    if-eqz v1, :cond_159

    const/16 v2, 0x21

    const-string v3, "CM+EMA file err %d unable to seek past qcp const header"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v2, v3, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {v8, v4, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    invoke-static {v7, p0, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    goto/16 :goto_25

    :cond_159
    const/4 v1, 0x4

    new-array v3, v1, [B

    new-instance v1, Lcom/coremobility/integration/r;

    const/4 v5, 0x4

    invoke-direct {v1, v5}, Lcom/coremobility/integration/r;-><init>(I)V

    invoke-static {v7, v3, v1}, Lcom/coremobility/integration/file/a;->c(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v5

    if-eqz v5, :cond_194

    const/16 v1, 0x21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+EMA file err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unable to read qcp frame count"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {v8, v4, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    invoke-static {v7, p0, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    goto/16 :goto_25

    :cond_194
    move-object/from16 v0, p1

    iget v1, v0, Lcom/coremobility/integration/r;->a:I

    const v6, 0x20002

    if-ne v1, v6, :cond_1d9

    const/16 v1, 0x16

    :goto_19f
    iget v2, v2, Lcom/coremobility/integration/r;->a:I

    add-int/lit16 v2, v2, -0xc2

    add-int/lit8 v6, v1, 0x1

    div-int v9, v2, v6

    invoke-static {v3}, Lcom/coremobility/e/a/a;->a([B)I

    move-result v2

    if-eq v9, v2, :cond_1dc

    const/16 v1, 0x21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+EMA file err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " wrong qcp data size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {v8, v4, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    invoke-static {v7, p0, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    goto/16 :goto_25

    :cond_1d9
    const/16 v1, 0xa

    goto :goto_19f

    :cond_1dc
    sget-object v2, Lcom/coremobility/e/a/a;->c:[B

    array-length v2, v2

    const/4 v3, 0x2

    invoke-static {v7, v2, v3}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;II)I

    move-result v2

    if-eqz v2, :cond_202

    const/16 v1, 0x21

    const-string v3, "CM+EMA file err %d unable to seek past qcp data header"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v1, v3, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {v8, v4, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    invoke-static {v7, p0, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    goto/16 :goto_25

    :cond_202
    const/4 v2, 0x4

    new-array v2, v2, [B

    new-instance v3, Lcom/coremobility/integration/r;

    const/4 v5, 0x4

    invoke-direct {v3, v5}, Lcom/coremobility/integration/r;-><init>(I)V

    invoke-static {v7, v2, v3}, Lcom/coremobility/integration/file/a;->c(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v3

    if-eqz v3, :cond_23d

    const/16 v1, 0x21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CM+EMA file err "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unable to read qcp data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {v8, v4, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    invoke-static {v7, p0, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    goto/16 :goto_25

    :cond_23d
    invoke-static {v2}, Lcom/coremobility/e/a/a;->a([B)I

    move-result v10

    add-int/lit8 v2, v1, 0x1

    mul-int/2addr v2, v9

    if-eq v2, v10, :cond_272

    const/16 v1, 0x21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CM+EMA file err "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bad data size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {v8, v4, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    invoke-static {v7, p0, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    goto/16 :goto_25

    :cond_272
    move-object/from16 v0, p1

    iget v2, v0, Lcom/coremobility/integration/r;->a:I

    const v3, 0x20002

    if-ne v2, v3, :cond_2dc

    sget-object v2, Lcom/coremobility/e/a/a;->e:[B

    :goto_27d
    add-int/lit8 v3, v1, 0x1

    mul-int/lit16 v3, v3, 0x1f4

    new-array v11, v3, [B

    const/4 v3, 0x0

    move v6, v3

    :goto_285
    if-ge v6, v10, :cond_2fc

    new-instance v12, Lcom/coremobility/integration/r;

    sub-int v3, v10, v6

    array-length v5, v11

    if-ge v3, v5, :cond_2df

    sub-int v3, v10, v6

    :goto_290
    invoke-direct {v12, v3}, Lcom/coremobility/integration/r;-><init>(I)V

    invoke-static {v7, v11, v12}, Lcom/coremobility/integration/file/a;->c(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    iget v3, v12, Lcom/coremobility/integration/r;->a:I

    add-int/lit8 v5, v1, 0x1

    div-int v13, v3, v5

    const/4 v3, 0x0

    move v5, v3

    :goto_29e
    if-ge v5, v13, :cond_2f7

    new-instance v3, Lcom/coremobility/integration/r;

    invoke-direct {v3, v1}, Lcom/coremobility/integration/r;-><init>(I)V

    add-int/lit8 v14, v1, 0x1

    mul-int/2addr v14, v5

    add-int/lit8 v14, v14, 0x1

    invoke-static {v8, v11, v14, v3}, Lcom/coremobility/integration/file/a;->b(Lcom/coremobility/integration/h;[BILcom/coremobility/integration/r;)I

    move-result v3

    if-eqz v3, :cond_2e1

    const/16 v1, 0x21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CM+EMA file err "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rate ind hdr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {v8, v4, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    invoke-static {v7, p0, v1}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    goto/16 :goto_25

    :cond_2dc
    sget-object v2, Lcom/coremobility/e/a/a;->d:[B

    goto :goto_27d

    :cond_2df
    array-length v3, v11

    goto :goto_290

    :cond_2e1
    add-int/lit8 v3, v1, 0x1

    mul-int/2addr v3, v5

    aget-byte v3, v11, v3

    const/4 v14, 0x0

    aget-byte v14, v2, v14

    if-ne v3, v14, :cond_2f5

    const/4 v3, 0x1

    :goto_2ec
    const-string v14, "Unable to write Rate Indicator header"

    invoke-static {v3, v14}, Lcom/coremobility/integration/c/a;->a(ZLjava/lang/String;)V

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_29e

    :cond_2f5
    const/4 v3, 0x0

    goto :goto_2ec

    :cond_2f7
    iget v3, v12, Lcom/coremobility/integration/r;->a:I

    add-int/2addr v3, v6

    move v6, v3

    goto :goto_285

    :cond_2fc
    const/4 v2, 0x0

    invoke-static {v8, v4, v2}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    invoke-static {v7, p0, v2}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    mul-int/2addr v1, v9

    move-object/from16 v0, p2

    iput v1, v0, Lcom/coremobility/integration/r;->a:I

    move-object v1, v4

    goto/16 :goto_25
.end method

.method public static b()V
    .registers 3

    const/4 v0, 0x0

    const-string v1, "QCP-1"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/coremobility/e/a/a;->a(Lcom/coremobility/integration/h;Ljava/lang/String;Z)V

    return-void
.end method
