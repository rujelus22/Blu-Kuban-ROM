.class public Lcom/google/googlenav/ui/wizard/js;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lac/d;

.field private c:Lcom/google/googlenav/ui/wizard/A;

.field private i:Z

.field private j:J

.field private k:J

.field private l:Lcom/google/googlenav/ui/wizard/jt;

.field private m:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 75
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/js;->m:Landroid/content/Context;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/js;)Z
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/js;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/js;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/js;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private f()Ljava/util/List;
    .registers 6

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/js;->a:Ljava/lang/String;

    const-string v1, "\n"

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 207
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 208
    sget-object v0, Lcom/google/googlenav/ui/aV;->az:Lcom/google/googlenav/ui/aV;

    .line 209
    sget-object v3, Lcom/google/googlenav/ui/aV;->aC:Lcom/google/googlenav/ui/aV;

    .line 210
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4, v0}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    const/4 v0, 0x1

    :goto_1c
    array-length v4, v1

    if-ge v0, v4, :cond_2b

    .line 212
    aget-object v4, v1, v0

    invoke-static {v4, v3}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 214
    :cond_2b
    return-object v2
.end method


# virtual methods
.method public T_()V
    .registers 7

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/js;->a:Ljava/lang/String;

    .line 136
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/js;->b:Lac/d;

    .line 137
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/js;->c:Lcom/google/googlenav/ui/wizard/A;

    .line 138
    iget-wide v3, p0, Lcom/google/googlenav/ui/wizard/js;->j:J

    .line 139
    iget-boolean v5, p0, Lcom/google/googlenav/ui/wizard/js;->i:Z

    .line 140
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/js;->a()V

    .line 141
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/js;->a:Ljava/lang/String;

    .line 142
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/js;->b:Lac/d;

    .line 143
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/js;->c:Lcom/google/googlenav/ui/wizard/A;

    .line 144
    iput-wide v3, p0, Lcom/google/googlenav/ui/wizard/js;->j:J

    .line 145
    iput-boolean v5, p0, Lcom/google/googlenav/ui/wizard/js;->i:Z

    .line 146
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/js;->j()V

    .line 147
    return-void
.end method

.method public a(LZ/a;)I
    .registers 4
    .parameter

    .prologue
    .line 219
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    .line 220
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/js;->h()V

    .line 224
    :cond_b
    const/4 v0, 0x3

    return v0
.end method

.method public a(LZ/b;)I
    .registers 3
    .parameter

    .prologue
    .line 229
    const/4 v0, 0x3

    return v0
.end method

.method public a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/js;->a:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/js;->b:Lac/d;

    .line 83
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/js;->c:Lcom/google/googlenav/ui/wizard/A;

    .line 84
    iput-wide p4, p0, Lcom/google/googlenav/ui/wizard/js;->j:J

    .line 85
    iput-boolean p6, p0, Lcom/google/googlenav/ui/wizard/js;->i:Z

    .line 86
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/js;->j()V

    .line 87
    return-void
.end method

.method protected b()V
    .registers 5

    .prologue
    .line 91
    new-instance v0, Lcom/google/googlenav/ui/wizard/jt;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/js;->m:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/wizard/jt;-><init>(Lcom/google/googlenav/ui/wizard/js;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/js;->l:Lcom/google/googlenav/ui/wizard/jt;

    .line 92
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/js;->l:Lcom/google/googlenav/ui/wizard/jt;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jt;->show()V

    .line 101
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->setInputFocusForTesting(I)V

    .line 103
    iget-wide v0, p0, Lcom/google/googlenav/ui/wizard/js;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_28

    .line 105
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/wizard/js;->k:J

    .line 107
    :cond_28
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 112
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->setInputFocusForTesting(I)V

    .line 116
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/js;->l:Lcom/google/googlenav/ui/wizard/jt;

    if-eqz v0, :cond_10

    .line 117
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/js;->l:Lcom/google/googlenav/ui/wizard/jt;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jt;->dismiss()V

    .line 118
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/js;->l:Lcom/google/googlenav/ui/wizard/jt;

    .line 127
    :cond_10
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/js;->a:Ljava/lang/String;

    .line 128
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/js;->b:Lac/d;

    .line 129
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/js;->c:Lcom/google/googlenav/ui/wizard/A;

    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/ui/wizard/js;->j:J

    .line 131
    return-void
.end method

.method public e()V
    .registers 5

    .prologue
    .line 286
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/googlenav/ui/wizard/js;->k:J

    sub-long/2addr v0, v2

    .line 287
    iget-wide v2, p0, Lcom/google/googlenav/ui/wizard/js;->j:J

    sub-long v0, v2, v0

    .line 291
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2d

    .line 293
    new-instance v2, LY/d;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v3

    invoke-direct {v2, v3, p0}, LY/d;-><init>(LY/c;Ljava/lang/Runnable;)V

    .line 294
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, LY/d;->b(I)V

    .line 295
    invoke-virtual {v2, v0, v1}, LY/d;->a(J)V

    .line 296
    invoke-virtual {v2}, LY/d;->g()V

    .line 301
    :goto_2c
    return-void

    .line 299
    :cond_2d
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/js;->a()V

    goto :goto_2c
.end method

.method public h()V
    .registers 4

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/js;->b:Lac/d;

    if-eqz v0, :cond_9

    .line 236
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/js;->b:Lac/d;

    invoke-interface {v0}, Lac/d;->Z()V

    .line 240
    :cond_9
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/js;->o()Z

    move-result v0

    if-nez v0, :cond_10

    .line 272
    :cond_f
    :goto_f
    return-void

    .line 244
    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/js;->c:Lcom/google/googlenav/ui/wizard/A;

    .line 245
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/js;->a()V

    .line 248
    if-eqz v0, :cond_f

    .line 255
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/js;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/jB;->i()Lcom/google/googlenav/ui/wizard/bZ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/bZ;->o()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 257
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/js;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/jB;->i()Lcom/google/googlenav/ui/wizard/bZ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/bZ;->j()V

    .line 259
    :cond_3e
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_62

    goto :goto_f

    .line 261
    :sswitch_46
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/js;->d:Lcom/google/googlenav/ui/wizard/ju;

    const-string v1, "15"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;)V

    goto :goto_f

    .line 264
    :sswitch_4e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/js;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ju;->a(ILZ/a;)V

    goto :goto_f

    .line 267
    :sswitch_56
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/js;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->b(I)V

    goto :goto_f

    .line 259
    nop

    :sswitch_data_62
    .sparse-switch
        0x6 -> :sswitch_46
        0xc -> :sswitch_4e
        0x10 -> :sswitch_56
    .end sparse-switch
.end method

.method public n()Z
    .registers 2

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .registers 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/js;->a()V

    .line 283
    return-void
.end method
