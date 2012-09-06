.class public Ls/x;
.super Ls/D;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ls/D;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 17
    iget-object v0, p0, Ls/x;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cK;->a(Z)V

    .line 18
    const-string v0, "UIState"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->a(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Ls/x;->b()V

    .line 20
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 24
    iget-object v0, p0, Ls/x;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->c()V

    .line 25
    iget-object v0, p0, Ls/x;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->setMapViewVisibility(I)V

    .line 26
    return-void
.end method

.method public c()V
    .registers 4

    .prologue
    .line 53
    iget-object v0, p0, Ls/x;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/maps/driveabout/app/NavigationView;

    if-eqz v0, :cond_12

    .line 54
    iget-object v0, p0, Ls/x;->a:Ls/n;

    sget-object v1, Ls/w;->h:Ls/w;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ls/n;->a(Ls/w;Z)Z

    .line 56
    :cond_12
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 30
    iget-object v0, p0, Ls/x;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aN;->D()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 31
    iget-object v0, p0, Ls/x;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    iget-object v1, p0, Ls/x;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->b(Lcom/google/android/maps/driveabout/app/aN;)V

    .line 34
    iget-object v0, p0, Ls/x;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->j()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->b()Z

    move-result v0

    if-nez v0, :cond_35

    .line 35
    iget-object v0, p0, Ls/x;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->b(Z)V

    .line 41
    :cond_35
    iget-object v0, p0, Ls/x;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->c()Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->m()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 42
    iget-object v0, p0, Ls/x;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->d()Lcom/google/android/maps/driveabout/app/cI;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->l()V

    .line 44
    :cond_4a
    return-void
.end method
