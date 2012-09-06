.class LaoU;
.super Ljava/lang/Object;
.source "InjectorImpl.java"


# instance fields
.field final a:LanO;

.field final a:Z

.field final b:Z

.field final c:Z


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, LafL;->a(Ljava/lang/Class;)LafN;

    move-result-object v0

    const-string v1, "stage"

    iget-object v2, p0, LaoU;->a:LanO;

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    const-string v1, "jitDisabled"

    iget-boolean v2, p0, LaoU;->a:Z

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Z)LafN;

    move-result-object v0

    const-string v1, "disableCircularProxies"

    iget-boolean v2, p0, LaoU;->b:Z

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Z)LafN;

    move-result-object v0

    const-string v1, "atInjectRequired"

    iget-boolean v2, p0, LaoU;->c:Z

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Z)LafN;

    move-result-object v0

    invoke-virtual {v0}, LafN;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
