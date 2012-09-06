.class LaM/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/aF;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/friend/aK;

.field final synthetic c:LaM/X;


# direct methods
.method constructor <init>(LaM/X;ILcom/google/googlenav/friend/aK;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1159
    iput-object p1, p0, LaM/aa;->c:LaM/X;

    iput p2, p0, LaM/aa;->a:I

    iput-object p3, p0, LaM/aa;->b:Lcom/google/googlenav/friend/aK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 1181
    iget v0, p0, LaM/aa;->a:I

    return v0
.end method

.method public a(Lat/Y;)I
    .registers 3
    .parameter

    .prologue
    .line 1221
    const/4 v0, 0x2

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 1175
    iget v0, p0, LaM/aa;->a:I

    return v0
.end method

.method public c()Lat/B;
    .registers 2

    .prologue
    .line 1169
    iget-object v0, p0, LaM/aa;->b:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->d()Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public d()Ln/B;
    .registers 2

    .prologue
    .line 1196
    iget-object v0, p0, LaM/aa;->b:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->e()Ln/B;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 1211
    const/4 v0, 0x1

    return v0
.end method

.method public i()I
    .registers 3

    .prologue
    .line 1163
    iget-object v0, p0, LaM/aa;->c:LaM/X;

    iget-object v0, v0, LaM/X;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, LaM/aa;->a:I

    or-int/2addr v0, v1

    return v0
.end method

.method public k()I
    .registers 3

    .prologue
    .line 1186
    iget-object v0, p0, LaM/aa;->b:Lcom/google/googlenav/friend/aK;

    iget-object v1, p0, LaM/aa;->c:LaM/X;

    iget-object v1, v1, LaM/X;->c:Lat/p;

    invoke-virtual {v1}, Lat/p;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/aK;->e(Z)I

    move-result v0

    return v0
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 1216
    const/4 v0, 0x1

    return v0
.end method

.method public m()I
    .registers 3

    .prologue
    .line 1191
    iget-object v0, p0, LaM/aa;->b:Lcom/google/googlenav/friend/aK;

    iget-object v1, p0, LaM/aa;->c:LaM/X;

    iget-object v1, v1, LaM/X;->c:Lat/p;

    invoke-virtual {v1}, Lat/p;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/aK;->f(Z)I

    move-result v0

    return v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1201
    iget-object v0, p0, LaM/aa;->b:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
