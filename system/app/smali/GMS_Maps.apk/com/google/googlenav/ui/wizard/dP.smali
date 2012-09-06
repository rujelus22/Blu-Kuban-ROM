.class public Lcom/google/googlenav/ui/wizard/dp;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/c;


# instance fields
.field private A:Lcom/google/googlenav/ui/view/d;

.field private B:Lat/B;

.field private C:Lat/B;

.field private D:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private E:Ljava/util/List;

.field private F:Lcom/google/googlenav/ui/wizard/dG;

.field private G:Z

.field private H:Ljava/lang/String;

.field private I:Z

.field private J:Z

.field private K:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private L:Z

.field private M:Z

.field private final N:Lcom/google/googlenav/aA;

.field private final O:Landroid/content/DialogInterface$OnCancelListener;

.field private P:Lan/y;

.field protected a:I

.field protected b:Ljava/lang/String;

.field protected c:B

.field protected final i:Lan/h;

.field protected j:Z

.field protected final k:Landroid/graphics/Point;

.field private l:I

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Z

.field private final v:Lat/p;

.field private final w:Lat/u;

.field private final x:Lcom/google/googlenav/J;

.field private final y:Lcom/google/googlenav/ui/ap;

.field private z:J


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lat/p;Lat/u;Lan/h;Lcom/google/googlenav/aA;Lcom/google/googlenav/J;Lcom/google/googlenav/ui/ap;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 350
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 116
    iput v0, p0, Lcom/google/googlenav/ui/wizard/dp;->a:I

    .line 119
    iput v0, p0, Lcom/google/googlenav/ui/wizard/dp;->n:I

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/wizard/dp;->o:I

    .line 159
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/dp;->p:I

    .line 270
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->k:Landroid/graphics/Point;

    .line 335
    new-instance v0, Lcom/google/googlenav/ui/wizard/dq;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/dq;-><init>(Lcom/google/googlenav/ui/wizard/dp;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->O:Landroid/content/DialogInterface$OnCancelListener;

    .line 351
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/dp;->v:Lat/p;

    .line 352
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/dp;->w:Lat/u;

    .line 353
    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/dp;->i:Lan/h;

    .line 354
    iput-object p6, p0, Lcom/google/googlenav/ui/wizard/dp;->x:Lcom/google/googlenav/J;

    .line 355
    iput-object p7, p0, Lcom/google/googlenav/ui/wizard/dp;->y:Lcom/google/googlenav/ui/ap;

    .line 356
    iput-object p5, p0, Lcom/google/googlenav/ui/wizard/dp;->N:Lcom/google/googlenav/aA;

    .line 357
    return-void
.end method

.method private C()V
    .registers 3

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->P:Lan/y;

    if-eqz v0, :cond_b

    .line 414
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->i:Lan/h;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->P:Lan/y;

    invoke-interface {v0, v1}, Lan/h;->b(Lan/y;)V

    .line 416
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->P:Lan/y;

    .line 417
    return-void
.end method

.method private D()V
    .registers 3

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_9

    .line 580
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->dismiss()V

    .line 583
    :cond_9
    new-instance v0, Lcom/google/googlenav/ui/wizard/dL;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/google/googlenav/ui/wizard/dL;-><init>(Lcom/google/googlenav/ui/wizard/dp;Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/wizard/dq;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 584
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->h:Lcom/google/googlenav/ui/view/android/bb;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->O:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bb;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 585
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 586
    return-void
.end method

.method private E()V
    .registers 3

    .prologue
    .line 591
    new-instance v0, Lcom/google/googlenav/ui/view/android/aU;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dp;->e()Lcom/google/googlenav/ui/view/u;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/aU;-><init>(Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/view/u;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 592
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->h:Lcom/google/googlenav/ui/view/android/bb;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->O:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bb;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 593
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 594
    return-void
.end method

.method private F()V
    .registers 7

    .prologue
    const/16 v1, 0x32e

    .line 599
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 601
    new-instance v0, Lcom/google/googlenav/ui/be;

    invoke-direct {v0}, Lcom/google/googlenav/ui/be;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/be;->g(I)Lcom/google/googlenav/ui/be;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/be;->e(I)Lcom/google/googlenav/ui/be;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/be;->d(I)Lcom/google/googlenav/ui/be;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/be;->i(I)Lcom/google/googlenav/ui/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/be;->a()Lcom/google/googlenav/ui/bd;

    move-result-object v0

    .line 608
    new-instance v3, Lcom/google/googlenav/ui/view/t;

    const/4 v1, 0x0

    invoke-direct {v3, v1, v0}, Lcom/google/googlenav/ui/view/t;-><init>(Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bd;)V

    .line 611
    const/16 v0, 0x4f8

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/googlenav/ui/bh;->a(Ljava/util/Vector;Ljava/lang/String;)Lcom/google/googlenav/ui/view/v;

    move-result-object v5

    .line 614
    new-instance v0, Lcom/google/googlenav/ui/view/u;

    const/16 v1, 0x10

    const/16 v2, 0x4ff

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/u;-><init>(ILjava/lang/String;Lcom/google/googlenav/ui/view/t;Ljava/util/Vector;Lcom/google/googlenav/ui/view/v;)V

    .line 618
    new-instance v1, Lcom/google/googlenav/ui/view/android/aU;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/ui/view/android/aU;-><init>(Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/view/u;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 619
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->h:Lcom/google/googlenav/ui/view/android/bb;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->O:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bb;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 620
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 621
    return-void
.end method

.method private G()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 684
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->B:Lat/B;

    .line 685
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->A:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_e

    .line 686
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->A:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/d;->c()V

    .line 687
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->A:Lcom/google/googlenav/ui/view/d;

    .line 690
    :cond_e
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/e;->c()V

    .line 691
    return-void
.end method

.method private H()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x3

    .line 1247
    iget v0, p0, Lcom/google/googlenav/ui/wizard/dp;->a:I

    packed-switch v0, :pswitch_data_40

    .line 1281
    :goto_7
    :pswitch_7
    return-void

    .line 1249
    :pswitch_8
    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    .line 1250
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/dp;->I()V

    goto :goto_7

    .line 1254
    :pswitch_f
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/dp;->G()V

    .line 1255
    iget v0, p0, Lcom/google/googlenav/ui/wizard/dp;->l:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dp;->L:Z

    if-eqz v0, :cond_22

    .line 1256
    :cond_1b
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/dp;->I()V

    .line 1257
    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    goto :goto_7

    .line 1259
    :cond_22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    .line 1260
    iput v2, p0, Lcom/google/googlenav/ui/wizard/dp;->p:I

    goto :goto_7

    .line 1267
    :pswitch_29
    iget v0, p0, Lcom/google/googlenav/ui/wizard/dp;->a:I

    iput v0, p0, Lcom/google/googlenav/ui/wizard/dp;->n:I

    .line 1268
    iput v3, p0, Lcom/google/googlenav/ui/wizard/dp;->a:I

    .line 1269
    iput v2, p0, Lcom/google/googlenav/ui/wizard/dp;->p:I

    goto :goto_7

    .line 1272
    :pswitch_32
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    .line 1273
    iput v2, p0, Lcom/google/googlenav/ui/wizard/dp;->p:I

    goto :goto_7

    .line 1277
    :pswitch_38
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    .line 1278
    iput v2, p0, Lcom/google/googlenav/ui/wizard/dp;->p:I

    goto :goto_7

    .line 1247
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_8
        :pswitch_f
        :pswitch_7
        :pswitch_29
        :pswitch_7
        :pswitch_f
        :pswitch_38
        :pswitch_7
        :pswitch_32
        :pswitch_38
    .end packed-switch
.end method

.method private I()V
    .registers 2

    .prologue
    .line 1287
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlenav/ui/wizard/dp;->p:I

    .line 1288
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->F:Lcom/google/googlenav/ui/wizard/dG;

    if-eqz v0, :cond_c

    .line 1289
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->F:Lcom/google/googlenav/ui/wizard/dG;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/dG;->S_()V

    .line 1291
    :cond_c
    return-void
.end method

.method private J()V
    .registers 3

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->x:Lcom/google/googlenav/J;

    invoke-interface {v0}, Lcom/google/googlenav/J;->f()V

    .line 1408
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->s:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1409
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->x:Lcom/google/googlenav/J;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->s:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->b(Ljava/lang/String;)V

    .line 1411
    :cond_14
    return-void
.end method

.method private a(Landroid/os/Handler;)LY/b;
    .registers 5
    .parameter

    .prologue
    .line 465
    new-instance v0, LY/b;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/dw;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/ui/wizard/dw;-><init>(Lcom/google/googlenav/ui/wizard/dp;Landroid/os/Handler;)V

    invoke-direct {v0, v1, v2}, LY/b;-><init>(LY/c;Ljava/lang/Runnable;)V

    .line 487
    return-object v0
.end method

.method static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lad/y;
    .registers 4
    .parameter

    .prologue
    .line 1464
    invoke-static {p0}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/google/googlenav/ui/aT;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/B;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lad/y;->a(Lat/B;Ljava/lang/String;Ln/B;)Lad/y;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/googlenav/ui/wizard/dQ;)Lan/y;
    .registers 3
    .parameter

    .prologue
    .line 426
    new-instance v0, Lcom/google/googlenav/ui/wizard/dt;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/wizard/dt;-><init>(Lcom/google/googlenav/ui/wizard/dp;Lcom/google/googlenav/ui/wizard/dQ;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dp;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dp;->E:Ljava/util/List;

    return-object p1
.end method

.method private a(Lad/y;)V
    .registers 5
    .parameter

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->F:Lcom/google/googlenav/ui/wizard/dG;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/dG;->R_()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p1}, Lad/y;->o()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1422
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    .line 1423
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->x:Lcom/google/googlenav/J;

    new-instance v1, Lcom/google/googlenav/bd;

    invoke-direct {v1}, Lcom/google/googlenav/bd;-><init>()V

    invoke-virtual {p1}, Lad/y;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/ds;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/ds;-><init>(Lcom/google/googlenav/ui/wizard/dp;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->a(Lcom/google/googlenav/aX;)Lcom/google/googlenav/bd;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->i(Z)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Lcom/google/googlenav/bc;)V

    .line 1442
    :goto_37
    return-void

    .line 1440
    :cond_38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/wizard/dp;->a(Lad/y;Lcom/google/googlenav/aW;)V

    goto :goto_37
.end method

.method private a(Lad/y;Lcom/google/googlenav/aW;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->v:Lat/p;

    invoke-virtual {v0}, Lat/p;->e()I

    move-result v0

    .line 1447
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->F:Lcom/google/googlenav/ui/wizard/dG;

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, v2, p2}, Lcom/google/googlenav/ui/wizard/dG;->a(Lad/y;Ljava/lang/Long;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/aW;)V

    .line 1448
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    .line 1449
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/u;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->v:Lat/p;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->B:Lat/B;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dp;->k:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Lat/p;->a(Lat/B;Landroid/graphics/Point;)V

    .line 1496
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->e:Lcom/google/googlenav/ui/bn;

    iget-byte v1, p0, Lcom/google/googlenav/ui/wizard/dp;->c:B

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/bn;->a(BC)Lcom/google/googlenav/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->k:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dp;->k:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/googlenav/e;->a(Lcom/google/googlenav/e;Lcom/google/googlenav/ui/u;II)V

    .line 1498
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->t:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    if-eqz p2, :cond_34

    .line 1499
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->A:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_34

    .line 1500
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->A:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/d;->c()V

    .line 1501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->A:Lcom/google/googlenav/ui/view/d;

    .line 1504
    :cond_34
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/wizard/dO;Lcom/google/googlenav/ui/wizard/dQ;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 381
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->i:Lan/h;

    invoke-interface {v0}, Lan/h;->k()V

    .line 382
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->i:Lan/h;

    invoke-interface {v0}, Lan/h;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 383
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/google/googlenav/ui/wizard/dQ;->a(Z)V

    .line 396
    :cond_12
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    .line 398
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x299

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/google/googlenav/ui/wizard/A;

    invoke-direct {v3, v6}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    .line 403
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/wizard/dp;->a(Lcom/google/googlenav/ui/wizard/dQ;)Lan/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->P:Lan/y;

    .line 404
    invoke-direct {p0, v7}, Lcom/google/googlenav/ui/wizard/dp;->a(Landroid/os/Handler;)LY/b;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, LY/b;->g()V

    .line 406
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->i:Lan/h;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->P:Lan/y;

    invoke-interface {v0, v1}, Lan/h;->a(Lan/y;)V

    .line 407
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dp;)V
    .registers 1
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/dp;->H()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dp;Lad/y;Lcom/google/googlenav/aW;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/dp;->a(Lad/y;Lcom/google/googlenav/aW;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dp;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/dp;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dp;Lcom/google/googlenav/ui/wizard/dO;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/dp;->b(Lcom/google/googlenav/ui/wizard/dO;)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/dp;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dp;->D:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object p1
.end method

.method private b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 6
    .parameter

    .prologue
    .line 624
    const/4 v0, 0x1

    .line 625
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->d:Lcom/google/googlenav/ui/wizard/ju;

    sget-object v2, Lcom/google/googlenav/ui/wizard/iS;->b:Lcom/google/googlenav/ui/wizard/iS;

    new-instance v3, Lcom/google/googlenav/ui/wizard/dz;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/wizard/dz;-><init>(Lcom/google/googlenav/ui/wizard/dp;)V

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/wizard/iS;ZLcom/google/googlenav/ui/wizard/iR;)V

    .line 638
    return-void
.end method

.method private b(Lcom/google/googlenav/ui/wizard/dO;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 518
    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/dO;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->b:Ljava/lang/String;

    .line 519
    iget v0, p1, Lcom/google/googlenav/ui/wizard/dO;->b:I

    iput v0, p0, Lcom/google/googlenav/ui/wizard/dp;->l:I

    .line 521
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->a(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dp;->j:Z

    .line 522
    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/dO;->a()V

    .line 524
    iget-boolean v0, p1, Lcom/google/googlenav/ui/wizard/dO;->c:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dp;->m:Z

    .line 525
    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/dO;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->q:Ljava/lang/String;

    .line 527
    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/dO;->h:Lcom/google/googlenav/ui/wizard/dG;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->F:Lcom/google/googlenav/ui/wizard/dG;

    .line 528
    iget v0, p1, Lcom/google/googlenav/ui/wizard/dO;->i:I

    iput v0, p0, Lcom/google/googlenav/ui/wizard/dp;->o:I

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->r:Ljava/lang/String;

    .line 532
    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/dO;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->s:Ljava/lang/String;

    .line 533
    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/dO;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->t:Ljava/lang/String;

    .line 534
    iget-byte v0, p1, Lcom/google/googlenav/ui/wizard/dO;->l:B

    iput-byte v0, p0, Lcom/google/googlenav/ui/wizard/dp;->c:B

    .line 535
    iget-boolean v0, p1, Lcom/google/googlenav/ui/wizard/dO;->m:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dp;->u:Z

    .line 536
    iget-boolean v0, p1, Lcom/google/googlenav/ui/wizard/dO;->n:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dp;->J:Z

    .line 537
    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/dO;->o:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->K:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 539
    iget-boolean v0, p1, Lcom/google/googlenav/ui/wizard/dO;->r:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dp;->M:Z

    .line 541
    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/dO;->c()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 542
    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/dp;->L:Z

    .line 543
    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/dO;->p:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->D:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 544
    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/dO;->q:Ljava/util/List;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->E:Ljava/util/List;

    .line 545
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dp;->j()V

    .line 546
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    .line 562
    :cond_59
    :goto_59
    return-void

    .line 547
    :cond_5a
    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/dO;->e:Lat/B;

    if-eqz v0, :cond_73

    .line 548
    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/dp;->L:Z

    .line 549
    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/dO;->e:Lat/B;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->C:Lat/B;

    .line 550
    iget-object v0, p1, Lcom/google/googlenav/ui/wizard/dO;->e:Lat/B;

    iget v1, p1, Lcom/google/googlenav/ui/wizard/dO;->f:I

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/dp;->a(Lat/B;I)V

    .line 551
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dp;->j()V

    .line 552
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    goto :goto_59

    .line 555
    :cond_73
    iget v0, p0, Lcom/google/googlenav/ui/wizard/dp;->l:I

    if-ne v0, v1, :cond_7e

    .line 556
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dp;->j()V

    .line 557
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    goto :goto_59

    .line 558
    :cond_7e
    iget v0, p0, Lcom/google/googlenav/ui/wizard/dp;->a:I

    if-eqz v0, :cond_59

    .line 559
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    goto :goto_59
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/dp;)V
    .registers 1
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/dp;->C()V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/dp;)Lan/y;
    .registers 2
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->P:Lan/y;

    return-object v0
.end method

.method private c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 6
    .parameter

    .prologue
    .line 1455
    invoke-static {p1}, Lcom/google/googlenav/ui/wizard/dp;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lad/y;

    move-result-object v0

    .line 1457
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->F:Lcom/google/googlenav/ui/wizard/dG;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, p1, v3}, Lcom/google/googlenav/ui/wizard/dG;->a(Lad/y;Ljava/lang/Long;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/aW;)V

    .line 1458
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    .line 1459
    return-void
.end method

.method private c(Lcom/google/googlenav/ui/u;)V
    .registers 5
    .parameter

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->A:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->B:Lat/B;

    if-eqz v0, :cond_21

    .line 1477
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1478
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->A:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/d;->e()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1479
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->v:Lat/p;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dp;->B:Lat/B;

    invoke-virtual {v1, v2, v0}, Lat/p;->a(Lat/B;Landroid/graphics/Point;)V

    .line 1483
    :goto_1c
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->A:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v1, v0, p1}, Lcom/google/googlenav/ui/view/d;->a(Landroid/graphics/Point;Lcom/google/googlenav/ui/u;)V

    .line 1485
    :cond_21
    return-void

    .line 1481
    :cond_22
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->v:Lat/p;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dp;->B:Lat/B;

    invoke-virtual {v1, v2, v0}, Lat/p;->b(Lat/B;Landroid/graphics/Point;)V

    goto :goto_1c
