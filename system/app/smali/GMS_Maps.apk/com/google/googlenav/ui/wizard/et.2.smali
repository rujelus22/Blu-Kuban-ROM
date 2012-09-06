.class public Lcom/google/googlenav/ui/wizard/eT;
.super Lcom/google/googlenav/ui/wizard/B;
.source "SourceFile"


# static fields
.field private static i:Lcom/google/googlenav/ui/wizard/eI;


# instance fields
.field private j:Lcom/google/googlenav/ui/wizard/fb;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/ui/wizard/eT;->i:Lcom/google/googlenav/ui/wizard/eI;

    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/B;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 73
    return-void
.end method

.method private a(Lax/a;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 446
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbq/G;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 448
    if-nez p1, :cond_b

    .line 461
    :goto_a
    return-object v0

    .line 454
    :cond_b
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lbq/G;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 455
    invoke-virtual {p1}, Lax/a;->e()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v4, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 456
    const/4 v2, 0x2

    invoke-virtual {p1}, Lax/a;->f()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 457
    invoke-virtual {v0, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 459
    const/4 v1, 0x4

    invoke-virtual {p1}, Lax/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    goto :goto_a
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/eT;)Lcom/google/googlenav/ui/wizard/fb;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eT;->j:Lcom/google/googlenav/ui/wizard/fb;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/eT;Lcom/google/googlenav/ui/wizard/fb;)Lcom/google/googlenav/ui/wizard/fb;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eT;->j:Lcom/google/googlenav/ui/wizard/fb;

    return-object p1
.end method

.method private a(I)V
    .registers 10
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 309
    if-nez p1, :cond_3e

    const/16 v0, 0x1ee

    .line 311
    :goto_5
    const/16 v1, 0x2e6

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 313
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eT;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x2e7

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    const/16 v3, 0x362

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x6b

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-instance v7, Lcom/google/googlenav/ui/wizard/eY;

    invoke-direct {v7, p0, p1}, Lcom/google/googlenav/ui/wizard/eY;-><init>(Lcom/google/googlenav/ui/wizard/eT;I)V

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/bn;)V

    .line 332
    return-void

    .line 309
    :cond_3e
    const/16 v0, 0x61c

    goto :goto_5
.end method

.method private a(Lax/A;)V
    .registers 5
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eT;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/A;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 92
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eT;->a:Lcom/google/googlenav/J;

    invoke-virtual {p1}, Lax/A;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->d(Ljava/lang/String;)Lcom/google/googlenav/ag;

    .line 93
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eT;->a()V

    .line 94
    return-void
.end method

.method private a(Lax/A;Ljava/util/List;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 230
    invoke-virtual {p1}, Lax/A;->q()Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v0, 0x2e9

    .line 232
    :goto_8
    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lax/A;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laa/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-direct {p0, v0, p1, p2}, Lcom/google/googlenav/ui/wizard/eT;->a(Ljava/lang/String;Lax/A;Ljava/util/List;)V

    .line 235
    return-void

    .line 230
    :cond_22
    const/16 v0, 0x2e6

    goto :goto_8
.end method

.method private a(Lax/A;Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/eT;->e(Lax/A;)Ljava/lang/String;

    move-result-object v0

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    const/16 v2, 0x2ea

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0}, Laa/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v0, "<br/>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 209
    const-string v3, "<br/>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Laa/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 211
    :cond_43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/googlenav/ui/wizard/eT;->a(Ljava/lang/String;Lax/A;Ljava/util/List;)V

    .line 212
    return-void
.end method

.method private a(Lax/h;)V
    .registers 5
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eT;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/A;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 113
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eT;->a()V

    .line 114
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eT;->a:Lcom/google/googlenav/J;

    invoke-virtual {p1}, Lax/h;->d()Lad/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Lad/b;)V

    .line 115
    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 465
    if-nez p2, :cond_10

    sget-object v0, Lcom/google/googlenav/ui/wizard/iS;->b:Lcom/google/googlenav/ui/wizard/iS;

    .line 467
    :goto_4
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eT;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/googlenav/ui/wizard/fa;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/wizard/fa;-><init>(Lcom/google/googlenav/ui/wizard/eT;)V

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/wizard/iS;ZLcom/google/googlenav/ui/wizard/iR;)V

    .line 484
    return-void

    .line 465
    :cond_10
    sget-object v0, Lcom/google/googlenav/ui/wizard/iS;->a:Lcom/google/googlenav/ui/wizard/iS;

    goto :goto_4
.end method

