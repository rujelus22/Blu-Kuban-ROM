.class public Lcom/google/googlenav/ui/wizard/iG;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lcom/google/googlenav/ai;

.field private c:Lcom/google/googlenav/J;

.field private i:Lcom/google/googlenav/be;

.field private j:Lcom/google/googlenav/ui/view/android/bb;

.field private final k:Lcom/google/googlenav/bf;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/be;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/iG;->a:I

    .line 112
    new-instance v0, Lcom/google/googlenav/ui/wizard/iH;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/iH;-><init>(Lcom/google/googlenav/ui/wizard/iG;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->k:Lcom/google/googlenav/bf;

    .line 129
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/iG;->i:Lcom/google/googlenav/be;

    .line 130
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/iG;->c:Lcom/google/googlenav/J;

    .line 131
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/iG;)Lcom/google/googlenav/J;
    .registers 2
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->c:Lcom/google/googlenav/J;

    return-object v0
.end method

.method private a(I)V
    .registers 4
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->c:Lcom/google/googlenav/J;

    const/16 v1, 0x512

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->k:Lcom/google/googlenav/bf;

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/wizard/iG;->a(ILcom/google/googlenav/bf;)V

    .line 210
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/iG;->b(I)V

    .line 211
    return-void
.end method

.method private a(ILcom/google/googlenav/bf;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 278
    packed-switch p1, :pswitch_data_62

    .line 321
    :pswitch_6
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->i:Lcom/google/googlenav/be;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0, v1, p2}, Lcom/google/googlenav/be;->b(Lcom/google/googlenav/ai;Lcom/google/googlenav/bf;)V

    .line 324
    :goto_d
    return-void

    .line 281
    :pswitch_e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->i:Lcom/google/googlenav/be;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/googlenav/be;->a(Lcom/google/googlenav/ai;ILcom/google/googlenav/bf;)V

    goto :goto_d

    .line 284
    :pswitch_16
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->i:Lcom/google/googlenav/be;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0, v1, v3, p2}, Lcom/google/googlenav/be;->a(Lcom/google/googlenav/ai;ILcom/google/googlenav/bf;)V

    goto :goto_d

    .line 287
    :pswitch_1e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->i:Lcom/google/googlenav/be;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0, v1, v4, p2}, Lcom/google/googlenav/be;->a(Lcom/google/googlenav/ai;ILcom/google/googlenav/bf;)V

    goto :goto_d

    .line 290
    :pswitch_26
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->i:Lcom/google/googlenav/be;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/googlenav/be;->a(Lcom/google/googlenav/ai;ILcom/google/googlenav/bf;)V

    goto :goto_d

    .line 293
    :pswitch_2f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->i:Lcom/google/googlenav/be;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/googlenav/be;->a(Lcom/google/googlenav/ai;ILcom/google/googlenav/bf;)V

    goto :goto_d

    .line 297
    :pswitch_38
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->i:Lcom/google/googlenav/be;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/googlenav/be;->b(Lcom/google/googlenav/ai;ILcom/google/googlenav/bf;)V

    goto :goto_d

    .line 300
    :pswitch_41
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->i:Lcom/google/googlenav/be;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0, v1, v3, p2}, Lcom/google/googlenav/be;->b(Lcom/google/googlenav/ai;ILcom/google/googlenav/bf;)V

    goto :goto_d

    .line 309
    :pswitch_49
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->i:Lcom/google/googlenav/be;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/googlenav/be;->b(Lcom/google/googlenav/ai;ILcom/google/googlenav/bf;)V

    goto :goto_d

    .line 312
    :pswitch_52
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->i:Lcom/google/googlenav/be;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/googlenav/be;->b(Lcom/google/googlenav/ai;ILcom/google/googlenav/bf;)V

    goto :goto_d

    .line 315
    :pswitch_5a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->i:Lcom/google/googlenav/be;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0, v1, v4, p2}, Lcom/google/googlenav/be;->b(Lcom/google/googlenav/ai;ILcom/google/googlenav/bf;)V

    goto :goto_d

    .line 278
    :pswitch_data_62
    .packed-switch 0x517
        :pswitch_e
        :pswitch_16
        :pswitch_1e
        :pswitch_2f
        :pswitch_38
        :pswitch_41
        :pswitch_49
        :pswitch_52
        :pswitch_5a
        :pswitch_26
        :pswitch_6
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
    .end packed-switch
.end method