.end method

.method public static f()I
    .registers 1

    .prologue
    .line 977
    const/16 v0, 0x1f

    return v0
.end method


# virtual methods
.method public A()V
    .registers 2

    .prologue
    .line 1323
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    .line 1324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dp;->G:Z

    .line 1325
    return-void
.end method

.method protected B()V
    .registers 4

    .prologue
    .line 1329
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    .line 1330
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dp;->a()V

    .line 1332
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->z()Lcom/google/googlenav/ui/wizard/eN;

    move-result-object v0

    .line 1334
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->x:Lcom/google/googlenav/J;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dp;->F:Lcom/google/googlenav/ui/wizard/dG;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/eN;->a(Lcom/google/googlenav/J;Lcom/google/googlenav/ui/wizard/dG;)V

    .line 1339
    return-void
.end method

.method public T_()V
    .registers 3

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dp;->I:Z

    .line 672
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/dp;->I:Z

    .line 673
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->r:Ljava/lang/String;

    .line 674
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dp;->a()V

    .line 675
    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dp;->I:Z

    .line 676
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dp;->j()V

    .line 677
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->r:Ljava/lang/String;

    .line 678
    return-void
.end method

.method public a(LZ/a;)I
    .registers 5
    .parameter

    .prologue
    .line 1100
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    .line 1101
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dp;->h()V

    .line 1102
    iget v0, p0, Lcom/google/googlenav/ui/wizard/dp;->p:I

    .line 1131
    :goto_d
    return v0

    .line 1105
    :cond_e
    iget v0, p0, Lcom/google/googlenav/ui/wizard/dp;->a:I

    packed-switch v0, :pswitch_data_54

    .line 1131
    :cond_13
    :goto_13
    :pswitch_13
    iget v0, p0, Lcom/google/googlenav/ui/wizard/dp;->p:I

    goto :goto_d

    .line 1109
    :pswitch_16
    invoke-virtual {p1}, LZ/a;->e()C

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_13

    .line 1110
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dp;->j:Z

    if-eqz v0, :cond_13

    .line 1111
    const/16 v0, 0x32b

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlenav/ui/wizard/dp;->a(IILjava/lang/Object;)Z

    goto :goto_13

    .line 1117
    :pswitch_2a
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_35

    .line 1118
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/googlenav/ui/wizard/dp;->p:I

    goto :goto_13

    .line 1120
    :cond_35
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->w:Lat/u;

    invoke-virtual {v0}, Lat/u;->c()Lat/B;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->B:Lat/B;

    .line 1121
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dp;->m:Z

    if-eqz v0, :cond_4e

    .line 1122
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->B:Lat/B;

    const v1, 0x1869f

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/dp;->a(Lat/B;I)V

    .line 1123
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    goto :goto_13

    .line 1125
    :cond_4e
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    goto :goto_13

    .line 1105
    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_16
        :pswitch_2a
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_16
    .end packed-switch
