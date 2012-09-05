.class public Lu/R;
.super Lu/P;


# instance fields
.field private a:Z

.field private b:D

.field private c:D


# direct methods
.method public constructor <init>(Lu/P;Lu/x;)V
    .registers 4

    invoke-direct {p0, p1}, Lu/P;-><init>(Lu/P;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/R;->a:Z

    invoke-direct {p0, p2}, Lu/R;->a(Lu/x;)V

    return-void
.end method

.method private a(Lu/x;)V
    .registers 7

    const-wide/high16 v3, -0x4010

    invoke-virtual {p0}, Lu/R;->c()Lt/o;

    move-result-object v0

    if-nez v0, :cond_d

    iput-wide v3, p0, Lu/R;->b:D

    iput-wide v3, p0, Lu/R;->c:D

    :goto_c
    return-void

    :cond_d
    invoke-virtual {v0}, Lt/o;->a()I

    move-result v1

    invoke-virtual {v0}, Lt/o;->b()I

    move-result v0

    invoke-static {v1, v0}, Lt/L;->b(II)Lt/L;

    move-result-object v0

    const-wide/high16 v1, 0x4059

    invoke-virtual {p1, v0, v1, v2}, Lu/x;->a(Lt/L;D)Lu/B;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1, v0}, Lu/x;->a(Lu/B;)D

    move-result-wide v1

    iput-wide v1, p0, Lu/R;->b:D

    invoke-virtual {p1, v0}, Lu/x;->b(Lu/B;)D

    move-result-wide v0

    iput-wide v0, p0, Lu/R;->c:D

    goto :goto_c

    :cond_2e
    iput-wide v3, p0, Lu/R;->b:D

    iput-wide v3, p0, Lu/R;->c:D

    goto :goto_c
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lu/R;->a:Z

    return-void
.end method

.method public i()Z
    .registers 2

    iget-boolean v0, p0, Lu/R;->a:Z

    return v0
.end method

.method public j()D
    .registers 3

    iget-wide v0, p0, Lu/R;->b:D

    return-wide v0
.end method
