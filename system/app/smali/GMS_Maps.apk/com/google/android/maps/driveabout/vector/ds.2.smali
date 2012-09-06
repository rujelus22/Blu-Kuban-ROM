.class Lcom/google/android/maps/driveabout/vector/ds;
.super Lcom/google/android/maps/driveabout/vector/dg;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/vector/dt;)V
    .registers 3
    .parameter

    .prologue
    .line 848
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/dg;-><init>(Lcom/google/android/maps/driveabout/vector/dk;Lcom/google/android/maps/driveabout/vector/dh;)V

    .line 849
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/vector/dt;Lcom/google/android/maps/driveabout/vector/dh;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 822
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/ds;-><init>(Lcom/google/android/maps/driveabout/vector/dt;)V

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    .prologue
    .line 839
    const/16 v0, 0x800

    return v0
.end method

.method public a(Lac/p;Landroid/content/Context;Ljava/util/Locale;Ljava/io/File;ZZ)Lr/aH;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 827
    new-instance v0, Lr/al;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lr/al;-><init>(Lac/p;Lcom/google/android/maps/driveabout/vector/dg;Ljava/util/Locale;Ljava/io/File;Lr/t;)V

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 822
    check-cast p1, Lcom/google/android/maps/driveabout/vector/dg;

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/dg;->a(Lcom/google/android/maps/driveabout/vector/dg;)I

    move-result v0

    return v0
.end method

.method public d()Lr/aE;
    .registers 3

    .prologue
    .line 844
    new-instance v0, Lr/aC;

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/ds;->b()I

    move-result v1

    invoke-direct {v0, v1}, Lr/aC;-><init>(I)V

    return-object v0
.end method

.method public l()Lr/aB;
    .registers 3

    .prologue
    .line 834
    new-instance v0, Lcom/google/android/maps/driveabout/vector/du;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/du;-><init>(Lcom/google/android/maps/driveabout/vector/dh;)V

    return-object v0
.end method
