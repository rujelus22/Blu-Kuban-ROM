.class public Ls/A;
.super Ls/D;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ls/D;-><init>()V

    return-void
.end method


# virtual methods
.method protected Z()V
    .registers 4

    .prologue
    .line 28
    iget-object v0, p0, Ls/A;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 29
    iget-object v0, p0, Ls/A;->a:Ls/n;

    sget-object v1, Ls/w;->c:Ls/w;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    .line 31
    :cond_14
    return-void
.end method

.method protected ab()V
    .registers 1

    .prologue
    .line 35
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 15
    iget-object v0, p0, Ls/A;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    const v1, 0x7f0d006a

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cK;->a(I)V

    .line 16
    return-void
.end method

.method public c()V
    .registers 4

    .prologue
    .line 21
    iget-object v0, p0, Ls/A;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 22
    iget-object v0, p0, Ls/A;->a:Ls/n;

    sget-object v1, Ls/w;->c:Ls/w;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    .line 24
    :cond_14
    return-void
.end method