.end method

.method public a(LZ/b;)I
    .registers 6
    .parameter

    .prologue
    .line 1151
    iget v0, p0, Lcom/google/googlenav/ui/wizard/dp;->a:I

    packed-switch v0, :pswitch_data_50

    .line 1173
    :goto_5
    iget v0, p0, Lcom/google/googlenav/ui/wizard/dp;->p:I

    return v0

    .line 1157
    :pswitch_8
    invoke-virtual {p1}, LZ/b;->h()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1}, LZ/b;->j()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1158
    :cond_14
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/be;

    invoke-direct {v1}, Lcom/google/googlenav/ui/be;-><init>()V

    const/16 v2, 0x50e

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/aV;->e:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/be;->a(Lcom/google/googlenav/ui/aW;)Lcom/google/googlenav/ui/be;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/be;->a()Lcom/google/googlenav/ui/bd;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/googlenav/ui/view/e;->a(Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/view/c;Z)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->A:Lcom/google/googlenav/ui/view/d;

    .line 1163
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->v:Lat/p;

    invoke-virtual {p1}, LZ/b;->k()I

    move-result v1

    invoke-virtual {p1}, LZ/b;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lat/p;->b(II)Lat/B;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->B:Lat/B;

    .line 1167
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/dp;->p:I

    goto :goto_5

    .line 1169
    :cond_4c
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/googlenav/ui/wizard/dp;->p:I

    goto :goto_5

    .line 1151
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public a(Lat/B;)I
    .registers 6
    .parameter

    .prologue
    .line 1136
    iget v0, p0, Lcom/google/googlenav/ui/wizard/dp;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    .line 1137
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dp;->B:Lat/B;

    .line 1138
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/be;

    invoke-direct {v1}, Lcom/google/googlenav/ui/be;-><init>()V

    const/16 v2, 0x50e

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/aV;->e:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/be;->a(Lcom/google/googlenav/ui/aW;)Lcom/google/googlenav/ui/be;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/be;->a()Lcom/google/googlenav/ui/bd;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/dp;->B:Lat/B;

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/google/googlenav/ui/view/e;->a(Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/view/c;ZLat/B;)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->A:Lcom/google/googlenav/ui/view/d;

    .line 1146
    :cond_2d
    const/4 v0, 0x3

    return v0
