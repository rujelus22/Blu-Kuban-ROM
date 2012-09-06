.class LaM/aZ;
.super Lcom/google/googlenav/ui/view/b;
.source "SourceFile"


# instance fields
.field final synthetic a:LaM/aY;


# direct methods
.method constructor <init>(LaM/aY;)V
    .registers 2
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, LaM/aZ;->a:LaM/aY;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 7
    .parameter

    .prologue
    .line 376
    instance-of v0, p1, Lcom/google/googlenav/ui/view/a;

    if-nez v0, :cond_6

    .line 378
    const/4 v0, 0x0

    .line 384
    :goto_5
    return v0

    .line 381
    :cond_6
    check-cast p1, Lcom/google/googlenav/ui/view/a;

    .line 382
    const/16 v0, 0x4d

    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LaM/aZ;->a:LaM/aY;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->a()I

    move-result v4

    invoke-static {v3, v4}, LaM/aY;->a(LaM/aY;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, LaM/aZ;->a:LaM/aY;

    iget-object v0, v0, LaM/aY;->c:LaM/i;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->b()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, LaM/i;->a(IILjava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method
