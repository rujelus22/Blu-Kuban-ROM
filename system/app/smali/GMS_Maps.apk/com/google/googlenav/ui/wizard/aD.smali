.class Lcom/google/googlenav/ui/wizard/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/L;
.implements Lcom/google/googlenav/ui/wizard/ak;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/S;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/S;)V
    .registers 2
    .parameter

    .prologue
    .line 798
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/S;Lcom/google/googlenav/ui/wizard/T;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 798
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/ad;-><init>(Lcom/google/googlenav/ui/wizard/S;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/aU;)V
    .registers 4
    .parameter

    .prologue
    .line 821
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v0

    if-eqz v0, :cond_26

    if-eqz p1, :cond_26

    .line 822
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/aU;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/am;->c(Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/am;->c(Z)V

    .line 824
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/wizard/S;->a(Lcom/google/googlenav/ui/wizard/S;Lcom/google/googlenav/aU;)Lcom/google/googlenav/aU;

    .line 826
    :cond_26
    return-void
.end method

.method public a(Lcom/google/googlenav/friend/i;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 850
    if-nez p1, :cond_5

    .line 884
    :cond_4
    :goto_4
    return-void

    .line 856
    :cond_5
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->i(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/h;

    move-result-object v3

    .line 857
    if-eqz v3, :cond_4

    .line 858
    invoke-virtual {v3}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/friend/i;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v4

    .line 860
    invoke-virtual {v3}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/friend/i;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    .line 865
    if-nez v0, :cond_54

    invoke-static {}, Lcom/google/googlenav/friend/ae;->a()Z

    move-result v0

    if-eqz v0, :cond_54

    move v0, v1

    .line 867
    :goto_26
    invoke-virtual {v3, v4, v0}, Lcom/google/googlenav/h;->a(ZZ)V

    .line 868
    invoke-virtual {p1}, Lcom/google/googlenav/friend/i;->d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 870
    if-eqz v0, :cond_56

    invoke-virtual {v3}, Lcom/google/googlenav/h;->h()Z

    move-result v4

    if-nez v4, :cond_56

    .line 871
    invoke-static {v0}, Lcom/google/googlenav/friend/aF;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/List;

    move-result-object v0

    .line 879
    :goto_39
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->i(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/h;

    move-result-object v1

    if-ne v3, v1, :cond_4

    .line 880
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-virtual {v1, v3, p1}, Lcom/google/googlenav/ui/wizard/S;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/friend/i;)V

    .line 881
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/S;->a(Ljava/util/List;)V

    goto :goto_4

    :cond_54
    move v0, v2

    .line 865
    goto :goto_26

    .line 873
    :cond_56
    invoke-virtual {v3}, Lcom/google/googlenav/h;->h()Z

    move-result v0

    if-nez v0, :cond_69

    .line 874
    new-array v0, v1, [Lcom/google/googlenav/friend/aF;

    invoke-static {}, Lcom/google/googlenav/friend/aF;->i()Lcom/google/googlenav/friend/aF;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/collect/cx;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_39

    .line 876
    :cond_69
    new-array v0, v1, [Lcom/google/googlenav/friend/aF;

    invoke-static {}, Lcom/google/googlenav/friend/aF;->j()Lcom/google/googlenav/friend/aF;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/collect/cx;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_39
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .parameter

    .prologue
    .line 803
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 804
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/am;->a(Ljava/util/List;)V

    .line 805
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/am;->n()V

    .line 806
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/am;->i()V

    .line 808
    :cond_23
    return-void
.end method

.method public a(ZLam/n;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 893
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v0

    if-eqz v0, :cond_3a

    if-eqz p1, :cond_3a

    invoke-virtual {p2}, Lam/n;->e()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3a

    .line 895
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/R;

    new-instance v2, Lcom/google/googlenav/ui/wizard/ae;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/S;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/googlenav/ui/wizard/ae;-><init>(Lcom/google/googlenav/ui/wizard/S;Lcom/google/googlenav/ui/wizard/T;)V

    invoke-direct {v1, p2, v2}, Lcom/google/googlenav/ui/view/dialog/R;-><init>(Lam/n;Lcom/google/googlenav/ui/view/dialog/W;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/am;->a(Landroid/app/Dialog;)V

    .line 896
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/am;->z()V

    .line 897
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/am;->n()V

    .line 901
    :goto_39
    return-void

    .line 899
    :cond_3a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->l(Lcom/google/googlenav/ui/wizard/S;)V

    goto :goto_39
.end method

.method public a(ZLcom/google/googlenav/a;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 830
    if-eqz p1, :cond_5c

    .line 831
    new-instance v0, Lcom/google/googlenav/cu;

    invoke-direct {v0}, Lcom/google/googlenav/cu;-><init>()V

    .line 833
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->e(Lcom/google/googlenav/ui/wizard/S;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/q;->a(Ljava/util/List;)Lcom/google/googlenav/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/q;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/cu;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 834
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->c(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ag;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/S;->i(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/h;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/ag;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/cu;)V

    .line 836
    invoke-static {}, Lcom/google/googlenav/aM;->a()Lcom/google/googlenav/aM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aM;->b()Ljava/util/List;

    move-result-object v1

    .line 839
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/a;

    invoke-virtual {v0}, Lcom/google/googlenav/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/googlenav/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 840
    :cond_49
    invoke-interface {v1, v3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 842
    :cond_4c
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->c(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ag;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/S;->a(Lcom/google/googlenav/ui/wizard/S;)Lam/i;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ag;->a(Ljava/util/List;Lam/i;)V

    .line 846
    :goto_5b
    return-void

    .line 844
    :cond_5c
    const/16 v0, 0xad

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(II)Landroid/widget/Toast;

    goto :goto_5b
.end method