.end method

.method protected a(Ljava/lang/String;Landroid/view/View$OnClickListener;)LaQ/H;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 895
    new-instance v0, Lcom/google/googlenav/ui/wizard/dH;

    invoke-direct {v0, p1, p2}, Lcom/google/googlenav/ui/wizard/dH;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method protected a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/L;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 783
    new-instance v0, Lcom/google/googlenav/ui/view/android/L;

    invoke-direct {v0, p1, v3}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;I)V

    .line 786
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/dp;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 787
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->i:Lan/h;

    invoke-interface {v1}, Lan/h;->h()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->i:Lan/h;

    invoke-interface {v1}, Lan/h;->e()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 788
    const/16 v1, 0x540

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/dA;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/dA;-><init>(Lcom/google/googlenav/ui/wizard/dp;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/googlenav/ui/wizard/dp;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)LaQ/H;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 798
    :cond_2f
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/dp;->a(I)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 799
    const/16 v1, 0x117

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/dB;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/dB;-><init>(Lcom/google/googlenav/ui/wizard/dp;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/googlenav/ui/wizard/dp;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)LaQ/H;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 808
    :cond_49
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/dp;->a(I)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 809
    const/16 v1, 0x53f

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/dC;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/dC;-><init>(Lcom/google/googlenav/ui/wizard/dp;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/googlenav/ui/wizard/dp;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)LaQ/H;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 818
    :cond_63
    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/wizard/dp;->a(I)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 819
    const/16 v1, 0x541

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/dD;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/dD;-><init>(Lcom/google/googlenav/ui/wizard/dp;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/googlenav/ui/wizard/dp;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)LaQ/H;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 828
    :cond_7b
    iget-boolean v1, p0, Lcom/google/googlenav/ui/wizard/dp;->j:Z

    if-eqz v1, :cond_91

    .line 829
    const/16 v1, 0x2e5

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/dr;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/dr;-><init>(Lcom/google/googlenav/ui/wizard/dp;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/googlenav/ui/wizard/dp;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)LaQ/H;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 838
    :cond_91
    return-object v0
