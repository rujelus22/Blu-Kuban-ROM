.class public Lt/al;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lt/m;

.field protected final b:Lt/l;

.field protected final c:I

.field protected final d:I


# direct methods
.method protected constructor <init>(Lt/m;Lt/l;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/al;->a:Lt/m;

    iput-object p2, p0, Lt/al;->b:Lt/l;

    iput p3, p0, Lt/al;->c:I

    iput p4, p0, Lt/al;->d:I

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILt/af;Lt/aa;[Ljava/lang/String;)Lt/al;
    .registers 9

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    const/4 v0, -0x1

    invoke-static {v2}, Lt/al;->c(I)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {p0, p1, p2, p3, p4}, Lt/ao;->a(Ljava/io/DataInput;ILt/af;Lt/aa;[Ljava/lang/String;)Lt/l;

    move-result-object v3

    invoke-static {v2}, Lt/al;->b(I)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {p0}, Lt/aj;->a(Ljava/io/DataInput;)I

    move-result v0

    :cond_19
    new-instance v1, Lt/am;

    invoke-direct {v1, v3, v2, v0}, Lt/am;-><init>(Lt/l;II)V

    move-object v0, v1

    :goto_1f
    return-object v0

    :cond_20
    const/4 v0, 0x2

    invoke-static {v2, v0}, Lt/H;->a(II)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {p0}, Lt/m;->b(Ljava/io/DataInput;)Lt/m;

    move-result-object v0

    :goto_2b
    new-instance v1, Lt/an;

    invoke-direct {v1, v0}, Lt/an;-><init>(Lt/m;)V

    move-object v0, v1

    goto :goto_1f

    :cond_32
    invoke-static {p0}, Lt/m;->a(Ljava/io/DataInput;)Lt/m;

    move-result-object v0

    goto :goto_2b
.end method

.method static synthetic a(I)Z
    .registers 2

    invoke-static {p0}, Lt/al;->b(I)Z

    move-result v0

    return v0
.end method

.method private static b(I)Z
    .registers 2

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method

.method private static c(I)Z
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lt/H;->a(II)Z

    move-result v0

    return v0
.end method
