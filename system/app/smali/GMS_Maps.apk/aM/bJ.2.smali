.class public LaM/bJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaM/w;


# instance fields
.field private a:LaM/bK;


# direct methods
.method public constructor <init>(LaM/bK;)V
    .registers 2
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, LaM/bJ;->a:LaM/bK;

    .line 23
    return-void
.end method

.method private b()Lad/b;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, LaM/bJ;->a:LaM/bK;

    invoke-virtual {v0}, LaM/bK;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    check-cast v0, Lad/b;

    return-object v0
.end method

.method private c()I
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, LaM/bJ;->b()Lad/b;

    move-result-object v0

    invoke-virtual {v0}, Lad/b;->aG()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/view/d;
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 27
    iget-object v0, p0, LaM/bJ;->a:LaM/bK;

    invoke-virtual {v0}, LaM/bK;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    .line 28
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v2

    .line 30
    invoke-direct {p0}, LaM/bJ;->b()Lad/b;

    move-result-object v1

    invoke-direct {p0}, LaM/bJ;->c()I

    move-result v3

    invoke-static {v1, v3, v0, v4, v5}, LaM/G;->a(Lad/b;IIZZ)Ljava/util/Vector;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v4, :cond_2f

    .line 33
    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bd;

    iget-object v1, p0, LaM/bJ;->a:LaM/bK;

    invoke-virtual {v2, v0, v1, v4}, Lcom/google/googlenav/ui/view/e;->a(Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/view/c;Z)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    .line 36
    :goto_2e
    return-object v0

    :cond_2f
    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bd;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/bd;

    iget-object v3, p0, LaM/bJ;->a:LaM/bK;

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/google/googlenav/ui/view/e;->a(Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/view/c;Z)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    goto :goto_2e
.end method