.end method

.method protected a(II)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    .line 1020
    iget v0, p0, Lcom/google/googlenav/ui/wizard/dp;->a:I

    iput v0, p0, Lcom/google/googlenav/ui/wizard/dp;->n:I

    .line 1021
    iput p1, p0, Lcom/google/googlenav/ui/wizard/dp;->a:I

    .line 1027
    if-eq p1, v7, :cond_15

    .line 1028
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_12

    .line 1029
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->dismiss()V

    .line 1031
    :cond_12
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 1035
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->d:Lcom/google/googlenav/ui/wizard/ju;

    if-eqz v0, :cond_1e

    .line 1036
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 1039
    :cond_1e
    packed-switch p1, :pswitch_data_90

    .line 1087
    :goto_21
    :pswitch_21
    return-void

    .line 1041
    :pswitch_22
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/dp;->p:I

    goto :goto_21

    .line 1044
    :pswitch_26
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dp;->j()V

    .line 1045
    iput v7, p0, Lcom/google/googlenav/ui/wizard/dp;->p:I

    goto :goto_21

    .line 1048
    :pswitch_2c
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/dp;->J()V

    .line 1049
    iput v7, p0, Lcom/google/googlenav/ui/wizard/dp;->p:I

    goto :goto_21

    .line 1052
    :pswitch_32
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/googlenav/ui/wizard/dp;->z:J

    .line 1053
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->x:Lcom/google/googlenav/J;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->t:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    .line 1054
    iput v7, p0, Lcom/google/googlenav/ui/wizard/dp;->p:I

    goto :goto_21

    .line 1057
    :pswitch_4d
    const-string v0, ""

    .line 1058
    iget v1, p0, Lcom/google/googlenav/ui/wizard/dp;->n:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_57

    .line 1060
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->H:Ljava/lang/String;

    .line 1062
    :cond_57
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->a(Ljava/lang/String;)V

    .line 1063
    iput v7, p0, Lcom/google/googlenav/ui/wizard/dp;->p:I

    goto :goto_21

    .line 1067
    :pswitch_5d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->d:Lcom/google/googlenav/ui/wizard/ju;

    if-eqz v0, :cond_72

    .line 1068
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x4f4

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    .line 1071
    :cond_72
    iput v7, p0, Lcom/google/googlenav/ui/wizard/dp;->p:I

    goto :goto_21

    .line 1075
    :pswitch_75
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/dp;->E()V

    .line 1076
    iput v7, p0, Lcom/google/googlenav/ui/wizard/dp;->p:I

    goto :goto_21

    .line 1079
    :pswitch_7b
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/dp;->F()V

    .line 1080
    iput v7, p0, Lcom/google/googlenav/ui/wizard/dp;->p:I

    goto :goto_21

    .line 1083
    :pswitch_81
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->E:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1084
    iput v7, p0, Lcom/google/googlenav/ui/wizard/dp;->p:I

    goto :goto_21

    .line 1039
    nop

    :pswitch_data_90
    .packed-switch -0x1
        :pswitch_22
        :pswitch_26
        :pswitch_2c
        :pswitch_32
        :pswitch_4d
        :pswitch_5d
        :pswitch_75
        :pswitch_7b
        :pswitch_21
        :pswitch_21
        :pswitch_81
    .end packed-switch
.end method

