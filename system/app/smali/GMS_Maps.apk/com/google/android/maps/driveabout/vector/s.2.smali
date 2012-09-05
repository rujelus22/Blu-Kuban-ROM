.class public Lcom/google/android/maps/driveabout/vector/s;
.super Lcom/google/android/maps/driveabout/vector/cI;


# static fields
.field private static final f:Lt/V;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, LaJ/B;

    const v1, 0x243d580

    const v2, 0x81b3200

    invoke-direct {v0, v1, v2}, LaJ/B;-><init>(II)V

    invoke-static {v0}, Lz/f;->a(LaJ/B;)Lt/L;

    move-result-object v0

    new-instance v1, LaJ/B;

    const v2, 0x1f78a40

    const v3, 0x88601c0

    invoke-direct {v1, v2, v3}, LaJ/B;-><init>(II)V

    invoke-static {v1}, Lz/f;->a(LaJ/B;)Lt/L;

    move-result-object v1

    invoke-static {v0, v1}, Lt/V;->a(Lt/L;Lt/L;)Lt/V;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/s;->f:Lt/V;

    return-void
.end method

.method constructor <init>(Lcom/google/android/maps/driveabout/vector/cU;Lcom/google/android/maps/driveabout/vector/cC;Lcom/google/android/maps/driveabout/vector/cB;IIIIIIZZZZZZ)V
    .registers 16

    invoke-direct/range {p0 .. p15}, Lcom/google/android/maps/driveabout/vector/cI;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Lcom/google/android/maps/driveabout/vector/cC;Lcom/google/android/maps/driveabout/vector/cB;IIIIIIZZZZZZ)V

    return-void
.end method

.method static a(Lr/l;FLt/L;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    invoke-virtual {p0}, Lr/l;->g()Z

    move-result v2

    if-eqz v2, :cond_d

    move v0, v1

    goto :goto_4

    :cond_d
    invoke-virtual {p0}, Lr/l;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/google/android/maps/driveabout/vector/s;->f:Lt/V;

    invoke-virtual {v2, p2}, Lt/V;->a(Lt/L;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v0, v1

    goto :goto_4

    :cond_21
    const/high16 v2, 0x4190

    cmpg-float v2, p1, v2

    if-lez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 7

    invoke-static {}, Lr/l;->a()Lr/l;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->l()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->b()Lt/L;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/s;->a(Lr/l;FLt/L;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/cI;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V

    :goto_15
    return-void

    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/s;->d:Z

    goto :goto_15
.end method

.method protected t_()Lcom/google/android/maps/driveabout/vector/cc;
    .registers 2

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cc;->c:Lcom/google/android/maps/driveabout/vector/cc;

    return-object v0
.end method
