.class public Lay/o;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lay/o;->a:Ljava/lang/String;

    iput-object p2, p0, Lay/o;->b:Ljava/lang/Long;

    return-void
.end method

.method public static a(Lam/b;)Lay/o;
    .registers 5

    const/4 v2, 0x2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0, v2}, Lam/b;->e(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    :goto_15
    new-instance v2, Lay/o;

    invoke-direct {v2, v1, v0}, Lay/o;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v2

    :cond_1b
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lay/o;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lay/o;->b:Ljava/lang/Long;

    return-object v0
.end method

.method public c()Lam/b;
    .registers 5

    new-instance v0, Lam/b;

    sget-object v1, LbD/Z;->v:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lay/o;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lam/b;->b(IJ)V

    iget-object v1, p0, Lay/o;->a:Ljava/lang/String;

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    iget-object v2, p0, Lay/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    :cond_1b
    return-object v0
.end method

.method public d()I
    .registers 2

    iget-object v0, p0, Lay/o;->a:Ljava/lang/String;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x8

    return v0

    :cond_8
    iget-object v0, p0, Lay/o;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_5
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lay/o;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lay/o;

    iget-object v2, p0, Lay/o;->b:Ljava/lang/Long;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lay/o;->b:Ljava/lang/Long;

    iget-object v3, p1, Lay/o;->b:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    :cond_1b
    move v0, v1

    goto :goto_4

    :cond_1d
    iget-object v2, p1, Lay/o;->b:Ljava/lang/Long;

    if-nez v2, :cond_1b

    :cond_21
    iget-object v2, p0, Lay/o;->a:Ljava/lang/String;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lay/o;->a:Ljava/lang/String;

    iget-object v3, p1, Lay/o;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_2f
    move v0, v1

    goto :goto_4

    :cond_31
    iget-object v2, p1, Lay/o;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_2f
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lay/o;->a:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lay/o;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lay/o;->b:Ljava/lang/Long;

    if-eqz v2, :cond_17

    iget-object v1, p0, Lay/o;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_17
    add-int/2addr v0, v1

    return v0

    :cond_19
    move v0, v1

    goto :goto_b
.end method
