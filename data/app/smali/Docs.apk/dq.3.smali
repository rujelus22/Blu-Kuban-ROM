.class public Ldq;
.super Ljava/lang/Object;
.source "AclType.java"


# instance fields
.field private final a:Ldu;

.field private final a:Ldx;

.field private final a:Ljava/lang/String;

.field private final a:Z

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ldx;Ldu;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-object p1, p0, Ldq;->a:Ljava/lang/String;

    .line 358
    iput-object p2, p0, Ldq;->b:Ljava/lang/String;

    .line 359
    iput-object p3, p0, Ldq;->a:Ldx;

    .line 360
    iput-object p4, p0, Ldq;->a:Ldu;

    .line 361
    iput-boolean p5, p0, Ldq;->a:Z

    .line 362
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ldx;Ldu;ZLdr;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct/range {p0 .. p5}, Ldq;-><init>(Ljava/lang/String;Ljava/lang/String;Ldx;Ldu;Z)V

    return-void
.end method

.method static synthetic a(Ldq;)Ldx;
    .registers 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Ldq;->a:Ldx;

    return-object v0
.end method

.method static synthetic a(Ldq;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Ldq;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ldq;)Z
    .registers 2
    .parameter

    .prologue
    .line 21
    iget-boolean v0, p0, Ldq;->a:Z

    return v0
.end method

.method static synthetic b(Ldq;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Ldq;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Ldu;
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Ldq;->a:Ldu;

    return-object v0
.end method

.method public a()Ldv;
    .registers 4

    .prologue
    .line 397
    iget-object v0, p0, Ldq;->a:Ldu;

    iget-object v1, p0, Ldq;->a:Ldx;

    iget-boolean v2, p0, Ldq;->a:Z

    invoke-static {v0, v1, v2}, Ldv;->a(Ldu;Ldx;Z)Ldv;

    move-result-object v0

    return-object v0
.end method

.method public a()Ldw;
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Ldq;->a:Ldu;

    invoke-virtual {v0}, Ldu;->a()Ldw;

    move-result-object v0

    return-object v0
.end method

.method public a()Ldx;
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Ldq;->a:Ldx;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Ldq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lds;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Ldq;->a:Ldu;

    invoke-virtual {v0}, Ldu;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 393
    iget-boolean v0, p0, Ldq;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Ldq;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 230
    instance-of v1, p1, Ldq;

    if-nez v1, :cond_6

    .line 234
    :cond_5
    :goto_5
    return v0

    .line 233
    :cond_6
    check-cast p1, Ldq;

    .line 234
    iget-object v1, p0, Ldq;->a:Ljava/lang/String;

    iget-object v2, p1, Ldq;->a:Ljava/lang/String;

    invoke-static {v1, v2}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Ldq;->b:Ljava/lang/String;

    iget-object v2, p1, Ldq;->b:Ljava/lang/String;

    invoke-static {v1, v2}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Ldq;->a:Ldx;

    iget-object v2, p1, Ldq;->a:Ldx;

    invoke-virtual {v1, v2}, Ldx;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Ldq;->a:Ldu;

    iget-object v2, p1, Ldq;->a:Ldu;

    invoke-virtual {v1, v2}, Ldu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Ldq;->a:Z

    iget-boolean v2, p1, Ldq;->a:Z

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 242
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Ldq;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Ldq;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Ldq;->a:Ldx;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Ldq;->a:Ldu;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Ldq;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, LafL;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 402
    const-string v1, "AclType[%s %s %s%s]"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Ldq;->b:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget-object v3, p0, Ldq;->a:Ldu;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Ldq;->a:Ldx;

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget-boolean v0, p0, Ldq;->a:Z

    if-eqz v0, :cond_22

    const-string v0, "+link"

    :goto_1b
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_22
    const-string v0, ""

    goto :goto_1b
.end method
