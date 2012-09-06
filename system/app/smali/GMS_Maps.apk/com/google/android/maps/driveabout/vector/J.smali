.class public Lcom/google/android/maps/driveabout/vector/j;
.super Lcom/google/android/maps/driveabout/vector/db;
.source "SourceFile"


# static fields
.field private static final d:Ln/aa;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 32
    new-instance v0, Lat/B;

    const v1, 0x243d580

    const v2, 0x81b3200

    invoke-direct {v0, v1, v2}, Lat/B;-><init>(II)V

    invoke-static {v0}, Lt/e;->a(Lat/B;)Ln/Q;

    move-result-object v0

    new-instance v1, Lat/B;

    const v2, 0x1f78a40

    const v3, 0x88601c0

    invoke-direct {v1, v2, v3}, Lat/B;-><init>(II)V

    invoke-static {v1}, Lt/e;->a(Lat/B;)Ln/Q;

    move-result-object v1

    invoke-static {v0, v1}, Ln/aa;->a(Ln/Q;Ln/Q;)Ln/aa;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/j;->d:Ln/aa;

    return-void
.end method

.method constructor <init>(Lcom/google/android/maps/driveabout/vector/dg;Lw/e;Lcom/google/android/maps/driveabout/vector/da;IIIIIIZZZZZZ)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct/range {p0 .. p15}, Lcom/google/android/maps/driveabout/vector/db;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Lw/e;Lcom/google/android/maps/driveabout/vector/da;IIIIIIZZZZZZ)V

    .line 46
    return-void
.end method

.method static a(Ll/q;FLn/Q;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    if-nez p0, :cond_5

    .line 97
    :cond_4
    :goto_4
    return v0

    .line 85
    :cond_5
    invoke-virtual {p0}, Ll/q;->h()Z

    move-result v2

    if-eqz v2, :cond_d

    move v0, v1

    .line 86
    goto :goto_4

    .line 89
    :cond_d
    invoke-virtual {p0}, Ll/q;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 93
    sget-object v2, Lcom/google/android/maps/driveabout/vector/j;->d:Ln/aa;

    invoke-virtual {v2, p2}, Ln/aa;->a(Ln/Q;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v0, v1

    .line 94
    goto :goto_4

    .line 97
    :cond_21
    const/high16 v2, 0x4190

    cmpg-float v2, p1, v2

    if-lez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-static {}, Ll/q;->a()Ll/q;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->m()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->b()Ln/Q;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/j;->a(Ll/q;FLn/Q;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    .line 72
    :goto_15
    return-void

    .line 70
    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/j;->b:Z

    goto :goto_15
.end method

.method protected v_()Lcom/google/android/maps/driveabout/vector/cw;
    .registers 2

    .prologue
    .line 57
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cw;->c:Lcom/google/android/maps/driveabout/vector/cw;

    return-object v0
.end method
