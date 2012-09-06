.class Lcom/google/googlenav/ui/wizard/gw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/aY;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gj;)V
    .registers 2
    .parameter

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gw;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/aW;)V
    .registers 3
    .parameter

    .prologue
    .line 1142
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->H()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1143
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gw;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gj;->a()V

    .line 1145
    :cond_b
    return-void
.end method

.method public a(Lcom/google/googlenav/aW;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1133
    return-void
.end method

.method public b(Lcom/google/googlenav/aW;)V
    .registers 4
    .parameter

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gw;->a:Lcom/google/googlenav/ui/wizard/gj;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->c()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1f

    .line 1152
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gw;->a:Lcom/google/googlenav/ui/wizard/gj;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->d()Lcom/google/googlenav/ui/wizard/A;

    .line 1154
    :cond_1f
    return-void
.end method
