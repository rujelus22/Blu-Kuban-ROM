.class public Lau/u;
.super Ljava/lang/Object;


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:J

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;


# direct methods
.method private constructor <init>(ZIIILjava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lau/u;->a:Z

    iput p2, p0, Lau/u;->b:I

    iput p3, p0, Lau/u;->c:I

    iput p4, p0, Lau/u;->d:I

    iput-object p5, p0, Lau/u;->e:Ljava/lang/String;

    iput-object p6, p0, Lau/u;->f:Ljava/lang/String;

    iput-boolean p7, p0, Lau/u;->g:Z

    iput-wide p8, p0, Lau/u;->h:J

    iput-object p10, p0, Lau/u;->i:Ljava/lang/String;

    iput-object p11, p0, Lau/u;->j:Ljava/lang/String;

    return-void
.end method

.method public static a(Lam/b;I)Lau/u;
    .registers 14

    new-instance v0, Lau/u;

    const/4 v1, 0x1

    const/16 v2, 0x66

    invoke-static {p0, v2}, Lau/u;->b(Lam/b;I)I

    move-result v2

    const/16 v3, 0x6c

    invoke-static {p0, v3}, Lau/u;->b(Lam/b;I)I

    move-result v4

    const/4 v3, 0x2

    invoke-static {p0, v3}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0xb

    invoke-static {p0, v3}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v6

    const/16 v3, 0x17

    invoke-static {p0, v3}, Lam/g;->h(Lam/b;I)Z

    move-result v7

    const/16 v3, 0xc

    invoke-static {p0, v3}, Lam/g;->f(Lam/b;I)J

    move-result-wide v8

    const/16 v3, 0xd

    invoke-static {p0, v3}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v10

    const/16 v3, 0x1c

    invoke-static {p0, v3}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v11

    move v3, p1

    invoke-direct/range {v0 .. v11}, Lau/u;-><init>(ZIIILjava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lau/s;)Lau/u;
    .registers 2

    invoke-static {p0}, Lau/u;->b(Lau/s;)I

    move-result v0

    invoke-static {p0, v0}, Lau/u;->a(Lau/s;I)Lau/u;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lau/s;I)Lau/u;
    .registers 14

    new-instance v0, Lau/u;

    const/4 v1, 0x0

    invoke-static {p0}, Lau/u;->b(Lau/s;)I

    move-result v2

    invoke-virtual {p0}, Lau/s;->J()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {p0}, Lau/s;->K()I

    move-result v4

    :goto_11
    invoke-virtual {p0}, Lau/s;->B()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lau/s;->s()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lau/s;->P()Z

    move-result v7

    invoke-virtual {p0}, Lau/s;->w()J

    move-result-wide v8

    invoke-virtual {p0}, Lau/s;->x()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lau/s;->y()Ljava/lang/String;

    move-result-object v11

    move v3, p1

    invoke-direct/range {v0 .. v11}, Lau/u;-><init>(ZIIILjava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2e
    const/4 v4, -0x1

    goto :goto_11
.end method

.method public static a(Lau/u;)Lau/u;
    .registers 13

    new-instance v0, Lau/u;

    const/4 v1, 0x0

    iget v2, p0, Lau/u;->b:I

    iget v3, p0, Lau/u;->b:I

    iget v4, p0, Lau/u;->d:I

    iget-object v5, p0, Lau/u;->e:Ljava/lang/String;

    iget-object v6, p0, Lau/u;->f:Ljava/lang/String;

    iget-boolean v7, p0, Lau/u;->g:Z

    iget-wide v8, p0, Lau/u;->h:J

    iget-object v10, p0, Lau/u;->i:Ljava/lang/String;

    iget-object v11, p0, Lau/u;->j:Ljava/lang/String;

    invoke-direct/range {v0 .. v11}, Lau/u;-><init>(ZIIILjava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(Lam/b;I)I
    .registers 3

    invoke-virtual {p0, p1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lam/b;->d(I)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method private static b(Lau/s;)I
    .registers 2

    invoke-virtual {p0}, Lau/s;->H()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lau/s;->I()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method
