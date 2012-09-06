.class LaM/ce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/dG;


# instance fields
.field final synthetic a:LaM/bU;


# direct methods
.method private constructor <init>(LaM/bU;)V
    .registers 2
    .parameter

    .prologue
    .line 1466
    iput-object p1, p0, LaM/ce;->a:LaM/bU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LaM/bU;LaM/bV;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1466
    invoke-direct {p0, p1}, LaM/ce;-><init>(LaM/bU;)V

    return-void
.end method


# virtual methods
.method public R_()Z
    .registers 2

    .prologue
    .line 1476
    const/4 v0, 0x0

    return v0
.end method

.method public S_()V
    .registers 1

    .prologue
    .line 1488
    return-void
.end method

.method public a(Lad/y;Ljava/lang/Long;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/aW;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1470
    iget-object v0, p0, LaM/ce;->a:LaM/bU;

    iget-object v1, p0, LaM/ce;->a:LaM/bU;

    invoke-virtual {v1}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/Y;->b()Lad/y;

    move-result-object v1

    iget-object v2, p0, LaM/ce;->a:LaM/bU;

    invoke-virtual {v2}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/Y;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, LaM/bU;->a(Lad/y;Lad/y;Ljava/lang/String;)V

    .line 1472
    return-void
.end method
