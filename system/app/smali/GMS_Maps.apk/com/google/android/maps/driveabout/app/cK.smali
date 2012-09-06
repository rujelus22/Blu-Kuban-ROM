.class Lcom/google/android/maps/driveabout/app/ck;
.super Lcom/google/android/maps/driveabout/vector/c;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/maps/driveabout/app/bN;

.field private final c:Lcom/google/android/maps/driveabout/app/aN;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/l;Lcom/google/android/maps/driveabout/app/bN;Lcom/google/android/maps/driveabout/app/aN;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/c;-><init>(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 546
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/ck;->b:Lcom/google/android/maps/driveabout/app/bN;

    .line 547
    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/ck;->c:Lcom/google/android/maps/driveabout/app/aN;

    .line 548
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 563
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;)Lcom/google/android/maps/driveabout/vector/m;
    .registers 8
    .parameter

    .prologue
    .line 552
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ck;->b:Lcom/google/android/maps/driveabout/app/bN;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bN;->c()Ln/P;

    move-result-object v1

    invoke-virtual {v1}, Ln/P;->a()Ln/Q;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ck;->a:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v2

    const/high16 v3, 0x4270

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/ck;->c:Lcom/google/android/maps/driveabout/app/aN;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/aN;->c()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/ck;->a:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/l;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ck;->a:Lcom/google/android/maps/driveabout/vector/l;

    .line 558
    return-object p0
.end method
