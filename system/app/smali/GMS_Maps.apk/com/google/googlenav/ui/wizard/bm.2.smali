.class public Lcom/google/googlenav/ui/wizard/bM;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Date;

.field private b:I

.field private c:Lcom/google/googlenav/ui/wizard/bN;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 3
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bM;->c:Lcom/google/googlenav/ui/wizard/bN;

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/bM;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 49
    iput p1, p0, Lcom/google/googlenav/ui/wizard/bM;->b:I

    return p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/bM;)Ljava/util/Date;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bM;->a:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/bM;Ljava/util/Date;)Ljava/util/Date;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bM;->a:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/bM;)I
    .registers 2
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bM;->b:I

    return v0
.end method


# virtual methods
.method public a(LZ/a;)I
    .registers 4
    .parameter

    .prologue
    .line 110
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    .line 111
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bM;->h()V

    .line 112
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bM;->g:I

    .line 114
    :goto_d
    return v0

    :cond_e
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bM;->g:I

    goto :goto_d
.end method

.method public a(LZ/b;)I
    .registers 3
    .parameter

    .prologue
    .line 122
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bM;->g:I

    return v0
.end method

.method public a(Lad/l;)V
    .registers 3
    .parameter

    .prologue
    .line 87
    invoke-virtual {p1}, Lad/l;->c()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bM;->a:Ljava/util/Date;

    .line 88
    invoke-virtual {p1}, Lad/l;->d()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bM;->b:I

    .line 89
    return-void
.end method

.method public a(Lad/l;Lcom/google/googlenav/ui/wizard/bN;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bM;->c:Lcom/google/googlenav/ui/wizard/bN;

    .line 82
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/wizard/bM;->a(Lad/l;)V

    .line 83
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->j()V

    .line 84
    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    .line 130
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 131
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bM;->a:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 132
    packed-switch p1, :pswitch_data_40

    .line 148
    :pswitch_e
    iput v3, p0, Lcom/google/googlenav/ui/wizard/bM;->g:I

    .line 149
    const/4 v0, 0x0

    :goto_11
    return v0

    .line 134
    :pswitch_12
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bM;->a()V

    .line 135
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bM;->a:Ljava/util/Date;

    iget v2, p0, Lcom/google/googlenav/ui/wizard/bM;->b:I

    invoke-static {v1, v2}, Lad/l;->a(Ljava/util/Date;I)Lad/l;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/bM;->a(Lad/l;)V

    .line 136
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bM;->c:Lcom/google/googlenav/ui/wizard/bN;

    if-eqz v1, :cond_30

    .line 137
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bM;->c:Lcom/google/googlenav/ui/wizard/bN;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bM;->e()Lad/l;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/ui/wizard/bN;->a(Lad/l;)V

    .line 138
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/bM;->c:Lcom/google/googlenav/ui/wizard/bN;

    .line 140
    :cond_30
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bM;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->L()V

    .line 141
    iput v3, p0, Lcom/google/googlenav/ui/wizard/bM;->g:I

    goto :goto_11

    .line 144
    :pswitch_38
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bM;->h()V

    .line 145
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/googlenav/ui/wizard/bM;->g:I

    goto :goto_11

    .line 132
    nop

    :pswitch_data_40
    .packed-switch 0x1f4
        :pswitch_38
        :pswitch_e
        :pswitch_e
        :pswitch_12
    .end packed-switch
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 100
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bM;->g:I

    .line 101
    new-instance v0, Lcom/google/googlenav/ui/wizard/bO;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/bO;-><init>(Lcom/google/googlenav/ui/wizard/bM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bM;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 102
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bM;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 103
    return-void
.end method

.method public e()Lad/l;
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bM;->a:Ljava/util/Date;

    iget v1, p0, Lcom/google/googlenav/ui/wizard/bM;->b:I

    invoke-static {v0, v1}, Lad/l;->a(Ljava/util/Date;I)Lad/l;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .registers 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bM;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ju;->a(ILZ/a;)V

    .line 159
    return-void
.end method
