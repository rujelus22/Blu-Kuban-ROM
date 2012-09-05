.class public Laq/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;

.field private final f:Z

.field private final g:Laq/a;


# direct methods
.method private constructor <init>(Ljava/lang/String;IILjava/lang/Object;Ljava/lang/Object;ZLaq/a;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p3, :cond_a

    const v0, 0xfffe

    if-le p3, v0, :cond_12

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "For compatibility to Android, menu item order must be between 0 and 65534"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iput-object p1, p0, Laq/a;->a:Ljava/lang/String;

    iput p2, p0, Laq/a;->b:I

    iput p3, p0, Laq/a;->c:I

    iput-object p4, p0, Laq/a;->d:Ljava/lang/Object;

    iput-object p5, p0, Laq/a;->e:Ljava/lang/Object;

    iput-boolean p6, p0, Laq/a;->f:Z

    iput-object p7, p0, Laq/a;->g:Laq/a;

    return-void
.end method

.method public static a(Laq/a;Z)Laq/a;
    .registers 10

    new-instance v0, Laq/a;

    iget-object v1, p0, Laq/a;->a:Ljava/lang/String;

    iget v2, p0, Laq/a;->b:I

    iget v3, p0, Laq/a;->c:I

    iget-object v4, p0, Laq/a;->d:Ljava/lang/Object;

    iget-object v5, p0, Laq/a;->e:Ljava/lang/Object;

    move v6, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Laq/a;-><init>(Ljava/lang/String;IILjava/lang/Object;Ljava/lang/Object;ZLaq/a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;II)Laq/a;
    .registers 11

    const/4 v4, 0x0

    new-instance v0, Laq/a;

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Laq/a;-><init>(Ljava/lang/String;IILjava/lang/Object;Ljava/lang/Object;ZLaq/a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;IILjava/lang/Object;Ljava/lang/Object;)Laq/a;
    .registers 13

    new-instance v0, Laq/a;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Laq/a;-><init>(Ljava/lang/String;IILjava/lang/Object;Ljava/lang/Object;ZLaq/a;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Laq/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Laq/a;->a:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Laq/a;->c:I

    return v0
.end method

.method public c()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Laq/a;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Laq/a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Laq/a;->f:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v1, 0x0

    instance-of v0, p1, Laq/a;

    if-nez v0, :cond_6

    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Laq/a;

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, v0, Laq/a;->g:Laq/a;

    invoke-virtual {p0, v2}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, p0, Laq/a;->g:Laq/a;

    if-eqz v2, :cond_26

    iget-object v2, p0, Laq/a;->g:Laq/a;

    invoke-virtual {v2, v0}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_23
    const/4 v0, 0x1

    :goto_24
    move v1, v0

    goto :goto_5

    :cond_26
    move v0, v1

    goto :goto_24
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Laq/a;->g:Laq/a;

    if-eqz v0, :cond_b

    iget-object v0, p0, Laq/a;->g:Laq/a;

    invoke-virtual {v0}, Laq/a;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Laq/a;->a:Ljava/lang/String;

    return-object v0
.end method
