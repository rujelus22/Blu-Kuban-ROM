.class LaM/bF;
.super Lcom/google/googlenav/ui/view/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Z

.field final synthetic b:LaM/bE;


# direct methods
.method constructor <init>(LaM/bE;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, LaM/bF;->b:LaM/bE;

    iput-boolean p2, p0, LaM/bF;->a:Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 6
    .parameter

    .prologue
    .line 111
    instance-of v0, p1, Lcom/google/googlenav/ui/view/a;

    if-nez v0, :cond_6

    .line 113
    const/4 v0, 0x0

    .line 125
    :goto_5
    return v0

    .line 115
    :cond_6
    check-cast p1, Lcom/google/googlenav/ui/view/a;

    .line 120
    const/16 v1, 0x4d

    const-string v2, ""

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->a()I

    move-result v0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_2b

    const-string v0, "1"

    :goto_16
    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, LaM/bF;->b:LaM/bE;

    iget-object v0, v0, LaM/bE;->c:LaM/i;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->b()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, LaM/i;->a(IILjava/lang/Object;)Z

    move-result v0

    goto :goto_5

    .line 120
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, p0, LaM/bF;->a:Z

    if-eqz v0, :cond_45

    const/16 v0, 0x45

    :goto_3c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_45
    const/4 v0, 0x4

    goto :goto_3c
.end method
