.class public Laq/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Z

.field private final f:J


# direct methods
.method public constructor <init>(IIIIZ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laq/b;->a:I

    iput p2, p0, Laq/b;->b:I

    iput p4, p0, Laq/b;->c:I

    iput p3, p0, Laq/b;->d:I

    iput-boolean p5, p0, Laq/b;->e:Z

    invoke-static {}, Laq/b;->f()J

    move-result-wide v0

    iput-wide v0, p0, Laq/b;->f:J

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .registers 11

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Laq/b;-><init>(IIIIZ)V

    return-void
.end method

.method private static f()J
    .registers 2

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    :goto_e
    return-wide v0

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_e
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Laq/b;->a:I

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Laq/b;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Laq/b;->c:I

    return v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Laq/b;->e:Z

    return v0
.end method

.method public e()C
    .registers 2

    iget v0, p0, Laq/b;->b:I

    int-to-char v0, v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
