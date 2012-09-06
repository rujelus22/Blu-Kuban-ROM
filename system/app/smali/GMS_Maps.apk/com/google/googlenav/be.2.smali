.class Lcom/google/googlenav/bE;
.super Lcom/google/googlenav/friend/bt;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/bC;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/bC;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/bk;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/googlenav/bE;->a:Lcom/google/googlenav/bC;

    .line 176
    invoke-direct {p0, p2, p3, p4}, Lcom/google/googlenav/friend/bt;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/bk;)V

    .line 177
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/bE;)Lcom/google/googlenav/friend/bk;
    .registers 2
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/googlenav/bE;->d:Lcom/google/googlenav/friend/bk;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/bE;)Lcom/google/googlenav/friend/bk;
    .registers 2
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/googlenav/bE;->d:Lcom/google/googlenav/friend/bk;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/googlenav/bE;->b:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 186
    const/16 v0, 0x55

    const-string v1, "os"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "s=a"

    aput-object v4, v2, v3

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/google/googlenav/bE;->b:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v1, p0, Lcom/google/googlenav/bE;->a:Lcom/google/googlenav/bC;

    invoke-static {v1}, Lcom/google/googlenav/bC;->a(Lcom/google/googlenav/bC;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/bF;

    invoke-direct {v2, p0}, Lcom/google/googlenav/bF;-><init>(Lcom/google/googlenav/bE;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lcom/google/googlenav/ui/wizard/cG;)V

    .line 227
    return-void
.end method
