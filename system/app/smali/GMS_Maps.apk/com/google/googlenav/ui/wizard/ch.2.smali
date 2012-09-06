.class public Lcom/google/googlenav/ui/wizard/cH;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/cK;

.field private b:Ljava/util/List;

.field private c:I

.field private i:Ljava/util/List;

.field private j:Lcom/google/googlenav/common/f;

.field private k:Landroid/app/Activity;

.field private l:Lcom/google/googlenav/ui/friend/D;

.field private m:Lah/a;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lah/a;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 111
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_f

    .line 114
    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->i()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->k:Landroid/app/Activity;

    .line 116
    :cond_f
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/cH;->m:Lah/a;

    .line 117
    new-instance v0, Lcom/google/googlenav/ui/friend/D;

    const/4 v1, 0x0

    sget v2, Lcom/google/googlenav/ui/bn;->bp:I

    invoke-direct {v0, p2, v1, v2}, Lcom/google/googlenav/ui/friend/D;-><init>(Lah/a;Lcom/google/googlenav/friend/aM;I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->l:Lcom/google/googlenav/ui/friend/D;

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/cH;)I
    .registers 2
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cH;->i()I

    move-result v0

    return v0
.end method

.method private a(Lcom/google/googlenav/friend/aK;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->i:Ljava/util/List;

    new-instance v1, Lcom/google/googlenav/ui/wizard/cL;

    invoke-direct {v1, p1, p2}, Lcom/google/googlenav/ui/wizard/cL;-><init>(Lcom/google/googlenav/friend/aK;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    iget v0, p0, Lcom/google/googlenav/ui/wizard/cH;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/cH;->c:I

    .line 339
    iget v0, p0, Lcom/google/googlenav/ui/wizard/cH;->c:I

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cH;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_25

    .line 340
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cH;->g()V

    .line 341
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ju;->a(ILZ/a;)V

    .line 345
    :goto_24
    return-void

    .line 343
    :cond_25
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cH;->f()V

    goto :goto_24
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/cH;Lcom/google/googlenav/friend/aK;I)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/cH;->a(Lcom/google/googlenav/friend/aK;I)V

    return-void
.end method

.method private e()V
    .registers 9

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->b:Ljava/util/List;

    iget v1, p0, Lcom/google/googlenav/ui/wizard/cH;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlenav/friend/aK;

    .line 214
    const/16 v0, 0x16f

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v3}, Lcom/google/googlenav/friend/aK;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/googlenav/ui/wizard/cH;->c:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/cH;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->j:Lcom/google/googlenav/common/f;

    invoke-virtual {v3}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/googlenav/common/f;->b(J)Z

    move-result v4

    .line 218
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/az;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cH;->k:Landroid/app/Activity;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/cH;->m:Lah/a;

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/cH;->l:Lcom/google/googlenav/ui/friend/D;

    new-instance v7, Lcom/google/googlenav/ui/wizard/cI;

    invoke-direct {v7, p0}, Lcom/google/googlenav/ui/wizard/cI;-><init>(Lcom/google/googlenav/ui/wizard/cH;)V

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/ui/view/dialog/az;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/google/googlenav/friend/aK;ZLah/a;Lcom/google/googlenav/ui/friend/D;Lcom/google/googlenav/ui/view/dialog/aD;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 246
    return-void
.end method

.method private f()V
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_9

    .line 250
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->dismiss()V

    .line 252
    :cond_9
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 253
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cH;->e()V

    .line 254
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 255
    return-void
.end method

