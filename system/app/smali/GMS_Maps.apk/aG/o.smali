.class public Lag/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lag/d;


# instance fields
.field private final a:Lcom/google/googlenav/ui/v;

.field private final b:Lag/g;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/v;Lag/g;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lag/o;->a:Lcom/google/googlenav/ui/v;

    .line 40
    iput-object p2, p0, Lag/o;->b:Lag/g;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/v;Lag/g;Lag/p;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lag/o;-><init>(Lcom/google/googlenav/ui/v;Lag/g;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0xbbd

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lag/c;

    .line 48
    const/16 v3, 0x6c

    const-string v4, "c"

    invoke-virtual {v0}, Lag/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/google/googlenav/K;->p()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 53
    invoke-virtual {v0}, Lag/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LP/a;->a(Ljava/lang/String;)V

    .line 56
    :cond_23
    iget-object v3, p0, Lag/o;->b:Lag/g;

    if-eqz v3, :cond_30

    iget-object v3, p0, Lag/o;->b:Lag/g;

    invoke-virtual {v3, v0}, Lag/g;->b(Lag/c;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 151
    :cond_2f
    :goto_2f
    return-void

    .line 60
    :cond_30
    iget v3, v0, Lag/c;->d:I

    const/16 v4, 0xbb9

    if-eq v3, v4, :cond_45

    .line 61
    iget-object v3, p0, Lag/o;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v3

    .line 62
    invoke-virtual {v3}, LaM/am;->u()LaM/bj;

    move-result-object v4

    if-eqz v4, :cond_45

    .line 63
    invoke-virtual {v3, v1}, LaM/am;->b(Z)V

    .line 67
    :cond_45
    iget v3, v0, Lag/c;->d:I

    sparse-switch v3, :sswitch_data_11a

    .line 140
    :cond_4a
    :goto_4a
    iget-object v1, p0, Lag/o;->b:Lag/g;

    if-eqz v1, :cond_2f

    .line 144
    iget-object v1, p0, Lag/o;->b:Lag/g;

    invoke-virtual {v1}, Lag/g;->a()Lag/f;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_59

    .line 147
    invoke-interface {v1, v0}, Lag/f;->a(Lag/c;)V

    .line 149
    :cond_59
    iget-object v1, p0, Lag/o;->b:Lag/g;

    invoke-virtual {v1, v0}, Lag/g;->a(Lag/c;)V

    goto :goto_2f

    .line 71
    :sswitch_5f
    iget-object v1, p0, Lag/o;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1, v2, v2}, Lcom/google/googlenav/ui/v;->a(ZZ)V

    .line 73
    iget-object v1, p0, Lag/o;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/v;->f(Z)V

    .line 76
    iget-object v1, p0, Lag/o;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v1

    invoke-virtual {v1}, LaM/am;->I()LaM/i;

    move-result-object v1

    .line 77
    iget-object v3, p0, Lag/o;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v3

    invoke-virtual {v3}, LaM/am;->I()LaM/i;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 78
    invoke-virtual {v1, v2}, LaM/i;->a(B)V

    goto :goto_4a

    .line 82
    :sswitch_83
    iget-object v1, p0, Lag/o;->a:Lcom/google/googlenav/ui/v;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/v;->b(I)V

    goto :goto_4a

    .line 85
    :sswitch_8a
    iget-object v3, p0, Lag/o;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v3, v1, v1}, Lcom/google/googlenav/ui/v;->a(ZZ)V

    .line 86
    iget-object v1, p0, Lag/o;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/v;->f(Z)V

    goto :goto_4a

    .line 89
    :sswitch_95
    iget-object v1, p0, Lag/o;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/aA;->k()V

    goto :goto_4a

    .line 93
    :sswitch_9f
    iget-object v3, p0, Lag/o;->a:Lcom/google/googlenav/ui/v;

    iget v4, v0, Lag/c;->d:I

    if-ne v4, v7, :cond_ab

    :goto_a5
    const/16 v2, 0x13c

    invoke-virtual {v3, v1, v2}, Lcom/google/googlenav/ui/v;->a(ZI)V

    goto :goto_4a

    :cond_ab
    move v1, v2

    goto :goto_a5

    .line 100
    :sswitch_ad
    iget v3, v0, Lag/c;->d:I

    if-eq v3, v7, :cond_b7

    .line 101
    :goto_b1
    iget-object v2, p0, Lag/o;->a:Lcom/google/googlenav/ui/v;

    invoke-static {v2, v1}, Lcom/google/googlenav/friend/ae;->a(Lcom/google/googlenav/ui/v;Z)V

    goto :goto_4a

    :cond_b7
    move v1, v2

    .line 100
    goto :goto_b1

    .line 104
    :sswitch_b9
    iget-object v1, p0, Lag/o;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1, v6}, Lcom/google/googlenav/ui/v;->g(Ljava/lang/String;)V

    goto :goto_4a

    .line 107
    :sswitch_bf
    iget-object v3, p0, Lag/o;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v3, v1}, Lcom/google/googlenav/ui/v;->f(Z)V

    .line 108
    iget-object v1, p0, Lag/o;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1, v2, v2}, Lcom/google/googlenav/ui/v;->a(ZZ)V

    goto :goto_4a

    .line 112
    :sswitch_ca
    iget-object v1, p0, Lag/o;->a:Lcom/google/googlenav/ui/v;

    new-instance v2, Lad/j;

    invoke-direct {v2}, Lad/j;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/v;->b(Lad/k;)V

    goto/16 :goto_4a

    .line 115
    :sswitch_d6
    iget-object v1, p0, Lag/o;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1, v6, v6}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/ui/wizard/R;)V

    goto/16 :goto_4a

    .line 120
    :sswitch_dd
    sget-object v3, Lag/b;->k:Lag/c;

    invoke-virtual {v3}, Lag/c;->a()I

    move-result v3

    if-lez v3, :cond_fb

    .line 123
    :goto_e5
    sget-object v3, Lag/b;->k:Lag/c;

    sget v4, Lag/c;->a:I

    invoke-virtual {v3, v4}, Lag/c;->a(I)V

    .line 127
    if-eqz v1, :cond_fd

    const-string v1, "fn"

    .line 130
    :goto_f0
    iget-object v3, p0, Lag/o;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/v;->az()Lcom/google/googlenav/offers/a;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/google/googlenav/offers/a;->a(ZLjava/lang/String;)V

    goto/16 :goto_4a

    :cond_fb
    move v1, v2

    .line 120
    goto :goto_e5

    .line 127
    :cond_fd
    const-string v1, "f"

    goto :goto_f0

    .line 133
    :sswitch_100
    iget-object v1, p0, Lag/o;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/aA;->h()V

    goto/16 :goto_4a

    .line 136
    :sswitch_10b
    iget-object v1, p0, Lag/o;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/K;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;)V

    goto/16 :goto_4a

    .line 67
    :sswitch_data_11a
    .sparse-switch
        0x9cd -> :sswitch_10b
        0x9d4 -> :sswitch_100
        0xbb9 -> :sswitch_5f
        0xbba -> :sswitch_83
        0xbbb -> :sswitch_95
        0xbbc -> :sswitch_8a
        0xbbd -> :sswitch_9f
        0xbbe -> :sswitch_9f
        0xbbf -> :sswitch_bf
        0xbc0 -> :sswitch_b9
        0xbc1 -> :sswitch_ca
        0xbc2 -> :sswitch_d6
        0xbc3 -> :sswitch_ad
        0xbc4 -> :sswitch_dd
    .end sparse-switch
.end method