.method private static a(Ljava/util/List;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 519
    new-instance v0, LaQ/bt;

    invoke-static {p1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/aV;->t:Lcom/google/googlenav/ui/aV;

    invoke-direct {v0, v1, v2, p2}, LaQ/bt;-><init>(Ljava/lang/String;Lcom/google/googlenav/ui/aV;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/iG;)Lcom/google/googlenav/ai;
    .registers 2
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    return-object v0
.end method

.method private b(I)V
    .registers 2
    .parameter

    .prologue
    .line 328
    iput p1, p0, Lcom/google/googlenav/ui/wizard/iG;->a:I

    .line 329
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/iG;->j()V

    .line 330
    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/iG;)I
    .registers 2
    .parameter

    .prologue
    .line 75
    iget v0, p0, Lcom/google/googlenav/ui/wizard/iG;->a:I

    return v0
.end method

.method private g()Z
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->aw()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private i()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v2

    invoke-virtual {v2}, Lat/B;->c()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v3}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v3

    invoke-virtual {v3}, Lat/B;->e()I

    move-result v3

    invoke-static {v2, v3}, Lat/B;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->W()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 225
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->O()Ljava/lang/String;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_e7

    .line 230
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->O()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "num"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_fb

    .line 232
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 234
    :goto_54
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v3}, Lcom/google/googlenav/ai;->O()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "start"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 235
    if-eqz v3, :cond_6a

    .line 236
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 246
    :cond_6a
    :goto_6a
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 247
    const-string v4, "/maps/place"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 248
    const-string v4, "cid"

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v5}, Lcom/google/googlenav/ai;->W()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 249
    const-string v4, "view"

    const-string v5, "feature"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 250
    const-string v4, "mcsrc"

    const-string v5, "photo"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 254
    if-eqz v0, :cond_a1

    .line 255
    const-string v4, "start"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 256
    const-string v1, "num"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 258
    :cond_a1
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 261
    const-string v3, "http"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "www.google.com"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "/maps/photos/flagImage"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "hl"

    invoke-static {}, Lcom/google/googlenav/common/Config;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "latlng"

    invoke-virtual {v3, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "photofeatureurl"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 268
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->F()Lcom/google/googlenav/aA;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;)V

    .line 269
    return-void

    .line 240
    :cond_e7
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->P()[Lcom/google/googlenav/aw;

    move-result-object v0

    if-eqz v0, :cond_f8

    .line 241
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->P()[Lcom/google/googlenav/aw;

    move-result-object v0

    array-length v0, v0

    goto/16 :goto_6a

    :cond_f8
    move v0, v1

    goto/16 :goto_6a

    :cond_fb
    move v0, v1

    goto/16 :goto_54
.end method

.method private y()I
    .registers 3

    .prologue
    const/4 v0, 0x3

    .line 337
    iget v1, p0, Lcom/google/googlenav/ui/wizard/iG;->a:I

    packed-switch v1, :pswitch_data_1e

    .line 351
    :goto_6
    return v0

    .line 339
    :pswitch_7
    const/16 v0, 0x4b

    const-string v1, "b"

    invoke-static {v0, v1}, LaT/k;->a(ILjava/lang/String;)V

    .line 341
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/iG;->a:I

    .line 342
    const/4 v0, 0x2

    goto :goto_6

    .line 345
    :pswitch_13
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/iG;->b(I)V

    goto :goto_6

    .line 348
    :pswitch_18
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/iG;->b(I)V

    goto :goto_6

    .line 337
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_7
        :pswitch_13
        :pswitch_13
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/L;
    .registers 6
    .parameter

    .prologue
    .line 530
    new-instance v0, Lcom/google/googlenav/ui/view/android/L;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/iG;->f()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;Ljava/util/List;I)V

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ai;)V
    .registers 2
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    .line 136
    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 156
    packed-switch p1, :pswitch_data_2a

    .line 199
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/iG;->b(I)V

    .line 200
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 159
    :pswitch_a
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/iG;->b(I)V

    goto :goto_9

    .line 162
    :pswitch_f
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iG;->i:Lcom/google/googlenav/be;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/be;->c(Lcom/google/googlenav/ai;Lcom/google/googlenav/bf;)V

    .line 163
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/iG;->b(I)V

    goto :goto_9

    .line 180
    :pswitch_1b
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/iG;->a(I)V

    goto :goto_9

    .line 192
    :pswitch_1f
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/iG;->a(I)V

    goto :goto_9

    .line 195
    :pswitch_23
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/iG;->i()V

    .line 196
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/iG;->a()V

    goto :goto_9

    .line 156
    :pswitch_data_2a
    .packed-switch 0x514
        :pswitch_a
        :pswitch_f
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1f
        :pswitch_1b
        :pswitch_1f
        :pswitch_1f
        :pswitch_1b
        :pswitch_23
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->h:Lcom/google/googlenav/ui/view/android/bb;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->j:Lcom/google/googlenav/ui/view/android/bb;

    .line 365
    new-instance v0, Lcom/google/googlenav/ui/wizard/iJ;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/iJ;-><init>(Lcom/google/googlenav/ui/wizard/iG;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 366
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 368
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->j:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_1c

    .line 369
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->j:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->dismiss()V

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->j:Lcom/google/googlenav/ui/view/android/bb;

    .line 372
    :cond_1c
    return-void
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    .line 377
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 378
    return-void
.end method

.method public e()V
    .registers 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iG;->i:Lcom/google/googlenav/be;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iG;->b:Lcom/google/googlenav/ai;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/be;->a(Lcom/google/googlenav/ai;Lcom/google/googlenav/bf;)V

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/wizard/iG;->a:I

    .line 150
    return-void
.end method

.method public f()Ljava/util/List;
    .registers 9

    .prologue
    const/16 v7, 0x517

    const/16 v6, 0x516

    const/16 v5, 0x514

    const/16 v4, 0x51b

    const/16 v3, 0x51a

    .line 467
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 468
    iget v1, p0, Lcom/google/googlenav/ui/wizard/iG;->a:I

    packed-switch v1, :pswitch_data_88

    .line 509
    :goto_13
    return-object v0

    .line 470
    :pswitch_14
    const/16 v1, 0x51f

    invoke-static {v0, v1, v5}, Lcom/google/googlenav/ui/wizard/iG;->a(Ljava/util/List;II)V

    .line 471
    const/16 v1, 0x524

    const/16 v2, 0x515

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/iG;->a(Ljava/util/List;II)V

    .line 472
    const/16 v1, 0x51e

    invoke-static {v0, v1, v7}, Lcom/google/googlenav/ui/wizard/iG;->a(Ljava/util/List;II)V

    .line 473
    const/16 v1, 0x520

    const/16 v2, 0x520

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/iG;->a(Ljava/util/List;II)V

    .line 478
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/iG;->g()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 479
    const/16 v1, 0x3bf

    const/16 v2, 0x521

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/iG;->a(Ljava/util/List;II)V

    .line 482
    :cond_39
    invoke-static {v0, v3, v6}, Lcom/google/googlenav/ui/wizard/iG;->a(Ljava/util/List;II)V

    goto :goto_13

    .line 485
    :pswitch_3d
    const/16 v1, 0x51d

    const/16 v2, 0x518

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/iG;->a(Ljava/util/List;II)V

    .line 486
    const/16 v1, 0x51c

    const/16 v2, 0x519

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/iG;->a(Ljava/util/List;II)V

    .line 487
    invoke-static {v0, v6, v4}, Lcom/google/googlenav/ui/wizard/iG;->a(Ljava/util/List;II)V

    .line 488
    invoke-static {v0, v3, v3}, Lcom/google/googlenav/ui/wizard/iG;->a(Ljava/util/List;II)V

    goto :goto_13

    .line 491
    :pswitch_52
    const/16 v1, 0x519

    const/16 v2, 0x51c

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/iG;->a(Ljava/util/List;II)V

    .line 492
    const/16 v1, 0x51d

    invoke-static {v0, v5, v1}, Lcom/google/googlenav/ui/wizard/iG;->a(Ljava/util/List;II)V

    .line 493
    const/16 v1, 0x51e

    invoke-static {v0, v4, v1}, Lcom/google/googlenav/ui/wizard/iG;->a(Ljava/util/List;II)V

    .line 494
    invoke-static {v0, v7, v4}, Lcom/google/googlenav/ui/wizard/iG;->a(Ljava/util/List;II)V

    .line 495
    const/16 v1, 0x51f

    invoke-static {v0, v3, v1}, Lcom/google/googlenav/ui/wizard/iG;->a(Ljava/util/List;II)V

    goto :goto_13

    .line 498
    :pswitch_6c
    const/16 v1, 0x522

    const/16 v2, 0x522

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/iG;->a(Ljava/util/List;II)V

    .line 500
    const/16 v1, 0x521

    const/16 v2, 0x523

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/iG;->a(Ljava/util/List;II)V

    .line 502
    const/16 v1, 0x526

    const/16 v2, 0x524

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/iG;->a(Ljava/util/List;II)V

    .line 504
    const/16 v1, 0x525

    invoke-static {v0, v3, v1}, Lcom/google/googlenav/ui/wizard/iG;->a(Ljava/util/List;II)V

    goto :goto_13

    .line 468
    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_14
        :pswitch_52
        :pswitch_3d
        :pswitch_6c
    .end packed-switch
.end method

.method public h()V
    .registers 3

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/iG;->y()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 358
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->h()V

    .line 360
    :cond_a
    return-void
.end method

.method public p()Z
    .registers 3

    .prologue
    .line 382
    iget v0, p0, Lcom/google/googlenav/ui/wizard/iG;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
