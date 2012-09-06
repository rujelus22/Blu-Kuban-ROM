.class public Lcom/google/googlenav/ui/wizard/eN;
.super Lcom/google/googlenav/ui/wizard/B;
.source "SourceFile"


# instance fields
.field i:Lcom/google/googlenav/ui/wizard/dG;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 2
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/B;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 34
    return-void
.end method

.method private a(I)Lax/a;
    .registers 3
    .parameter

    .prologue
    .line 56
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    invoke-virtual {v0}, Lax/l;->e()Lax/m;

    move-result-object v0

    invoke-interface {v0}, Lax/m;->g()Lax/r;

    move-result-object v0

    check-cast v0, Lax/B;

    .line 59
    invoke-virtual {v0, p1}, Lax/B;->a(I)Lax/a;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eN;->a:Lcom/google/googlenav/J;

    invoke-interface {v0, p1}, Lcom/google/googlenav/J;->e(Ljava/lang/String;)Lcom/google/googlenav/ai;

    move-result-object v0

    .line 96
    if-nez v0, :cond_a

    .line 104
    :goto_9
    return-void

    .line 100
    :cond_a
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 103
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eN;->i:Lcom/google/googlenav/ui/wizard/dG;

    invoke-static {v0}, Lad/y;->c(Lcom/google/googlenav/ai;)Lad/y;

    move-result-object v0

    invoke-interface {v2, v0, v1, v3, v3}, Lcom/google/googlenav/ui/wizard/dG;->a(Lad/y;Ljava/lang/Long;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/aW;)V

    goto :goto_9
.end method


# virtual methods
.method protected a(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/bv;

    .line 66
    if-nez v0, :cond_f

    .line 92
    :cond_e
    :goto_e
    return-void

    .line 70
    :cond_f
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bv;->f()Lcom/google/googlenav/ui/view/a;

    move-result-object v1

    .line 71
    const/4 v0, 0x0

    .line 72
    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/a;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_60

    .line 80
    :goto_1b
    :pswitch_1b
    if-eqz v0, :cond_e

    .line 83
    invoke-virtual {v0}, Lax/A;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eN;->a(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eN;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/wizard/eE;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eE;->l()I

    move-result v0

    .line 86
    const/16 v1, 0x7b

    const-string v2, "s"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ti="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eN;->a()V

    goto :goto_e

    .line 74
    :pswitch_4a
    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eN;->a(I)Lax/a;

    move-result-object v0

    goto :goto_1b

    .line 77
    :pswitch_59
    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/A;

    goto :goto_1b

    .line 72
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_59
        :pswitch_1b
        :pswitch_4a
    .end packed-switch
.end method

.method public a(Lcom/google/googlenav/J;Lcom/google/googlenav/ui/wizard/dG;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eN;->a:Lcom/google/googlenav/J;

    .line 46
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/eN;->i:Lcom/google/googlenav/ui/wizard/dG;

    .line 47
    const-string v0, "stars"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlenav/ui/wizard/eN;->a(Lcom/google/googlenav/J;Ljava/lang/String;Z)V

    .line 48
    return-void
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/eN;->a(Z)V

    .line 53
    return-void
.end method

.method protected b(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .registers 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eN;->a()V

    .line 110
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eN;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->i()Lcom/google/googlenav/ui/wizard/bZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bZ;->j()V

    .line 111
    return-void
.end method
