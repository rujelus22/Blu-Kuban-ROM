.class public Lcom/google/googlenav/ui/wizard/by;
.super Lcom/google/googlenav/ui/wizard/z;


# instance fields
.field private a:Lcom/google/googlenav/L;

.field private g:Lcom/google/googlenav/aV;

.field private h:Lcom/google/googlenav/aX;

.field private i:Lcom/google/googlenav/aY;

.field private j:Lcom/google/googlenav/aY;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/by;->a:Lcom/google/googlenav/L;

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .registers 4

    new-instance v0, Lcom/google/googlenav/bc;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/by;->g:Lcom/google/googlenav/aV;

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->m()Lcom/google/googlenav/bb;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/bc;-><init>(Lcom/google/googlenav/bb;)V

    invoke-virtual {v0, p1}, Lcom/google/googlenav/bc;->a(Ljava/util/Map;)Lcom/google/googlenav/bc;

    move-result-object v0

    const/16 v1, 0x4eb

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->c(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->b(I)Lcom/google/googlenav/bc;

    move-result-object v0

    const-string v1, "20"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->b(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/by;->h:Lcom/google/googlenav/aX;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->a(Lcom/google/googlenav/aX;)Lcom/google/googlenav/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/by;->g:Lcom/google/googlenav/aV;

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->S()LaJ/H;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->a(LaJ/H;)Lcom/google/googlenav/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/by;->g:Lcom/google/googlenav/aV;

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->ax()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->c(Z)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/by;->a:Lcom/google/googlenav/L;

    invoke-interface {v1, v0}, Lcom/google/googlenav/L;->a(Lcom/google/googlenav/bb;)V

    return-void
.end method


# virtual methods
.method public W_()V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/by;->g:Lcom/google/googlenav/aV;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/by;->h:Lcom/google/googlenav/aX;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/by;->i:Lcom/google/googlenav/aY;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/by;->j:Lcom/google/googlenav/aY;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/by;->a()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/by;->a(Lcom/google/googlenav/aV;Lcom/google/googlenav/aX;Lcom/google/googlenav/aY;Lcom/google/googlenav/aY;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/aV;Lcom/google/googlenav/aX;Lcom/google/googlenav/aY;Lcom/google/googlenav/aY;)V
    .registers 5

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/by;->g:Lcom/google/googlenav/aV;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/by;->h:Lcom/google/googlenav/aX;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/by;->i:Lcom/google/googlenav/aY;

    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/by;->j:Lcom/google/googlenav/aY;

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->l()V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 9

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/by;->g:Lcom/google/googlenav/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->aF()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_d
    sparse-switch p1, :sswitch_data_74

    :cond_10
    :goto_10
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/by;->a()V

    const/4 v0, 0x1

    return v0

    :sswitch_15
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/by;->j:Lcom/google/googlenav/aY;

    invoke-virtual {v1}, Lcom/google/googlenav/aY;->d()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/by;->a(Ljava/util/Map;)V

    goto :goto_10

    :sswitch_28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Lcom/google/googlenav/aZ;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/aY;

    const-string v4, ""

    invoke-direct {v3, p2, v4, v1}, Lcom/google/googlenav/aY;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/by;->a(Ljava/util/Map;)V

    goto :goto_10

    :sswitch_44
    check-cast p3, Ljava/util/List;

    if-eqz p3, :cond_4e

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_61

    :cond_4e
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/by;->j:Lcom/google/googlenav/aY;

    invoke-virtual {v1}, Lcom/google/googlenav/aY;->d()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/by;->a(Ljava/util/Map;)V

    goto :goto_10

    :cond_61
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/aY;

    const-string v3, ""

    invoke-direct {v2, p2, v3, p3}, Lcom/google/googlenav/aY;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/by;->a(Ljava/util/Map;)V

    goto :goto_10

    nop

    :sswitch_data_74
    .sparse-switch
        0x2cb -> :sswitch_15
        0x2cc -> :sswitch_28
        0x2d2 -> :sswitch_44
    .end sparse-switch
.end method

.method protected b()V
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/view/android/aX;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/by;->j:Lcom/google/googlenav/aY;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/by;->i:Lcom/google/googlenav/aY;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/googlenav/ui/view/android/aX;-><init>(Lcom/google/googlenav/ui/wizard/by;Lcom/google/googlenav/aY;Lcom/google/googlenav/aY;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/by;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/by;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    return-void
.end method

.method protected c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/by;->g:Lcom/google/googlenav/aV;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/by;->h:Lcom/google/googlenav/aX;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/by;->i:Lcom/google/googlenav/aY;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/by;->j:Lcom/google/googlenav/aY;

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    return-void
.end method
