.class public LO/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, LO/d;->a:F

    .line 43
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, LO/d;->b:I

    .line 44
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LO/d;->c:Ljava/lang/String;

    .line 45
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LO/d;->d:Ljava/lang/String;

    .line 46
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LO/d;->e:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private a(I)I
    .registers 4
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0}, LO/d;->a()F

    move-result v0

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40a0

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public a()F
    .registers 2

    .prologue
    .line 54
    iget v0, p0, LO/d;->a:F

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 79
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, LO/d;->a(I)I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, LO/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 104
    iget v0, p0, LO/d;->b:I

    if-ne v0, v1, :cond_c

    .line 105
    const/16 v0, 0x482

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_b
    return-object v0

    :cond_c
    const/16 v0, 0x481

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, LO/d;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method