.method protected a(Lat/B;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1531
    new-instance v0, Lcom/google/googlenav/friend/bi;

    invoke-direct {v0}, Lcom/google/googlenav/friend/bi;-><init>()V

    invoke-virtual {p1}, Lat/B;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/bi;->a(I)Lcom/google/googlenav/friend/bi;

    move-result-object v0

    invoke-virtual {p1}, Lat/B;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/bi;->b(I)Lcom/google/googlenav/friend/bi;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/friend/bi;->f(I)Lcom/google/googlenav/friend/bi;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/dP;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/dP;-><init>(Lcom/google/googlenav/ui/wizard/dp;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/bi;->a(Lcom/google/googlenav/friend/bh;)Lcom/google/googlenav/friend/bi;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/googlenav/ui/wizard/dp;->u:Z

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/bi;->a(Z)Lcom/google/googlenav/friend/bi;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/googlenav/ui/wizard/dp;->J:Z

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/bi;->b(Z)Lcom/google/googlenav/friend/bi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/bi;->h(I)Lcom/google/googlenav/friend/bi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->K:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/bi;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/friend/bi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/bi;->a(Ljava/lang/String;)Lcom/google/googlenav/friend/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/bi;->a()Lcom/google/googlenav/friend/bg;

    move-result-object v0

    .line 1542
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 1543
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/dO;)V
    .registers 3
    .parameter

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->i:Lan/h;

    invoke-interface {v0}, Lan/h;->h()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/dO;->b()Z

    move-result v0

    if-nez v0, :cond_12

    .line 499
    :cond_e
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/dp;->b(Lcom/google/googlenav/ui/wizard/dO;)V

    .line 515
    :goto_11
    return-void

    .line 503
    :cond_12
    new-instance v0, Lcom/google/googlenav/ui/wizard/dy;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/wizard/dy;-><init>(Lcom/google/googlenav/ui/wizard/dp;Lcom/google/googlenav/ui/wizard/dO;)V

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/wizard/dp;->a(Lcom/google/googlenav/ui/wizard/dO;Lcom/google/googlenav/ui/wizard/dQ;)V

    goto :goto_11
.end method

.method protected a(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 1092
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1093
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v1

    const-class v2, Lcom/google/googlenav/ui/wizard/EnterAddressActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1095
    invoke-static {}, Lcom/google/googlenav/android/Q;->a()Lcom/google/googlenav/android/Q;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/dJ;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/googlenav/ui/wizard/dJ;-><init>(Lcom/google/googlenav/ui/wizard/dp;Lcom/google/googlenav/ui/wizard/dq;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/android/Q;->a(Landroid/content/Intent;Lcom/google/googlenav/android/R;)V

    .line 1096
    return-void
.end method

.method protected a(I)Z
    .registers 3
    .parameter

    .prologue
    .line 988
    iget v0, p0, Lcom/google/googlenav/ui/wizard/dp;->l:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 1343
    sparse-switch p1, :sswitch_data_8c

    .line 1399
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 1345
    :sswitch_7
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dp;->B()V

    move v0, v1

    .line 1346
    goto :goto_6

    .line 1348
    :sswitch_c
    iget v0, p0, Lcom/google/googlenav/ui/wizard/dp;->n:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    move v0, v1

    .line 1349
    goto :goto_6

    .line 1351
    :sswitch_13
    check-cast p3, Ljava/lang/String;

    .line 1352
    invoke-static {p3}, Lad/y;->a(Ljava/lang/String;)Lad/y;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->a(Lad/y;)V

    .line 1353
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    move v0, v1

    .line 1354
    goto :goto_6

    .line 1356
    :sswitch_21
    if-ne p2, v2, :cond_2a

    .line 1357
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->D:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    :cond_28
    :goto_28
    move v0, v1

    .line 1363
    goto :goto_6

    .line 1359
    :cond_2a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->E:Ljava/util/List;

    if-eqz v0, :cond_28

    .line 1360
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->E:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_28

    .line 1365
    :sswitch_3a
    check-cast p3, Ljava/lang/String;

    .line 1366
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1367
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4b

    .line 1368
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->b(Ljava/lang/String;)V

    :goto_49
    move v0, v1

    .line 1372
    goto :goto_6

    .line 1370
    :cond_4b
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    goto :goto_49

    .line 1374
    :sswitch_50
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    move v0, v1

    .line 1375
    goto :goto_6

    .line 1377
    :sswitch_56
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p2}, Lcom/google/googlenav/ui/wizard/dp;->a(II)V

    move v0, v1

    .line 1378
    goto :goto_6

    .line 1384
    :sswitch_5d
    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/dp;->r:Ljava/lang/String;

    move v0, v1

    .line 1385
    goto :goto_6

    .line 1388
    :sswitch_63
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->i:Lan/h;

    invoke-interface {v0}, Lan/h;->m()Lan/s;

    move-result-object v0

    .line 1389
    if-eqz v0, :cond_82

    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v2

    if-eqz v2, :cond_82

    .line 1390
    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v2

    invoke-static {v0}, Lan/s;->a(Landroid/location/Location;)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/google/googlenav/ui/wizard/dp;->a(Lat/B;I)V

    .line 1391
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    .line 1392
    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/dp;->G:Z

    :cond_82
    move v0, v1

    .line 1394
    goto :goto_6

    .line 1396
    :sswitch_84
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    move v0, v1

    .line 1397
    goto/16 :goto_6

    .line 1343
    nop

    :sswitch_data_8c
    .sparse-switch
        0x1f5 -> :sswitch_63
        0x1f6 -> :sswitch_84
        0x327 -> :sswitch_13
        0x328 -> :sswitch_21
        0x329 -> :sswitch_3a
        0x32b -> :sswitch_7
        0x32c -> :sswitch_c
        0x32d -> :sswitch_50
        0x32e -> :sswitch_5d
        0x32f -> :sswitch_56
    .end sparse-switch
.end method

.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 4
    .parameter

    .prologue
    .line 1520
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dp;->m:Z

    if-eqz v0, :cond_12

    .line 1521
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->B:Lat/B;

    const v1, 0x1869f

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/dp;->a(Lat/B;I)V

    .line 1522
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    .line 1526
    :goto_10
    const/4 v0, 0x1

    return v0

    .line 1524
    :cond_12
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    goto :goto_10
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 568
    iget v0, p0, Lcom/google/googlenav/ui/wizard/dp;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    .line 569
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/dp;->E()V

    .line 576
    :cond_8
    :goto_8
    return-void

    .line 570
    :cond_9
    iget v0, p0, Lcom/google/googlenav/ui/wizard/dp;->l:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->C:Lat/B;

    if-nez v0, :cond_8

    .line 574
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/dp;->D()V

    goto :goto_8
.end method

.method protected b(I)V
    .registers 3
    .parameter

    .prologue
    .line 1008
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/wizard/dp;->a(II)V

    .line 1009
    return-void
.end method

.method public b(Lcom/google/googlenav/ui/u;)V
    .registers 3
    .parameter

    .prologue
    .line 1178
    iget v0, p0, Lcom/google/googlenav/ui/wizard/dp;->a:I

    packed-switch v0, :pswitch_data_14

    .line 1190
    :goto_5
    :pswitch_5
    return-void

    .line 1181
    :pswitch_6
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/wizard/C;->b(Lcom/google/googlenav/ui/u;)V

    goto :goto_5

    .line 1184
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/dp;->c(Lcom/google/googlenav/ui/u;)V

    goto :goto_5

    .line 1187
    :pswitch_e
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/wizard/dp;->a(Lcom/google/googlenav/ui/u;Z)V

    goto :goto_5

    .line 1178
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6
        :pswitch_a
        :pswitch_e
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_9

    .line 1510
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->dismiss()V

    .line 1512
    :cond_9
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 1514
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dp;->H:Ljava/lang/String;

    .line 1515
    invoke-static {p1}, Lad/y;->a(Ljava/lang/String;)Lad/y;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->a(Lad/y;)V

    .line 1516
    return-void
.end method

.method public b(Lcom/google/googlenav/ui/view/J;)Z
    .registers 3
    .parameter

    .prologue
    .line 1547
    const/4 v0, 0x0

    return v0
.end method

.method public b(Z)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1194
    iget v1, p0, Lcom/google/googlenav/ui/wizard/dp;->a:I

    packed-switch v1, :pswitch_data_36

    .line 1209
    :pswitch_6
    const/4 v0, 0x0

    :cond_7
    :goto_7
    :pswitch_7
    return v0

    .line 1197
    :pswitch_8
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/wizard/C;->b(Z)Z

    move-result v0

    goto :goto_7

    .line 1201
    :pswitch_d
    iget-wide v1, p0, Lcom/google/googlenav/ui/wizard/dp;->z:J

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_7

    .line 1203
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->B:Lat/B;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dp;->v:Lat/p;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/dp;->B:Lat/B;

    invoke-virtual {v2, v3}, Lat/p;->a(Lat/B;)Ln/B;

    move-result-object v2

    invoke-static {v1, v2}, Lad/y;->a(Lat/B;Ln/B;)Lad/y;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/dp;->a(Lad/y;)V

    .line 1205
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    goto :goto_7

    .line 1194
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_d
        :pswitch_6
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method protected c()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 642
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 645
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dp;->I:Z

    if-nez v0, :cond_11

    .line 646
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/dp;->G()V

    .line 649
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/dp;->C:Lat/B;

    .line 650
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/dp;->D:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 651
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/dp;->E:Ljava/util/List;

    .line 654
    :cond_11
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dp;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    .line 655
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->x:Lcom/google/googlenav/J;

    invoke-interface {v0}, Lcom/google/googlenav/J;->j()LaM/bx;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, LaM/bx;->e(ILjava/lang/Object;)V

    .line 657
    :cond_22
    return-void
.end method

.method protected e()Lcom/google/googlenav/ui/view/u;
    .registers 13

    .prologue
    const/16 v11, 0x32f

    const/16 v5, 0x32d

    const/4 v1, 0x2

    const/16 v10, 0x328

    const/4 v3, 0x0

    .line 899
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 904
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 907
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dp;->u:Z

    if-eqz v0, :cond_49

    .line 908
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dp;->G:Z

    if-nez v0, :cond_21

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->a(I)Z

    move-result v0

    if-eqz v0, :cond_88

    :cond_21
    const/16 v0, 0x1dd

    .line 910
    :goto_23
    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/google/googlenav/ui/aV;->au:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v6}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 911
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->D:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aT;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/Vector;)V

    .line 914
    new-instance v0, Lcom/google/googlenav/ui/be;

    invoke-direct {v0}, Lcom/google/googlenav/ui/be;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/be;->a(Ljava/util/List;)Lcom/google/googlenav/ui/be;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/googlenav/ui/be;->e(I)Lcom/google/googlenav/ui/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/be;->a()Lcom/google/googlenav/ui/bd;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 920
    :cond_49
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dp;->M:Z

    if-eqz v0, :cond_8b

    move v2, v5

    .line 921
    :goto_4e
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dp;->M:Z

    if-eqz v0, :cond_8e

    const/16 v0, 0x319

    move v6, v0

    .line 924
    :goto_55
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v8

    .line 925
    const/4 v0, 0x0

    move v7, v0

    :goto_5b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_b8

    .line 926
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->E:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 927
    const/16 v9, 0x10

    invoke-static {v0, v9}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v9

    if-eqz v9, :cond_b0

    .line 928
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v9

    if-nez v9, :cond_92

    .line 930
    invoke-static {}, Lcom/google/googlenav/friend/af;->y()V

    .line 931
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    :goto_84
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_5b

    .line 908
    :cond_88
    const/16 v0, 0x3e0

    goto :goto_23

    .line 920
    :cond_8b
    const/4 v0, -0x1

    move v2, v0

    goto :goto_4e

    .line 921
    :cond_8e
    const/16 v0, 0x318

    move v6, v0

    goto :goto_55

    .line 932
    :cond_92
    const/16 v9, 0x15

    invoke-virtual {v0, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    if-ne v1, v0, :cond_a5

    .line 935
    invoke-static {}, Lcom/google/googlenav/friend/af;->x()V

    .line 936
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_84

    .line 938
    :cond_a5
    invoke-static {}, Lcom/google/googlenav/friend/af;->w()V

    .line 939
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_84

    .line 942
    :cond_b0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_84

    .line 946
    :cond_b8
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->E:Ljava/util/List;

    invoke-static {v6}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v4, v8, v6, v2}, Lcom/google/googlenav/ui/aT;->a(Ljava/util/List;Ljava/util/Vector;Ljava/util/List;Ljava/lang/String;I)V

    .line 950
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dp;->M:Z

    if-eqz v0, :cond_f5

    .line 952
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dp;->M:Z

    if-eqz v0, :cond_f3

    .line 953
    new-instance v0, Lcom/google/googlenav/ui/be;

    invoke-direct {v0}, Lcom/google/googlenav/ui/be;-><init>()V

    const/16 v2, 0x4ff

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/google/googlenav/ui/aV;->o:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v6}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/be;->a(Lcom/google/googlenav/ui/aW;)Lcom/google/googlenav/ui/be;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/be;->e(I)Lcom/google/googlenav/ui/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/be;->a()Lcom/google/googlenav/ui/bd;

    move-result-object v0

    .line 961
    :goto_e6
    new-instance v5, Lcom/google/googlenav/ui/view/v;

    invoke-direct {v5, v0, v3, v3, v3}, Lcom/google/googlenav/ui/view/v;-><init>(Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bd;)V

    .line 965
    :goto_eb
    new-instance v0, Lcom/google/googlenav/ui/view/u;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dp;->q:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/u;-><init>(ILjava/lang/String;Lcom/google/googlenav/ui/view/t;Ljava/util/Vector;Lcom/google/googlenav/ui/view/v;)V

    .line 967
    return-object v0

    :cond_f3
    move-object v0, v3

    goto :goto_e6

    :cond_f5
    move-object v5, v3

    goto :goto_eb
