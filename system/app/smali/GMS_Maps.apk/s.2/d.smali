.class public abstract Ls/D;
.super Ls/q;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ls/q;-><init>()V

    return-void
.end method


# virtual methods
.method public B()Z
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method protected H()Z
    .registers 2

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method protected X()V
    .registers 1

    .prologue
    .line 69
    return-void
.end method

.method protected a(FF)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 29
    return-void
.end method

.method protected a(FFF)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    return-void
.end method

.method protected a(Lcom/google/android/maps/driveabout/app/bM;)V
    .registers 3
    .parameter

    .prologue
    .line 17
    const v0, 0x7f100116

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bM;->b(I)V

    .line 18
    const v0, 0x7f100115

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bM;->b(I)V

    .line 19
    return-void
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/d;)V
    .registers 2
    .parameter

    .prologue
    .line 43
    return-void
.end method

.method protected a(Ln/Q;)V
    .registers 2
    .parameter

    .prologue
    .line 34
    return-void
.end method

.method protected a(Z)V
    .registers 6
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Ls/D;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    iget-object v1, p0, Ls/D;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    const/high16 v2, -0x4080

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/ci;->a(Lcom/google/android/maps/driveabout/app/aN;FZ)V

    .line 65
    return-void
.end method

.method protected af()V
    .registers 1

    .prologue
    .line 80
    return-void
.end method

.method protected d(Lcom/google/android/maps/driveabout/vector/d;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    return-void
.end method

.method protected u()V
    .registers 4

    .prologue
    .line 51
    iget-object v0, p0, Ls/D;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cI;->a(Ljava/lang/String;Z)V

    .line 52
    return-void
.end method

.method protected x()V
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Ls/D;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->setTopOverlayText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method
