.class public Lcom/google/googlenav/ui/wizard/cd;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/J;

.field private b:Lcom/google/googlenav/aW;

.field private c:Lcom/google/googlenav/aY;

.field private i:Lcom/google/googlenav/aZ;

.field private j:Lcom/google/googlenav/aZ;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 39
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/cd;->a:Lcom/google/googlenav/J;

    .line 40
    return-void
.end method

.method private a(Ljava/util/Map;)V
    .registers 4
    .parameter

    .prologue
    .line 116
    new-instance v0, Lcom/google/googlenav/bd;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cd;->b:Lcom/google/googlenav/aW;

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->m()Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/bd;-><init>(Lcom/google/googlenav/bc;)V

    invoke-virtual {v0, p1}, Lcom/google/googlenav/bd;->a(Ljava/util/Map;)Lcom/google/googlenav/bd;

    move-result-object v0

    const/16 v1, 0x5f9

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->c(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v0

    const-string v1, "20"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->b(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cd;->c:Lcom/google/googlenav/aY;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->a(Lcom/google/googlenav/aY;)Lcom/google/googlenav/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cd;->b:Lcom/google/googlenav/aW;

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->U()Lat/H;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->a(Lat/H;)Lcom/google/googlenav/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cd;->b:Lcom/google/googlenav/aW;

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->aA()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->c(Z)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cd;->a:Lcom/google/googlenav/J;

    invoke-interface {v1, v0}, Lcom/google/googlenav/J;->a(Lcom/google/googlenav/bc;)V

    .line 126
    return-void
.end method


# virtual methods
.method public T_()V
    .registers 5

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cd;->b:Lcom/google/googlenav/aW;

    .line 69
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cd;->c:Lcom/google/googlenav/aY;

    .line 70
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cd;->i:Lcom/google/googlenav/aZ;

    .line 71
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/cd;->j:Lcom/google/googlenav/aZ;

    .line 72
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cd;->a()V

    .line 73
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/cd;->a(Lcom/google/googlenav/aW;Lcom/google/googlenav/aY;Lcom/google/googlenav/aZ;Lcom/google/googlenav/aZ;)V

    .line 74
    return-void
.end method

.method public a(Lcom/google/googlenav/aW;Lcom/google/googlenav/aY;Lcom/google/googlenav/aZ;Lcom/google/googlenav/aZ;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cd;->b:Lcom/google/googlenav/aW;

    .line 45
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/cd;->c:Lcom/google/googlenav/aY;

    .line 46
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/cd;->i:Lcom/google/googlenav/aZ;

    .line 47
    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/cd;->j:Lcom/google/googlenav/aZ;

    .line 48
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->j()V

    .line 49
    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cd;->b:Lcom/google/googlenav/aW;

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->aJ()Ljava/util/Map;

    move-result-object v0

    .line 79
    if-nez v0, :cond_d

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    :cond_d
    sparse-switch p1, :sswitch_data_74

    .line 111
    :cond_10
    :goto_10
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cd;->a()V

    .line 112
    const/4 v0, 0x1

    return v0

    .line 85
    :sswitch_15
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cd;->j:Lcom/google/googlenav/aZ;

    invoke-virtual {v1}, Lcom/google/googlenav/aZ;->d()Z

    move-result v1

    if-nez v1, :cond_10

    .line 86
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/cd;->a(Ljava/util/Map;)V

    goto :goto_10

    .line 91
    :sswitch_28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    check-cast p3, Lcom/google/googlenav/ba;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/aZ;

    const-string v4, ""

    invoke-direct {v3, p2, v4, v1}, Lcom/google/googlenav/aZ;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/cd;->a(Ljava/util/Map;)V

    goto :goto_10

    .line 97
    :sswitch_44
    check-cast p3, Ljava/util/List;

    .line 99
    if-eqz p3, :cond_4e

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_61

    .line 100
    :cond_4e
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cd;->j:Lcom/google/googlenav/aZ;

    invoke-virtual {v1}, Lcom/google/googlenav/aZ;->d()Z

    move-result v1

    if-nez v1, :cond_10

    .line 101
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/cd;->a(Ljava/util/Map;)V

    goto :goto_10

    .line 105
    :cond_61
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/aZ;

    const-string v3, ""

    invoke-direct {v2, p2, v3, p3}, Lcom/google/googlenav/aZ;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/cd;->a(Ljava/util/Map;)V

    goto :goto_10

    .line 83
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

    .prologue
    .line 53
    new-instance v0, Lcom/google/googlenav/ui/view/android/aL;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cd;->j:Lcom/google/googlenav/aZ;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cd;->i:Lcom/google/googlenav/aZ;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/googlenav/ui/view/android/aL;-><init>(Lcom/google/googlenav/ui/wizard/cd;Lcom/google/googlenav/aZ;Lcom/google/googlenav/aZ;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cd;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 54
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cd;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 55
    return-void
.end method

.method protected c()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cd;->b:Lcom/google/googlenav/aW;

    .line 60
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cd;->c:Lcom/google/googlenav/aY;

    .line 61
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cd;->i:Lcom/google/googlenav/aZ;

    .line 62
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cd;->j:Lcom/google/googlenav/aZ;

    .line 63
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 64
    return-void
.end method
