.class public Lcom/google/googlenav/ui/wizard/cD;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/cG;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Lac/d;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 33
    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cD;->i:Z

    .line 36
    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cD;->j:Z

    .line 129
    new-instance v0, Lcom/google/googlenav/ui/wizard/cF;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/cF;-><init>(Lcom/google/googlenav/ui/wizard/cD;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cD;->k:Lac/d;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/cD;)Lcom/google/googlenav/ui/wizard/cG;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cD;->a:Lcom/google/googlenav/ui/wizard/cG;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/cD;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/google/googlenav/ui/wizard/cD;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/cD;)Z
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cD;->j:Z

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/cD;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/google/googlenav/ui/wizard/cD;->j:Z

    return p1
.end method

.method private e()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 88
    new-instance v0, Lcom/google/googlenav/ui/wizard/cE;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/cE;-><init>(Lcom/google/googlenav/ui/wizard/cD;)V

    .line 116
    new-instance v7, Lcom/google/googlenav/friend/aU;

    const/4 v1, 0x1

    invoke-direct {v7, v1, v6, v0}, Lcom/google/googlenav/friend/aU;-><init>(ZILcom/google/googlenav/friend/aV;)V

    .line 120
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cD;->b:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/google/googlenav/friend/aU;->a(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cD;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x419

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cD;->k:Lac/d;

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    .line 126
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, v7}, Lac/h;->c(Lac/g;)V

    .line 127
    return-void
.end method


# virtual methods
.method public T_()V
    .registers 6

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cD;->a:Lcom/google/googlenav/ui/wizard/cG;

    .line 168
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cD;->c:Ljava/lang/String;

    .line 169
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cD;->b:Ljava/lang/String;

    .line 170
    iget-boolean v3, p0, Lcom/google/googlenav/ui/wizard/cD;->i:Z

    .line 171
    iget-boolean v4, p0, Lcom/google/googlenav/ui/wizard/cD;->j:Z

    .line 172
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cD;->a()V

    .line 173
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cD;->a:Lcom/google/googlenav/ui/wizard/cG;

    .line 174
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/cD;->c:Ljava/lang/String;

    .line 175
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/cD;->b:Ljava/lang/String;

    .line 176
    iput-boolean v3, p0, Lcom/google/googlenav/ui/wizard/cD;->i:Z

    .line 177
    iput-boolean v4, p0, Lcom/google/googlenav/ui/wizard/cD;->j:Z

    .line 178
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cD;->j()V

    .line 179
    return-void
.end method

.method public a(LZ/a;)I
    .registers 4
    .parameter

    .prologue
    .line 194
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    .line 195
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cD;->h()V

    .line 196
    iget v0, p0, Lcom/google/googlenav/ui/wizard/cD;->g:I

    .line 198
    :goto_d
    return v0

    :cond_e
    iget v0, p0, Lcom/google/googlenav/ui/wizard/cD;->g:I

    goto :goto_d
.end method

.method public a(LZ/b;)I
    .registers 3
    .parameter

    .prologue
    .line 203
    iget v0, p0, Lcom/google/googlenav/ui/wizard/cD;->g:I

    return v0
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/ui/wizard/cG;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 46
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/cD;->a:Lcom/google/googlenav/ui/wizard/cG;

    .line 47
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cD;->c:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cD;->b:Ljava/lang/String;

    .line 49
    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/cD;->i:Z

    .line 50
    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/cD;->j:Z

    .line 51
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cD;->j()V

    .line 52
    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 56
    packed-switch p1, :pswitch_data_2c

    .line 81
    const/4 v0, 0x0

    :goto_5
    return v0

    .line 61
    :pswitch_6
    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/cD;->b:Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cD;->e()V

    goto :goto_5

    .line 66
    :pswitch_e
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cD;->a:Lcom/google/googlenav/ui/wizard/cG;

    invoke-interface {v1}, Lcom/google/googlenav/ui/wizard/cG;->b()V

    .line 68
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cD;->a()V

    goto :goto_5

    .line 72
    :pswitch_17
    iget-boolean v1, p0, Lcom/google/googlenav/ui/wizard/cD;->i:Z

    if-eqz v1, :cond_26

    .line 73
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cD;->a:Lcom/google/googlenav/ui/wizard/cG;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cD;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/googlenav/ui/wizard/cG;->a(Ljava/lang/String;)V

    .line 78
    :goto_22
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cD;->a()V

    goto :goto_5

    .line 75
    :cond_26
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cD;->a:Lcom/google/googlenav/ui/wizard/cG;

    invoke-interface {v1}, Lcom/google/googlenav/ui/wizard/cG;->b()V

    goto :goto_22

    .line 56
    :pswitch_data_2c
    .packed-switch 0x6a9
        :pswitch_6
        :pswitch_e
        :pswitch_17
    .end packed-switch
.end method

.method protected b()V
    .registers 4

    .prologue
    .line 146
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/cD;->g:I

    .line 149
    new-instance v0, Lcom/google/googlenav/ui/view/y;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cD;->c:Ljava/lang/String;

    const/16 v2, 0x40e

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/y;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v1, Lcom/google/googlenav/ui/view/android/bR;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/ui/view/android/bR;-><init>(Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/view/p;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/cD;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 152
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cD;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 153
    return-void
.end method

.method protected c()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cD;->a:Lcom/google/googlenav/ui/wizard/cG;

    .line 158
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cD;->c:Ljava/lang/String;

    .line 159
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cD;->b:Ljava/lang/String;

    .line 160
    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/cD;->i:Z

    .line 161
    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/cD;->j:Z

    .line 162
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 163
    return-void
.end method

.method public h()V
    .registers 3

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/cD;->i:Z

    if-eqz v0, :cond_f

    .line 185
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cD;->a:Lcom/google/googlenav/ui/wizard/cG;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cD;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/cG;->a(Ljava/lang/String;)V

    .line 189
    :goto_b
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cD;->a()V

    .line 190
    return-void

    .line 187
    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cD;->a:Lcom/google/googlenav/ui/wizard/cG;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/cG;->b()V

    goto :goto_b
.end method
