.class public Ln/aC;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Ln/m;

.field protected final b:Ln/l;

.field protected final c:I

.field protected final d:I


# direct methods
.method protected constructor <init>(Ln/m;Ln/l;II)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Ln/aC;->a:Ln/m;

    .line 33
    iput-object p2, p0, Ln/aC;->b:Ln/l;

    .line 34
    iput p3, p0, Ln/aC;->c:I

    .line 35
    iput p4, p0, Ln/aC;->d:I

    .line 36
    return-void
.end method

.method public static a(Ljava/io/DataInput;ILn/am;Ln/ah;[Ljava/lang/String;)Ln/aC;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 49
    const/4 v0, -0x1

    .line 52
    invoke-static {v2}, Ln/aC;->c(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 54
    invoke-static {p0, p1, p2, p3, p4}, Ln/aF;->a(Ljava/io/DataInput;ILn/am;Ln/ah;[Ljava/lang/String;)Ln/l;

    move-result-object v3

    .line 57
    invoke-static {v2}, Ln/aC;->b(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 60
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v0

    .line 62
    :cond_19
    new-instance v1, Ln/aD;

    invoke-direct {v1, v3, v2, v0}, Ln/aD;-><init>(Ln/l;II)V

    move-object v0, v1

    .line 69
    :goto_1f
    return-object v0

    .line 65
    :cond_20
    const/4 v0, 0x2

    invoke-static {v2, v0}, Ln/L;->a(II)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {p0}, Ln/m;->b(Ljava/io/DataInput;)Ln/o;

    move-result-object v0

    .line 69
    :goto_2b
    new-instance v1, Ln/aE;

    invoke-direct {v1, v0}, Ln/aE;-><init>(Ln/m;)V

    move-object v0, v1

    goto :goto_1f

    .line 65
    :cond_32
    invoke-static {p0}, Ln/m;->a(Ljava/io/DataInput;)Ln/n;

    move-result-object v0

    goto :goto_2b
.end method

.method static synthetic a(I)Z
    .registers 2
    .parameter

    .prologue
    .line 17
    invoke-static {p0}, Ln/aC;->b(I)Z

    move-result v0

    return v0
.end method

.method private static b(I)Z
    .registers 2
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x2

    invoke-static {p0, v0}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method

.method private static c(I)Z
    .registers 2
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method