.method private g()V
    .registers 16

    .prologue
    const/4 v12, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 259
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v11

    .line 263
    new-instance v2, Lcom/google/googlenav/common/f;

    invoke-direct {v2}, Lcom/google/googlenav/common/f;-><init>()V

    .line 264
    new-instance v5, Lcom/google/googlenav/common/f;

    invoke-direct {v5}, Lcom/google/googlenav/common/f;-><init>()V

    .line 265
    new-instance v6, Lcom/google/googlenav/common/f;

    invoke-direct {v6}, Lcom/google/googlenav/common/f;-><init>()V

    .line 266
    new-instance v7, Lcom/google/googlenav/common/f;

    invoke-direct {v7}, Lcom/google/googlenav/common/f;-><init>()V

    .line 267
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    move v8, v12

    move v4, v12

    :goto_23
    if-ge v8, v9, :cond_81

    .line 268
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->i:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/cL;

    .line 269
    iget-object v10, v0, Lcom/google/googlenav/ui/wizard/cL;->a:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v10}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 270
    iget v10, v0, Lcom/google/googlenav/ui/wizard/cL;->b:I

    packed-switch v10, :pswitch_data_a6

    move v0, v4

    .line 267
    :goto_3d
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move v4, v0

    goto :goto_23

    .line 272
    :pswitch_42
    invoke-virtual {v2, v13, v14}, Lcom/google/googlenav/common/f;->a(J)V

    .line 274
    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cL;->a:Lcom/google/googlenav/friend/aK;

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->j:Lcom/google/googlenav/common/f;

    invoke-virtual {v0, v13, v14}, Lcom/google/googlenav/common/f;->d(J)Z

    move v0, v1

    .line 278
    goto :goto_3d

    .line 280
    :pswitch_51
    invoke-virtual {v5, v13, v14}, Lcom/google/googlenav/common/f;->a(J)V

    .line 282
    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cL;->a:Lcom/google/googlenav/friend/aK;

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->j:Lcom/google/googlenav/common/f;

    invoke-virtual {v0, v13, v14}, Lcom/google/googlenav/common/f;->d(J)Z

    move v0, v1

    .line 286
    goto :goto_3d

    .line 288
    :pswitch_60
    invoke-virtual {v6, v13, v14}, Lcom/google/googlenav/common/f;->a(J)V

    .line 290
    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cL;->a:Lcom/google/googlenav/friend/aK;

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->j:Lcom/google/googlenav/common/f;

    invoke-virtual {v0, v13, v14}, Lcom/google/googlenav/common/f;->b(J)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 294
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->j:Lcom/google/googlenav/common/f;

    invoke-virtual {v0, v13, v14}, Lcom/google/googlenav/common/f;->a(J)V

    move v0, v1

    goto :goto_3d

    .line 298
    :pswitch_77
    invoke-virtual {v7, v13, v14}, Lcom/google/googlenav/common/f;->a(J)V

    .line 300
    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/cL;->a:Lcom/google/googlenav/friend/aK;

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7f
    move v0, v1

    goto :goto_3d

    .line 306
    :cond_81
    if-eqz v4, :cond_a0

    .line 309
    iget-object v10, p0, Lcom/google/googlenav/ui/wizard/cH;->a:Lcom/google/googlenav/ui/wizard/cK;

    .line 312
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v13

    new-instance v0, Lcom/google/googlenav/ui/wizard/cJ;

    move-object v1, p0

    move-object v4, v3

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v0 .. v11}, Lcom/google/googlenav/ui/wizard/cJ;-><init>(Lcom/google/googlenav/ui/wizard/cH;Lcom/google/googlenav/common/f;Ljava/util/Vector;Ljava/util/Vector;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;Lcom/google/googlenav/ui/wizard/cK;Ljava/util/List;)V

    invoke-virtual {v13, v0}, Lac/h;->c(Lac/g;)V

    .line 330
    :goto_95
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->b:Ljava/util/List;

    .line 331
    iput v12, p0, Lcom/google/googlenav/ui/wizard/cH;->c:I

    .line 332
    iput-object v3, p0, Lcom/google/googlenav/ui/wizard/cH;->a:Lcom/google/googlenav/ui/wizard/cK;

    .line 333
    return-void

    .line 326
    :cond_a0
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->a:Lcom/google/googlenav/ui/wizard/cK;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/cK;->a()V

    goto :goto_95

    .line 270
    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_42
        :pswitch_51
        :pswitch_60
        :pswitch_77
    .end packed-switch