.end method

.method protected g()I
    .registers 2

    .prologue
    .line 998
    iget v0, p0, Lcom/google/googlenav/ui/wizard/dp;->o:I

    return v0
.end method

.method public h()V
    .registers 1

    .prologue
    .line 1243
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/dp;->H()V

    .line 1244
    return-void
.end method

.method protected i()V
    .registers 3

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->i:Lan/h;

    invoke-interface {v0}, Lan/h;->m()Lan/s;

    move-result-object v0

    .line 1296
    iget-boolean v1, p0, Lcom/google/googlenav/ui/wizard/dp;->m:Z

    if-eqz v1, :cond_25

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 1297
    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v1

    invoke-static {v0}, Lan/s;->a(Landroid/location/Location;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/wizard/dp;->a(Lat/B;I)V

    .line 1298
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    .line 1299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dp;->G:Z

    .line 1307
    :goto_24
    return-void

    .line 1301
    :cond_25
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->i:Lan/h;

    invoke-interface {v1}, Lan/h;->g()Z

    move-result v1

    if-eqz v1, :cond_43

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v1

    invoke-virtual {v0}, Lan/s;->b()Ln/B;

    move-result-object v0

    invoke-static {v1, v0}, Lad/y;->b(Lat/B;Ln/B;)Lad/y;

    move-result-object v0

    .line 1304
    :goto_3b
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->a(Lad/y;)V

    .line 1305
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    goto :goto_24

    .line 1301
    :cond_43
    invoke-static {}, Lad/y;->a()Lad/y;

    move-result-object v0

    goto :goto_3b
.end method

.method public k()I
    .registers 3

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dp;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 662
    const/16 v0, 0x8

    .line 664
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public m()V
    .registers 3

    .prologue
    .line 1595
    iget v0, p0, Lcom/google/googlenav/ui/wizard/dp;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->s:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1599
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->o()V

    .line 1600
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->x:Lcom/google/googlenav/J;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dp;->s:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->b(Ljava/lang/String;)V

    .line 1602
    :cond_19
    return-void
.end method

.method public p()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1226
    iget v1, p0, Lcom/google/googlenav/ui/wizard/dp;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    iget v1, p0, Lcom/google/googlenav/ui/wizard/dp;->a:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_15

    iget v1, p0, Lcom/google/googlenav/ui/wizard/dp;->p:I

    if-eq v1, v0, :cond_15

    iget v1, p0, Lcom/google/googlenav/ui/wizard/dp;->p:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public v()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1238
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dp;->o()Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/google/googlenav/ui/wizard/dp;->a:I

    if-ne v1, v0, :cond_c

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected y()V
    .registers 2

    .prologue
    .line 1311
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    .line 1312
    return-void
.end method

.method protected z()V
    .registers 4

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dp;->N:Lcom/google/googlenav/aA;

    check-cast v0, Lcom/google/googlenav/android/d;

    new-instance v1, Lcom/google/googlenav/ui/wizard/dF;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/wizard/dF;-><init>(Lcom/google/googlenav/ui/wizard/dp;Lcom/google/googlenav/ui/wizard/dq;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/d;->a(Lcom/google/googlenav/android/R;)V

    .line 1318
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dp;->b(I)V

    .line 1319
    return-void
.end method
