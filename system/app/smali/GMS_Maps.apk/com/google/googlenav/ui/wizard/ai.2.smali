.class Lcom/google/googlenav/ui/wizard/aI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/bn;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aJ;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/aE;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aE;Lcom/google/googlenav/ui/wizard/aJ;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aI;->b:Lcom/google/googlenav/ui/wizard/aE;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/aI;->a:Lcom/google/googlenav/ui/wizard/aJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 5
    .parameter

    .prologue
    .line 143
    invoke-static {}, Lcom/google/googlenav/friend/af;->A()V

    .line 144
    const-string v0, "home_speedbump_ack"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/friend/aW;->a(Ljava/lang/String;ILcom/google/googlenav/friend/be;)V

    .line 146
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aI;->a:Lcom/google/googlenav/ui/wizard/aJ;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/aJ;->a()V

    .line 147
    return-void
.end method

.method public b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 131
    invoke-static {}, Lcom/google/googlenav/friend/af;->z()V

    .line 132
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aI;->a:Lcom/google/googlenav/ui/wizard/aJ;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/aJ;->b()V

    .line 133
    return-void
.end method

.method public c(Z)V
    .registers 3
    .parameter

    .prologue
    .line 137
    invoke-static {}, Lcom/google/googlenav/friend/af;->z()V

    .line 138
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aI;->a:Lcom/google/googlenav/ui/wizard/aJ;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/aJ;->b()V

    .line 139
    return-void
.end method