.end method

.method private i()I
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 348
    iget v1, p0, Lcom/google/googlenav/ui/wizard/cH;->c:I

    if-lez v1, :cond_10

    .line 349
    iget v0, p0, Lcom/google/googlenav/ui/wizard/cH;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/cH;->c:I

    .line 350
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cH;->f()V

    .line 351
    const/4 v0, 0x3

    .line 354
    :goto_f
    return v0

    .line 353
    :cond_10
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cH;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/wizard/ju;->a(ILZ/a;)V

    goto :goto_f
.end method


# virtual methods
.method public T_()V
    .registers 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->i:Ljava/util/List;

    .line 198
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cH;->a:Lcom/google/googlenav/ui/wizard/cK;

    .line 199
    iget v2, p0, Lcom/google/googlenav/ui/wizard/cH;->c:I

    .line 200
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cH;->a()V

    .line 201
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->i:Ljava/util/List;

    .line 202
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/cH;->a:Lcom/google/googlenav/ui/wizard/cK;

    .line 203
    iput v2, p0, Lcom/google/googlenav/ui/wizard/cH;->c:I

    .line 204
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cH;->j()V

    .line 205
    return-void
.end method

.method public a(Ljava/util/List;Lcom/google/googlenav/ui/wizard/cK;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cH;->b:Ljava/util/List;

    .line 134
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/cH;->a:Lcom/google/googlenav/ui/wizard/cK;

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/wizard/cH;->c:I

    .line 137
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->i:Ljava/util/List;

    .line 138
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/cH;->j()V

    .line 139
    return-void
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 150
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    const-string v1, "FRIENDS_INVITE_REJECTED"

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->a_(Ljava/lang/String;)[B

    move-result-object v0

    .line 152
    if-eqz v0, :cond_28

    .line 154
    :try_start_10
    invoke-static {v0}, Lcom/google/googlenav/common/f;->a([B)Lcom/google/googlenav/common/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->j:Lcom/google/googlenav/common/f;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_16} :catch_1f

    .line 165
    :goto_16
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cH;->e()V

    .line 166
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 167
    return-void

    .line 155
    :catch_1f
    move-exception v0

    .line 158
    new-instance v0, Lcom/google/googlenav/common/f;

    invoke-direct {v0}, Lcom/google/googlenav/common/f;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->j:Lcom/google/googlenav/common/f;

    goto :goto_16

    .line 162
    :cond_28
    new-instance v0, Lcom/google/googlenav/common/f;

    invoke-direct {v0}, Lcom/google/googlenav/common/f;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->j:Lcom/google/googlenav/common/f;

    goto :goto_16
.end method

.method protected c()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 172
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 173
    iput-object v3, p0, Lcom/google/googlenav/ui/wizard/cH;->i:Ljava/util/List;

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/wizard/cH;->c:I

    .line 178
    :try_start_9
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cH;->j:Lcom/google/googlenav/common/f;

    invoke-virtual {v0}, Lcom/google/googlenav/common/f;->c()[B

    move-result-object v0

    .line 179
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    const-string v2, "FRIENDS_INVITE_REJECTED"

    invoke-interface {v1, v2, v0}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_1c} :catch_25
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1c} :catch_23

    .line 188
    :goto_1c
    iput-object v3, p0, Lcom/google/googlenav/ui/wizard/cH;->j:Lcom/google/googlenav/common/f;

    .line 189
    iput-object v3, p0, Lcom/google/googlenav/ui/wizard/cH;->a:Lcom/google/googlenav/ui/wizard/cK;

    .line 190
    iput-object v3, p0, Lcom/google/googlenav/ui/wizard/cH;->b:Ljava/util/List;

    .line 191
    return-void

    .line 184
    :catch_23
    move-exception v0

    goto :goto_1c

    .line 181
    :catch_25
    move-exception v0

    goto :goto_1c
.end method