.method private a(Lcom/google/googlenav/ui/view/a;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x2

    .line 376
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eT;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/wizard/eE;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eE;->m()Lcom/google/googlenav/ui/wizard/eI;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/wizard/eT;->i:Lcom/google/googlenav/ui/wizard/eI;

    .line 378
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->a()I

    move-result v1

    .line 379
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->b()I

    move-result v2

    .line 380
    if-ne v1, v7, :cond_17

    if-eqz v2, :cond_6e

    .line 383
    :cond_17
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eT;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/wizard/eE;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eE;->l()I

    move-result v0

    .line 384
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "at="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ai="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ti="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v3}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    const/16 v2, 0x7b

    const-string v3, "a"

    invoke-static {v2, v3, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_6e
    packed-switch v1, :pswitch_data_82

    .line 407
    :goto_71
    return-void

    .line 395
    :pswitch_72
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/eT;->e(Lcom/google/googlenav/ui/view/a;)V

    goto :goto_71

    .line 398
    :pswitch_76
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/eT;->b(Lcom/google/googlenav/ui/view/a;)V

    goto :goto_71

    .line 401
    :pswitch_7a
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/eT;->c(Lcom/google/googlenav/ui/view/a;)V

    goto :goto_71

    .line 404
    :pswitch_7e
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/eT;->d(Lcom/google/googlenav/ui/view/a;)V

    goto :goto_71

    .line 393
    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_76
        :pswitch_7a
        :pswitch_72
        :pswitch_7e
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/eT;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/eT;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/eT;Lax/A;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/eT;->f(Lax/A;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/eT;Lax/A;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/eT;->a(Lax/A;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/eT;Lax/A;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/eT;->a(Lax/A;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/eT;Lcom/google/googlenav/ui/view/a;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/eT;->a(Lcom/google/googlenav/ui/view/a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lax/A;Ljava/util/List;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eT;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x2e7

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    const/16 v3, 0x362

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x6b

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v7, Lcom/google/googlenav/ui/wizard/eW;

    invoke-direct {v7, p0, p3, p2}, Lcom/google/googlenav/ui/wizard/eW;-><init>(Lcom/google/googlenav/ui/wizard/eT;Ljava/util/List;Lax/A;)V

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/bn;)V

    .line 264
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/eT;I)Lax/a;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/eT;->d(I)Lax/a;

    move-result-object v0

    return-object v0
.end method

.method private b(I)V
    .registers 10
    .parameter

    .prologue
    .line 335
    invoke-static {p1}, Lax/a;->a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v7

    .line 337
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eT;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x1c2

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    .line 339
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    invoke-virtual {v0}, Lax/l;->e()Lax/m;

    move-result-object v0

    .line 341
    new-instance v1, Lcom/google/googlenav/ui/wizard/eZ;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/ui/wizard/eZ;-><init>(Lcom/google/googlenav/ui/wizard/eT;Lax/m;)V

    sget-object v2, Lax/I;->d:Lax/I;

    invoke-interface {v0, v7, v1, v2}, Lax/m;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lax/n;Lax/I;)V

    .line 359
    return-void
.end method

.method private b(Lax/A;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x1c

    .line 97
    invoke-virtual {p1}, Lax/A;->g()Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eT;->a:Lcom/google/googlenav/J;

    invoke-interface {v1, v0}, Lcom/google/googlenav/J;->e(Ljava/lang/String;)Lcom/google/googlenav/ai;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_17

    .line 100
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eT;->a:Lcom/google/googlenav/J;

    invoke-interface {v0, v1, v3}, Lcom/google/googlenav/J;->a(Lcom/google/googlenav/ai;I)V

    .line 106
    :goto_13
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eT;->a()V

    .line 107
    return-void

    .line 103
    :cond_17
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eT;->a:Lcom/google/googlenav/J;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/google/googlenav/J;->a(Ljava/lang/String;ZI)V

    goto :goto_13
.end method

.method private b(Lax/A;Ljava/util/List;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eT;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x1c2

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    .line 274
    new-instance v0, LaE/a;

    new-instance v1, Lcom/google/googlenav/ui/wizard/eX;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/ui/wizard/eX;-><init>(Lcom/google/googlenav/ui/wizard/eT;Lax/A;)V

    invoke-direct {v0, p2, v1}, LaE/a;-><init>(Ljava/util/List;LaE/b;)V

    .line 287
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 288
    return-void
.end method

.method private b(Lcom/google/googlenav/ui/view/a;)V
    .registers 3
    .parameter

    .prologue
    .line 410
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 421
    :goto_7
    return-void

    .line 412
    :pswitch_8
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/A;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eT;->a(Lax/A;)V

    goto :goto_7

    .line 415
    :pswitch_12
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/A;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eT;->b(Lax/A;)V

    goto :goto_7

    .line 418
    :pswitch_1c
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/A;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eT;->c(Lax/A;)V

    goto :goto_7

    .line 410
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_8
        :pswitch_12
        :pswitch_1c
    .end packed-switch
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/eT;Lax/A;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/eT;->g(Lax/A;)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/eT;Lax/A;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/eT;->b(Lax/A;Ljava/util/List;)V

    return-void
.end method

.method private c(I)V
    .registers 3
    .parameter

    .prologue
    .line 487
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->k()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 488
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/eT;->d(I)Lax/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eT;->a(Lax/a;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 489
    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/ui/wizard/eT;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)V

    .line 493
    :goto_15
    return-void

    .line 491
    :cond_16
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    invoke-virtual {v0}, Lax/l;->e()Lax/m;

    move-result-object v0

    invoke-interface {v0}, Lax/m;->B_()V

    goto :goto_15
.end method

.method private c(Lax/A;)V
    .registers 6
    .parameter

    .prologue
    .line 124
    invoke-virtual {p1}, Lax/A;->s()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 126
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/eT;->f(Lax/A;)V

    .line 156
    :goto_d
    return-void

    .line 131
    :cond_e
    new-instance v0, Lcom/google/googlenav/ui/wizard/eU;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/wizard/eU;-><init>(Lcom/google/googlenav/ui/wizard/eT;Lax/A;)V

    invoke-static {p1, v0}, LaE/c;->a(Lax/A;LaE/d;)LaE/c;

    move-result-object v0

    .line 155
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    goto :goto_d
.end method

.method private c(Lcom/google/googlenav/ui/view/a;)V
    .registers 3
    .parameter

    .prologue
    .line 424
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 432
    :goto_7
    return-void

    .line 426
    :pswitch_8
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/A;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eT;->h(Lax/A;)V

    goto :goto_7

    .line 429
    :pswitch_12
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/A;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eT;->d(Lax/A;)V

    goto :goto_7

    .line 424
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_12
    .end packed-switch
.end method

.method private d(I)Lax/a;
    .registers 3
    .parameter

    .prologue
    .line 496
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    invoke-virtual {v0}, Lax/l;->e()Lax/m;

    move-result-object v0

    invoke-interface {v0}, Lax/m;->g()Lax/r;

    move-result-object v0

    check-cast v0, Lax/B;

    .line 499
    invoke-virtual {v0, p1}, Lax/B;->a(I)Lax/a;

    move-result-object v0

    return-object v0
.end method

.method private d(Lax/A;)V
    .registers 4
    .parameter

    .prologue
    .line 166
    new-instance v0, Lcom/google/googlenav/ui/wizard/eV;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/wizard/eV;-><init>(Lcom/google/googlenav/ui/wizard/eT;Lax/A;)V

    invoke-static {p1, v0}, LaE/c;->a(Lax/A;LaE/d;)LaE/c;

    move-result-object v0

    .line 185
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 186
    return-void
.end method

.method private d(Lcom/google/googlenav/ui/view/a;)V
    .registers 3
    .parameter

    .prologue
    .line 435
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 443
    :goto_7
    return-void

    .line 437
    :pswitch_8
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/h;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eT;->a(Lax/h;)V

    goto :goto_7

    .line 440
    :pswitch_12
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/A;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eT;->c(Lax/A;)V

    goto :goto_7

    .line 435
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_12
    .end packed-switch
.end method

.method private e(Lax/A;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 189
    instance-of v0, p1, Lax/h;

    if-eqz v0, :cond_26

    .line 190
    check-cast p1, Lax/h;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lax/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lax/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_25
    return-object v0

    :cond_26
    invoke-virtual {p1}, Lax/A;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_25
.end method

.method private e(Lcom/google/googlenav/ui/view/a;)V
    .registers 3
    .parameter

    .prologue
    .line 503
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_36

    .line 514
    :goto_7
    return-void

    .line 505
    :pswitch_8
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eT;->d(I)Lax/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eT;->a(Lax/A;)V

    goto :goto_7

    .line 508
    :pswitch_1a
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eT;->c(I)V

    goto :goto_7

    .line 511
    :pswitch_28
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eT;->a(I)V

    goto :goto_7

    .line 503
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_8
        :pswitch_1a
        :pswitch_28
    .end packed-switch
.end method

.method private f(Lax/A;)V
    .registers 6
    .parameter

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/eT;->e(Lax/A;)Ljava/lang/String;

    move-result-object v0

    .line 221
    const/16 v1, 0x2e6

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Laa/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/googlenav/ui/wizard/eT;->a(Ljava/lang/String;Lax/A;Ljava/util/List;)V

    .line 224
    return-void
.end method

.method private g(Lax/A;)V
    .registers 7
    .parameter

    .prologue
    .line 294
    invoke-virtual {p1}, Lax/A;->g()Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lax/l;->d()[Lax/m;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v3, :cond_1e

    aget-object v4, v2, v0

    .line 298
    if-eqz v4, :cond_1b

    .line 299
    invoke-interface {v4}, Lax/m;->g()Lax/r;

    move-result-object v4

    invoke-interface {v4, v1}, Lax/r;->e(Ljava/lang/String;)V

    .line 297
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 303
    :cond_1e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eT;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_29

    .line 304
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eT;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/wizard/eE;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eE;->i()V

    .line 306
    :cond_29
    return-void
.end method

.method private h(Lax/A;)V
    .registers 5
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eT;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/A;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 370
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eT;->a()V

    .line 371
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eT;->a:Lcom/google/googlenav/J;

    invoke-virtual {p1}, Lax/A;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lax/A;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/J;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method


# virtual methods
.method public a(Lat/B;)I
    .registers 3
    .parameter

    .prologue
    .line 520
    const/4 v0, 0x4

    return v0
.end method

.method protected a(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 538
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/Y;

    .line 540
    if-nez v0, :cond_f

    .line 546
    :goto_e
    return-void

    .line 544
    :cond_f
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/Y;->f()Lcom/google/googlenav/ui/view/a;

    move-result-object v0

    .line 545
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eT;->a(Lcom/google/googlenav/ui/view/a;)V

    goto :goto_e
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/B;->b()V

    .line 78
    sget-object v0, Lcom/google/googlenav/ui/wizard/eT;->i:Lcom/google/googlenav/ui/wizard/eI;

    if-eqz v0, :cond_10

    .line 79
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eT;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/wizard/eE;

    sget-object v1, Lcom/google/googlenav/ui/wizard/eT;->i:Lcom/google/googlenav/ui/wizard/eI;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/eE;->a(Lcom/google/googlenav/ui/wizard/eI;)V

    .line 81
    :cond_10
    return-void
.end method

.method protected b(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 550
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/Y;

    .line 552
    if-nez v0, :cond_11

    move v0, v1

    .line 575
    :goto_10
    return v0

    .line 557
    :cond_11
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/Y;->f()Lcom/google/googlenav/ui/view/a;

    move-result-object v0

    .line 558
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/a;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_60

    move v0, v1

    .line 572
    goto :goto_10

    .line 560
    :pswitch_1e
    new-instance v1, Lcom/google/googlenav/ui/wizard/fg;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/A;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/ui/wizard/fg;-><init>(Lcom/google/googlenav/ui/wizard/eT;Lax/A;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/eT;->j:Lcom/google/googlenav/ui/wizard/fb;

    .line 574
    :goto_2b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eT;->j:Lcom/google/googlenav/ui/wizard/fb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fb;->show()V

    .line 575
    const/4 v0, 0x1

    goto :goto_10

    .line 563
    :pswitch_32
    new-instance v1, Lcom/google/googlenav/ui/wizard/fe;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/A;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/ui/wizard/fe;-><init>(Lcom/google/googlenav/ui/wizard/eT;Lax/A;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/eT;->j:Lcom/google/googlenav/ui/wizard/fb;

    goto :goto_2b

    .line 566
    :pswitch_40
    new-instance v1, Lcom/google/googlenav/ui/wizard/ff;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/ui/wizard/ff;-><init>(Lcom/google/googlenav/ui/wizard/eT;I)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/eT;->j:Lcom/google/googlenav/ui/wizard/fb;

    goto :goto_2b

    .line 569
    :pswitch_52
    new-instance v1, Lcom/google/googlenav/ui/wizard/fd;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/h;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/ui/wizard/fd;-><init>(Lcom/google/googlenav/ui/wizard/eT;Lax/h;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/eT;->j:Lcom/google/googlenav/ui/wizard/fb;

    goto :goto_2b

    .line 558
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_32
        :pswitch_40
        :pswitch_52
    .end packed-switch
.end method

.method protected c()V
    .registers 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/B;->c()V

    .line 86
    return-void
.end method

.method public h()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 525
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eT;->j:Lcom/google/googlenav/ui/wizard/fb;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eT;->j:Lcom/google/googlenav/ui/wizard/fb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fb;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 528
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eT;->j:Lcom/google/googlenav/ui/wizard/fb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fb;->dismiss()V

    .line 529
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/eT;->j:Lcom/google/googlenav/ui/wizard/fb;

    .line 534
    :goto_14
    return-void

    .line 531
    :cond_15
    sput-object v1, Lcom/google/googlenav/ui/wizard/eT;->i:Lcom/google/googlenav/ui/wizard/eI;

    .line 532
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eT;->a()V

    goto :goto_14
.end method
