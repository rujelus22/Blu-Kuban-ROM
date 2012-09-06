.class public LasG;
.super Ljava/lang/Object;


# static fields
.field private static final a:LasI;

.field public static final a:Ljava/lang/Boolean;

.field public static final a:[B

.field public static final b:Ljava/lang/Boolean;


# instance fields
.field private a:I

.field private a:LasJ;

.field private final a:LasL;

.field private b:LasL;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, LasG;->a:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, LasG;->b:Ljava/lang/Boolean;

    new-array v0, v2, [B

    sput-object v0, LasG;->a:[B

    new-instance v0, LasI;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LasI;-><init>(LasH;)V

    sput-object v0, LasG;->a:LasI;

    return-void
.end method

.method public constructor <init>(LasJ;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x8000

    iput v0, p0, LasG;->a:I

    iput-object p1, p0, LasG;->a:LasJ;

    new-instance v0, LasL;

    invoke-direct {v0}, LasL;-><init>()V

    iput-object v0, p0, LasG;->a:LasL;

    return-void
.end method

.method private a(ILasz;)I
    .registers 18

    invoke-virtual/range {p0 .. p1}, LasG;->a(I)I

    move-result v8

    invoke-direct/range {p0 .. p1}, LasG;->c(I)I

    move-result v9

    shl-int/lit8 v1, p1, 0x3

    or-int v10, v1, v9

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v7, v1

    move v1, v2

    :goto_10
    if-ge v7, v8, :cond_f9

    int-to-long v2, v10

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, LasG;->a(Ljava/io/OutputStream;J)I

    move-result v2

    add-int v4, v1, v2

    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Lasz;->b()I

    move-result v11

    packed-switch v9, :pswitch_data_fa

    :pswitch_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_29
    const/16 v1, 0x13

    move/from16 v0, p1

    invoke-direct {p0, v0, v7, v1}, LasG;->a(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v1, 0x5

    if-ne v9, v1, :cond_4d

    const/4 v1, 0x4

    :goto_3b
    const/4 v2, 0x0

    :goto_3c
    if-ge v2, v1, :cond_50

    const-wide/16 v12, 0xff

    and-long/2addr v12, v5

    long-to-int v12, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lasz;->write(I)V

    const/16 v12, 0x8

    shr-long/2addr v5, v12

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_4d
    const/16 v1, 0x8

    goto :goto_3b

    :cond_50
    move v2, v3

    move v1, v4

    :goto_52
    if-nez v2, :cond_5a

    invoke-virtual/range {p2 .. p2}, Lasz;->b()I

    move-result v2

    sub-int/2addr v2, v11

    add-int/2addr v1, v2

    :cond_5a
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_10

    :pswitch_5e
    const/16 v1, 0x13

    move/from16 v0, p1

    invoke-direct {p0, v0, v7, v1}, LasG;->a(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct/range {p0 .. p1}, LasG;->a(I)Z

    move-result v5

    if-eqz v5, :cond_76

    invoke-static {v1, v2}, LasG;->a(J)J

    move-result-wide v1

    :cond_76
    move-object/from16 v0, p2

    invoke-static {v0, v1, v2}, LasG;->a(Ljava/io/OutputStream;J)I

    move v2, v3

    move v1, v4

    goto :goto_52

    :pswitch_7e
    invoke-virtual/range {p0 .. p1}, LasG;->b(I)I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_a5

    const/16 v1, 0x10

    :goto_88
    move/from16 v0, p1

    invoke-direct {p0, v0, v7, v1}, LasG;->a(III)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, [B

    if-eqz v2, :cond_a8

    check-cast v1, [B

    check-cast v1, [B

    array-length v2, v1

    int-to-long v5, v2

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6}, LasG;->a(Ljava/io/OutputStream;J)I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lasz;->write([B)V

    move v2, v3

    move v1, v4

    goto :goto_52

    :cond_a5
    const/16 v1, 0x19

    goto :goto_88

    :cond_a8
    invoke-virtual/range {p2 .. p2}, Lasz;->b()I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lasz;->a(I)V

    invoke-virtual/range {p2 .. p2}, Lasz;->a()I

    move-result v2

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lasz;->a(I)V

    check-cast v1, LasG;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, LasG;->a(Lasz;)I

    move-result v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v1}, Lasz;->a(II)V

    int-to-long v2, v1

    invoke-static {v2, v3}, LasG;->a(J)I

    move-result v2

    add-int/2addr v1, v2

    add-int v2, v4, v1

    const/4 v1, 0x1

    move v14, v1

    move v1, v2

    move v2, v14

    goto/16 :goto_52

    :pswitch_d6
    const/16 v1, 0x1a

    move/from16 v0, p1

    invoke-direct {p0, v0, v7, v1}, LasG;->a(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LasG;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, LasG;->a(Lasz;)I

    move-result v1

    add-int/2addr v1, v4

    shl-int/lit8 v2, p1, 0x3

    or-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, LasG;->a(Ljava/io/OutputStream;J)I

    move-result v2

    add-int/2addr v2, v1

    const/4 v1, 0x1

    move v14, v1

    move v1, v2

    move v2, v14

    goto/16 :goto_52

    :cond_f9
    return v1

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_29
        :pswitch_7e
        :pswitch_d6
        :pswitch_23
        :pswitch_29
    .end packed-switch
.end method

.method private static a(J)I
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    const/16 v0, 0xa

    :cond_8
    return v0

    :cond_9
    const/4 v0, 0x1

    :goto_a
    const-wide/16 v1, 0x80

    cmp-long v1, p0, v1

    if-ltz v1, :cond_8

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x7

    shr-long/2addr p0, v1

    goto :goto_a
.end method

.method private a(Lasz;)I
    .registers 5

    iget-object v0, p0, LasG;->a:LasL;

    invoke-virtual {v0}, LasL;->a()LasM;

    move-result-object v1

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v1}, LasM;->a()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v1}, LasM;->a()I

    move-result v2

    invoke-direct {p0, v2, p1}, LasG;->a(ILasz;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_7

    :cond_17
    return v0
.end method

.method private a(Ljava/io/InputStream;IZLasI;)I
    .registers 15

    if-eqz p3, :cond_5

    invoke-virtual {p0}, LasG;->a()V

    :cond_5
    move v0, p2

    :goto_6
    if-lez v0, :cond_13

    const/4 v1, 0x1

    invoke-static {p1, v1, p4}, LasG;->a(Ljava/io/InputStream;ZLasI;)J

    move-result-wide v3

    const-wide/16 v1, -0x1

    cmp-long v1, v3, v1

    if-nez v1, :cond_1b

    :cond_13
    :goto_13
    if-gez v0, :cond_e9

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_1b
    iget v1, p4, LasI;->a:I

    sub-int v2, v0, v1

    long-to-int v0, v3

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x4

    if-ne v0, v1, :cond_27

    move v0, v2

    goto :goto_13

    :cond_27
    const/4 v1, 0x3

    ushr-long/2addr v3, v1

    long-to-int v6, v3

    invoke-virtual {p0, v6}, LasG;->b(I)I

    move-result v1

    const/16 v3, 0x10

    if-ne v1, v3, :cond_46

    iget-object v1, p0, LasG;->b:LasL;

    if-nez v1, :cond_3d

    new-instance v1, LasL;

    invoke-direct {v1}, LasL;-><init>()V

    iput-object v1, p0, LasG;->b:LasL;

    :cond_3d
    iget-object v1, p0, LasG;->b:LasL;

    invoke-static {v0}, LasN;->a(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, LasL;->a(ILjava/lang/Object;)V

    :cond_46
    packed-switch v0, :pswitch_data_ea

    :pswitch_49
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown wire type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", reading garbage data?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_68
    const/4 v0, 0x0

    invoke-static {p1, v0, p4}, LasG;->a(Ljava/io/InputStream;ZLasI;)J

    move-result-wide v0

    iget v3, p4, LasI;->a:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v6}, LasG;->a(I)Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-static {v0, v1}, LasG;->b(J)J

    move-result-wide v0

    :cond_7a
    invoke-static {v0, v1}, LasN;->a(J)Ljava/lang/Long;

    move-result-object v0

    move v1, v2

    :cond_7f
    :goto_7f
    invoke-direct {p0, v6, v0}, LasG;->b(ILjava/lang/Object;)V

    move v0, v1

    goto :goto_6

    :pswitch_84
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9d

    const/4 v0, 0x4

    :goto_8b
    sub-int v1, v2, v0

    :goto_8d
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_a0

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-long v7, v0

    shl-long/2addr v7, v3

    or-long/2addr v4, v7

    add-int/lit8 v0, v3, 0x8

    move v3, v0

    move v0, v2

    goto :goto_8d

    :cond_9d
    const/16 v0, 0x8

    goto :goto_8b

    :cond_a0
    invoke-static {v4, v5}, LasN;->a(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_7f

    :pswitch_a5
    const/4 v0, 0x0

    invoke-static {p1, v0, p4}, LasG;->a(Ljava/io/InputStream;ZLasI;)J

    move-result-wide v0

    long-to-int v3, v0

    iget v0, p4, LasI;->a:I

    sub-int v0, v2, v0

    sub-int v1, v0, v3

    if-nez v3, :cond_c8

    sget-object v0, LasG;->a:[B

    :goto_b5
    const/4 v2, 0x0

    :goto_b6
    if-ge v2, v3, :cond_7f

    sub-int v4, v3, v2

    invoke-virtual {p1, v0, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gtz v4, :cond_cb

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexp.EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c8
    new-array v0, v3, [B

    goto :goto_b5

    :cond_cb
    add-int/2addr v2, v4

    goto :goto_b6

    :pswitch_cd
    new-instance v1, LasG;

    iget-object v0, p0, LasG;->a:LasJ;

    if-nez v0, :cond_e0

    const/4 v0, 0x0

    :goto_d4
    invoke-direct {v1, v0}, LasG;-><init>(LasJ;)V

    const/4 v0, 0x0

    invoke-direct {v1, p1, v2, v0, p4}, LasG;->a(Ljava/io/InputStream;IZLasI;)I

    move-result v0

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto :goto_7f

    :cond_e0
    iget-object v0, p0, LasG;->a:LasJ;

    invoke-virtual {v0, v6}, LasJ;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LasJ;

    goto :goto_d4

    :cond_e9
    return v0

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_68
        :pswitch_84
        :pswitch_a5
        :pswitch_cd
        :pswitch_49
        :pswitch_84
    .end packed-switch
.end method

.method static a(Ljava/io/OutputStream;J)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_16

    const-wide/16 v1, 0x7f

    and-long/2addr v1, p1

    long-to-int v1, v1

    const/4 v2, 0x7

    ushr-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_17

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    :cond_16
    return v0

    :cond_17
    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static a(Ljava/lang/Object;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    instance-of v0, p0, Ljava/util/Vector;

    if-eqz v0, :cond_f

    check-cast p0, Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_3

    :cond_f
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static a(J)J
    .registers 6

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    ushr-long v2, p0, v2

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private static a(Ljava/io/InputStream;ZLasI;)J
    .registers 13

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    iput v0, p2, LasI;->a:I

    move v3, v0

    move v7, v0

    move-wide v8, v1

    move-wide v0, v8

    move v2, v7

    :goto_a
    const/16 v4, 0xa

    if-ge v2, v4, :cond_2d

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_24

    if-nez v2, :cond_1c

    if-eqz p1, :cond_1c

    const-wide/16 v0, -0x1

    :goto_1b
    return-wide v0

    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v3

    or-long/2addr v0, v5

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_32

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    iput v2, p2, LasI;->a:I

    goto :goto_1b

    :cond_32
    add-int/lit8 v3, v3, 0x7

    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method private a(III)Ljava/lang/Object;
    .registers 6

    invoke-static {p1}, LasG;->a(I)V

    iget-object v0, p0, LasG;->a:LasL;

    invoke-virtual {v0, p1}, LasL;->a(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LasG;->a(Ljava/lang/Object;)I

    move-result v1

    if-lt p2, v1, :cond_15

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_15
    invoke-direct {p0, p1, p2, p3, v0}, LasG;->a(IIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(IIILjava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    instance-of v1, p4, Ljava/util/Vector;

    if-eqz v1, :cond_1d

    check-cast p4, Ljava/util/Vector;

    invoke-virtual {p4, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    :goto_b
    invoke-direct {p0, v0, p3, p1}, LasG;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_18

    if-eqz v0, :cond_18

    if-nez p4, :cond_19

    invoke-direct {p0, p1, v1}, LasG;->c(ILjava/lang/Object;)V

    :cond_18
    :goto_18
    return-object v1

    :cond_19
    invoke-virtual {p4, v1, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_18

    :cond_1d
    move-object v2, v0

    move-object v0, p4

    move-object p4, v2

    goto :goto_b
.end method

.method private a(Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 7

    packed-switch p2, :pswitch_data_ac

    :pswitch_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupp.Type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    :cond_f
    :goto_f
    :pswitch_f
    return-object p1

    :cond_10
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_da

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22
    sget-object p1, LasG;->a:Ljava/lang/Boolean;

    goto :goto_f

    :pswitch_25
    sget-object p1, LasG;->b:Ljava/lang/Boolean;

    goto :goto_f

    :pswitch_28
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-wide/16 v0, 0x1

    :goto_36
    invoke-static {v0, v1}, LasN;->a(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_f

    :cond_3b
    const-wide/16 v0, 0x0

    goto :goto_36

    :pswitch_3e
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_49

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lasy;->a(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_f

    :cond_49
    instance-of v0, p1, LasG;

    if-eqz v0, :cond_f

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_52
    check-cast p1, LasG;

    invoke-virtual {p1, v0}, LasG;->a(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5a} :catch_5c

    move-result-object p1

    goto :goto_f

    :catch_5c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_67
    instance-of v0, p1, [B

    if-eqz v0, :cond_f

    check-cast p1, [B

    check-cast p1, [B

    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lasy;->a([BIIZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    :pswitch_77
    instance-of v0, p1, [B

    if-eqz v0, :cond_f

    if-lez p3, :cond_99

    :try_start_7d
    iget-object v0, p0, LasG;->a:LasJ;

    if-eqz v0, :cond_99

    new-instance v1, LasG;

    iget-object v0, p0, LasG;->a:LasJ;

    invoke-virtual {v0, p3}, LasJ;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LasJ;

    invoke-direct {v1, v0}, LasG;-><init>(LasJ;)V

    move-object v0, v1

    :goto_8f
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {v0, p1}, LasG;->a([B)LasG;

    move-result-object p1

    goto/16 :goto_f

    :cond_99
    new-instance v0, LasG;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LasG;-><init>(LasJ;)V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_9f} :catch_a0

    goto :goto_8f

    :catch_a0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_ac
    .packed-switch 0x10
        :pswitch_f
        :pswitch_3
        :pswitch_3
        :pswitch_28
        :pswitch_3
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_b
        :pswitch_3e
        :pswitch_77
        :pswitch_77
        :pswitch_67
        :pswitch_3
        :pswitch_3
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_3e
        :pswitch_67
    .end packed-switch

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method private static a(I)V
    .registers 1

    return-void
.end method

.method private a(IILjava/lang/Object;Z)V
    .registers 8

    invoke-static {p1}, LasG;->a(I)V

    iget-object v0, p0, LasG;->a:LasL;

    invoke-virtual {v0, p1}, LasL;->a(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    instance-of v2, v1, Ljava/util/Vector;

    if-eqz v2, :cond_11

    move-object v0, v1

    check-cast v0, Ljava/util/Vector;

    :cond_11
    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_1f

    :cond_1b
    invoke-direct {p0, p1, p3}, LasG;->c(ILjava/lang/Object;)V

    :goto_1e
    return-void

    :cond_1f
    invoke-direct {p0, p1, p3}, LasG;->a(ILjava/lang/Object;)V

    if-nez v0, :cond_31

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, LasG;->a:LasL;

    invoke-virtual {v1, p1, v0}, LasL;->a(ILjava/lang/Object;)V

    :cond_31
    if-eqz p4, :cond_37

    invoke-virtual {v0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1e

    :cond_37
    invoke-virtual {v0, p3, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_1e
.end method

.method private a(ILjava/lang/Object;)V
    .registers 3

    return-void
.end method

.method private a(Ljava/io/OutputStream;Z)V
    .registers 10

    const/4 v1, 0x0

    new-instance v3, Lasz;

    invoke-direct {v3}, Lasz;-><init>()V

    invoke-direct {p0, v3}, LasG;->a(Lasz;)I

    move-result v2

    if-eqz p2, :cond_12

    move-object v0, p1

    check-cast v0, Ljava/io/DataOutput;

    invoke-interface {v0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_12
    invoke-virtual {v3}, Lasz;->a()I

    move-result v4

    move v0, v1

    :goto_17
    if-ge v0, v4, :cond_30

    invoke-virtual {v3, v0}, Lasz;->a(I)I

    move-result v2

    sub-int v5, v2, v1

    invoke-virtual {v3, p1, v1, v5}, Lasz;->a(Ljava/io/OutputStream;II)V

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v3, v1}, Lasz;->a(I)I

    move-result v1

    int-to-long v5, v1

    invoke-static {p1, v5, v6}, LasG;->a(Ljava/io/OutputStream;J)I

    add-int/lit8 v0, v0, 0x2

    move v1, v2

    goto :goto_17

    :cond_30
    invoke-virtual {v3}, Lasz;->b()I

    move-result v0

    if-ge v1, v0, :cond_3e

    invoke-virtual {v3}, Lasz;->b()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v3, p1, v1, v0}, Lasz;->a(Ljava/io/OutputStream;II)V

    :cond_3e
    return-void
.end method

.method private a(I)Z
    .registers 4

    invoke-virtual {p0, p1}, LasG;->b(I)I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_c

    const/16 v1, 0x22

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static b(J)J
    .registers 6

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private b(ILjava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, LasG;->a(IILjava/lang/Object;Z)V

    return-void
.end method

.method private final c(I)I
    .registers 7

    const/16 v4, 0x2f

    invoke-virtual {p0, p1}, LasG;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_3e

    :pswitch_9
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupp.Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LasG;->a:LasJ;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_34
    const/4 v0, 0x0

    :goto_35
    :pswitch_35
    return v0

    :pswitch_36
    const/4 v0, 0x2

    goto :goto_35

    :pswitch_38
    const/4 v0, 0x1

    goto :goto_35

    :pswitch_3a
    const/4 v0, 0x5

    goto :goto_35

    :pswitch_3c
    const/4 v0, 0x3

    goto :goto_35

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_9
        :pswitch_35
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_35
        :pswitch_38
        :pswitch_3a
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_38
        :pswitch_3a
        :pswitch_34
        :pswitch_36
        :pswitch_3c
        :pswitch_36
        :pswitch_36
        :pswitch_34
        :pswitch_34
        :pswitch_3a
        :pswitch_38
        :pswitch_34
        :pswitch_34
        :pswitch_36
        :pswitch_36
    .end packed-switch
.end method

.method private c(ILjava/lang/Object;)V
    .registers 4

    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_8
    if-eqz p2, :cond_d

    invoke-direct {p0, p1, p2}, LasG;->a(ILjava/lang/Object;)V

    :cond_d
    iget-object v0, p0, LasG;->a:LasL;

    invoke-virtual {v0, p1, p2}, LasL;->a(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3

    iget-object v0, p0, LasG;->a:LasL;

    invoke-virtual {v0, p1}, LasL;->a(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LasG;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/io/InputStream;I)I
    .registers 6

    const/4 v0, 0x1

    new-instance v1, LasI;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LasI;-><init>(LasH;)V

    invoke-direct {p0, p1, p2, v0, v1}, LasG;->a(Ljava/io/InputStream;IZLasI;)I

    move-result v0

    return v0
.end method

.method public a([B)LasG;
    .registers 4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-virtual {p0, v0, v1}, LasG;->a(Ljava/io/InputStream;I)I

    return-object p0
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, LasG;->a:LasL;

    invoke-virtual {v0}, LasL;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, LasG;->b:LasL;

    return-void
.end method

.method public a(IF)V
    .registers 4

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, LasG;->a(II)V

    return-void
.end method

.method public a(II)V
    .registers 5

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, LasG;->a(IJ)V

    return-void
.end method

.method public a(IJ)V
    .registers 5

    invoke-static {p2, p3}, LasN;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, LasG;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public a(ILasG;)V
    .registers 3

    invoke-direct {p0, p1, p2}, LasG;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, LasG;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public a(IZ)V
    .registers 4

    if-eqz p2, :cond_8

    sget-object v0, LasG;->b:Ljava/lang/Boolean;

    :goto_4
    invoke-direct {p0, p1, v0}, LasG;->c(ILjava/lang/Object;)V

    return-void

    :cond_8
    sget-object v0, LasG;->a:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public a(I[B)V
    .registers 3

    invoke-direct {p0, p1, p2}, LasG;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/io/OutputStream;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LasG;->a(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public b(I)I
    .registers 6

    const/4 v1, 0x0

    const/16 v3, 0x10

    iget-object v0, p0, LasG;->a:LasJ;

    if-eqz v0, :cond_3d

    iget-object v0, p0, LasG;->a:LasJ;

    invoke-virtual {v0, p1}, LasJ;->a(I)I

    move-result v2

    :goto_d
    if-ne v2, v3, :cond_3b

    iget-object v0, p0, LasG;->b:LasL;

    if-eqz v0, :cond_37

    iget-object v0, p0, LasG;->b:LasL;

    invoke-virtual {v0, p1}, LasL;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_1b
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_21
    if-ne v0, v3, :cond_36

    invoke-virtual {p0, p1}, LasG;->a(I)I

    move-result v2

    if-lez v2, :cond_36

    invoke-direct {p0, p1, v1, v3}, LasG;->a(III)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Long;

    if-nez v2, :cond_35

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_39

    :cond_35
    move v0, v1

    :cond_36
    :goto_36
    return v0

    :cond_37
    const/4 v0, 0x0

    goto :goto_1b

    :cond_39
    const/4 v0, 0x2

    goto :goto_36

    :cond_3b
    move v0, v2

    goto :goto_21

    :cond_3d
    move v2, v3

    goto :goto_d
.end method

.method public b(ILasG;)V
    .registers 3

    invoke-direct {p0, p1, p2}, LasG;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, LasG;->c(ILjava/lang/Object;)V

    return-void
.end method
