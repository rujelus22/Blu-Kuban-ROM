.class LaM/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/K;


# instance fields
.field final synthetic a:LaM/bU;


# direct methods
.method constructor <init>(LaM/bU;)V
    .registers 2
    .parameter

    .prologue
    .line 830
    iput-object p1, p0, LaM/cb;->a:LaM/bU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 833
    const/16 v1, 0x73

    const-string v2, "l"

    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, LaM/cb;->a:LaM/bU;

    iget-object v0, v0, LaM/bU;->f:Lcom/google/googlenav/F;

    check-cast v0, Lcom/google/googlenav/Y;

    invoke-virtual {v0}, Lcom/google/googlenav/Y;->i()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 838
    iget-object v0, p0, LaM/cb;->a:LaM/bU;

    const/16 v1, 0xfa3

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, LaM/bU;->a(IILjava/lang/Object;)Z

    .line 840
    return v6
.end method
