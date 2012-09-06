.class public LaM/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaM/w;


# instance fields
.field private a:LaM/O;


# direct methods
.method public constructor <init>(LaM/O;)V
    .registers 2
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, LaM/E;->a:LaM/O;

    .line 23
    return-void
.end method

.method private a(IZZ)Ljava/util/Vector;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, LaM/E;->c()Lad/b;

    move-result-object v0

    invoke-direct {p0}, LaM/E;->b()I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, LaM/G;->a(Lad/b;IIZZ)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method private b()I
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0}, LaM/E;->c()Lad/b;

    move-result-object v0

    invoke-virtual {v0}, Lad/b;->aG()I

    move-result v0

    return v0
.end method

.method private c()Lad/b;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, LaM/E;->a:LaM/O;

    invoke-virtual {v0}, LaM/O;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    check-cast v0, Lad/b;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/view/d;
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 27
    iget-object v0, p0, LaM/E;->a:LaM/O;

    invoke-virtual {v0}, LaM/O;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    .line 28
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v2

    .line 32
    iget-object v1, p0, LaM/E;->a:LaM/O;

    invoke-virtual {v1}, LaM/O;->bo()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 33
    new-instance v0, Lcom/google/googlenav/ui/be;

    invoke-direct {v0}, Lcom/google/googlenav/ui/be;-><init>()V

    const/16 v1, 0x104

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, LaM/G;->a(Z)Lcom/google/googlenav/ui/aV;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/be;->a(Lcom/google/googlenav/ui/aW;)Lcom/google/googlenav/ui/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/be;->a()Lcom/google/googlenav/ui/bd;

    move-result-object v0

    .line 37
    iget-object v1, p0, LaM/E;->a:LaM/O;

    invoke-virtual {v2, v0, v1, v4}, Lcom/google/googlenav/ui/view/e;->a(Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/view/c;Z)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    .line 43
    :goto_39
    return-object v0

    .line 39
    :cond_3a
    invoke-direct {p0, v0, v4, v3}, LaM/E;->a(IZZ)Ljava/util/Vector;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v4, :cond_51

    .line 41
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bd;

    iget-object v1, p0, LaM/E;->a:LaM/O;

    invoke-virtual {v2, v0, v1, v4}, Lcom/google/googlenav/ui/view/e;->a(Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/view/c;Z)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    goto :goto_39

    .line 43
    :cond_51
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bd;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/bd;

    iget-object v3, p0, LaM/E;->a:LaM/O;

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/google/googlenav/ui/view/e;->a(Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/view/c;Z)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    goto :goto_39
.end method
