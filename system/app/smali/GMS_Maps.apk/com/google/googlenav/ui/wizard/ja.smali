.class public Lcom/google/googlenav/ui/wizard/ja;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# static fields
.field static final synthetic k:Z

.field private static final u:Lcom/google/common/base/D;


# instance fields
.field a:LS/f;

.field b:Lcom/google/googlenav/bo;

.field public c:Lcom/google/googlenav/ui/view/dialog/co;

.field public i:Lcom/google/googlenav/ui/view/dialog/cz;

.field public j:Lcom/google/googlenav/ui/view/dialog/cu;

.field private l:Lcom/google/googlenav/ui/wizard/ji;

.field private m:Lcom/google/googlenav/br;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private q:Lcom/google/googlenav/ui/view/dialog/cs;

.field private r:Lcom/google/googlenav/ui/bw;

.field private s:I

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 62
    const-class v0, Lcom/google/googlenav/ui/wizard/ja;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_35

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/googlenav/ui/wizard/ja;->k:Z

    .line 113
    new-instance v0, Lcom/google/common/collect/by;

    invoke-direct {v0}, Lcom/google/common/collect/by;-><init>()V

    sget-object v1, Lcom/google/googlenav/bo;->b:Lcom/google/googlenav/bo;

    const-string v2, "p"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/bo;->a:Lcom/google/googlenav/bo;

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/bo;->c:Lcom/google/googlenav/bo;

    const-string v2, "o"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/by;->a()Lcom/google/common/collect/bx;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/common/base/E;->a(Ljava/util/Map;Ljava/lang/Object;)Lcom/google/common/base/D;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/wizard/ja;->u:Lcom/google/common/base/D;

    return-void

    .line 62
    :cond_35
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 85
    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/ja;->o:Z

    .line 108
    iput v0, p0, Lcom/google/googlenav/ui/wizard/ja;->s:I

    .line 109
    iput v0, p0, Lcom/google/googlenav/ui/wizard/ja;->t:I

    .line 124
    return-void
.end method

.method private A()Z
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->j:Lcom/google/googlenav/ui/view/dialog/cu;

    if-nez v0, :cond_6

    .line 226
    const/4 v0, 0x0

    .line 230
    :goto_5
    return v0

    .line 228
    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->j:Lcom/google/googlenav/ui/view/dialog/cu;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/cu;->dismiss()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->j:Lcom/google/googlenav/ui/view/dialog/cu;

    .line 230
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private B()V
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->m:Lcom/google/googlenav/br;

    iget-boolean v0, v0, Lcom/google/googlenav/br;->a:Z

    if-eqz v0, :cond_a

    .line 302
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ja;->D()V

    .line 308
    :goto_9
    return-void

    .line 306
    :cond_a
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ja;->C()V

    goto :goto_9
.end method

.method private C()V
    .registers 8

    .prologue
    .line 313
    new-instance v0, Lcom/google/googlenav/ui/wizard/jc;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/jc;-><init>(Lcom/google/googlenav/ui/wizard/ja;)V

    .line 349
    new-instance v2, Lcom/google/googlenav/friend/bu;

    invoke-static {}, Lcom/google/googlenav/bj;->a()Lcom/google/googlenav/bj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bj;->h()Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/google/googlenav/friend/bu;-><init>(Ljava/util/List;Lcom/google/googlenav/friend/bv;)V

    .line 354
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x419

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    .line 361
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lac/h;->c(Lac/g;)V

    .line 362
    return-void
.end method

.method private D()V
    .registers 4

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->c:Lcom/google/googlenav/ui/view/dialog/co;

    if-nez v0, :cond_19

    .line 380
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/co;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ja;->m:Lcom/google/googlenav/br;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ja;->b:Lcom/google/googlenav/bo;

    invoke-direct {v0, v1, v2, p0}, Lcom/google/googlenav/ui/view/dialog/co;-><init>(Lcom/google/googlenav/br;Lcom/google/googlenav/bo;Lcom/google/googlenav/ui/wizard/ja;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->c:Lcom/google/googlenav/ui/view/dialog/co;

    .line 381
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->c:Lcom/google/googlenav/ui/view/dialog/co;

    new-instance v1, Lcom/google/googlenav/ui/wizard/jd;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/jd;-><init>(Lcom/google/googlenav/ui/wizard/ja;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/co;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 400
    :cond_19
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->c:Lcom/google/googlenav/ui/view/dialog/co;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/co;->show()V

    .line 401
    return-void
.end method

.method private E()V
    .registers 3

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->q:Lcom/google/googlenav/ui/view/dialog/cs;

    if-nez v0, :cond_f

    .line 542
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/cs;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ja;->m:Lcom/google/googlenav/br;

    iget-object v1, v1, Lcom/google/googlenav/br;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/ui/view/dialog/cs;-><init>(Ljava/lang/String;Lcom/google/googlenav/ui/wizard/ja;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->q:Lcom/google/googlenav/ui/view/dialog/cs;

    .line 545
    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->q:Lcom/google/googlenav/ui/view/dialog/cs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/cs;->show()V

    .line 546
    const-string v0, "t"

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->n:Ljava/lang/String;

    .line 548
    return-void
.end method

.method private F()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 670
    const-string v0, "a"

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/ja;->c(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->m:Lcom/google/googlenav/br;

    iget-boolean v0, v0, Lcom/google/googlenav/br;->a:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->m:Lcom/google/googlenav/br;

    invoke-virtual {v0}, Lcom/google/googlenav/br;->a()Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v1

    .line 674
    :goto_15
    if-nez v0, :cond_20

    .line 675
    const/16 v0, 0x56e

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 680
    :cond_20
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->l:Lcom/google/googlenav/ui/wizard/ji;

    .line 681
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ja;->a()V

    .line 683
    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/ji;->a()V

    .line 684
    return-void

    .line 673
    :cond_29
    const/4 v0, 0x0

    goto :goto_15
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/ja;Lcom/google/googlenav/br;)Lcom/google/googlenav/br;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ja;->m:Lcom/google/googlenav/br;

    return-object p1
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 733
    packed-switch p0, :pswitch_data_16

    .line 739
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_11
    :pswitch_11
    return-object p1

    .line 735
    :pswitch_12
    const-string p1, ""

    goto :goto_11

    .line 733
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
    .end packed-switch
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/List;
    .registers 14
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x5

    const/4 v8, 0x3

    .line 499
    invoke-virtual {p1, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 500
    new-instance v3, Ljava/util/ArrayList;

    mul-int/lit8 v0, v2, 0x2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    .line 501
    :goto_11
    if-ge v0, v2, :cond_5d

    .line 502
    invoke-virtual {p1, v9, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 503
    invoke-virtual {v4, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 505
    invoke-virtual {v4, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v6

    if-eqz v6, :cond_59

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 509
    new-instance v6, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getType()Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    invoke-virtual {v6, v10, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    invoke-virtual {v4, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v11, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    invoke-virtual {v4, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    invoke-virtual {v4, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 515
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    invoke-virtual {v4, v8, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->remove(II)V

    .line 519
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    :goto_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 523
    :cond_59
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 526
    :cond_5d
    return-object v3
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/ja;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/List;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/ja;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(II)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 648
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->j:Lcom/google/googlenav/ui/view/dialog/cu;

    if-nez v0, :cond_16

    .line 649
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/cu;

    iget v3, p0, Lcom/google/googlenav/ui/wizard/ja;->s:I

    iget v4, p0, Lcom/google/googlenav/ui/wizard/ja;->t:I

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ja;->m:Lcom/google/googlenav/br;

    iget-object v5, v1, Lcom/google/googlenav/br;->b:Ljava/lang/String;

    move v1, p1

    move v2, p2

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/dialog/cu;-><init>(IIIILjava/lang/String;Lcom/google/googlenav/ui/wizard/ja;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->j:Lcom/google/googlenav/ui/view/dialog/cu;

    .line 653
    :cond_16
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->j:Lcom/google/googlenav/ui/view/dialog/cu;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/cu;->show()V

    .line 655
    const-string v0, "c"

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->n:Ljava/lang/String;

    .line 659
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/ja;)V
    .registers 1
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ja;->B()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/ja;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/ja;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/ja;Ljava/util/List;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/ja;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/ja;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/ja;->a(Z)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 8
    .parameter

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->i:Lcom/google/googlenav/ui/view/dialog/cz;

    if-nez v0, :cond_21

    .line 558
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/cz;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ja;->m:Lcom/google/googlenav/br;

    iget-object v1, v1, Lcom/google/googlenav/br;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ja;->g()Lcom/google/googlenav/ui/bw;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/ja;->a:LS/f;

    move-object v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/dialog/cz;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/google/googlenav/ui/bw;LS/f;Lcom/google/googlenav/ui/wizard/ja;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->i:Lcom/google/googlenav/ui/view/dialog/cz;

    .line 560
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->i:Lcom/google/googlenav/ui/view/dialog/cz;

    new-instance v1, Lcom/google/googlenav/ui/wizard/jf;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/jf;-><init>(Lcom/google/googlenav/ui/wizard/ja;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/cz;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 575
    :cond_21
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->i:Lcom/google/googlenav/ui/view/dialog/cz;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/cz;->show()V

    .line 576
    return-void
.end method

.method private a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 692
    if-nez p1, :cond_20

    .line 693
    const/16 v0, 0x3f6

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 694
    const-string v0, "ce"

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/ja;->c(Ljava/lang/String;)V

    .line 699
    :goto_11
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ja;->o()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 700
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->l:Lcom/google/googlenav/ui/wizard/ji;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/wizard/ji;->a(Z)V

    .line 701
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ja;->a()V

    .line 709
    :cond_1f
    return-void

    .line 696
    :cond_20
    const-string v0, "cu"

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/ja;->c(Ljava/lang/String;)V

    goto :goto_11
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/ja;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ja;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/ja;)V
    .registers 1
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ja;->D()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 367
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ja;->o()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 369
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ja;->D()V

    .line 371
    :cond_e
    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/ja;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->n:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .registers 13
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/google/googlenav/ui/wizard/ja;->u:Lcom/google/common/base/D;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/ja;->b:Lcom/google/googlenav/bo;

    invoke-interface {v0, v3}, Lcom/google/common/base/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 753
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->m:Lcom/google/googlenav/br;

    if-nez v0, :cond_a3

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    .line 767
    :goto_25
    iget-boolean v4, p0, Lcom/google/googlenav/ui/wizard/ja;->o:Z

    if-eqz v4, :cond_f1

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pr="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/google/googlenav/ui/wizard/ja;->s:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pp="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Lcom/google/googlenav/ui/wizard/ja;->t:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 774
    :goto_53
    const/16 v6, 0x6f

    const-string v7, "o"

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "a="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x2

    aput-object v3, v8, v5

    const/4 v3, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "d="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/google/googlenav/ui/wizard/ja;->n:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v3

    const/4 v3, 0x4

    aput-object v2, v8, v3

    const/4 v2, 0x5

    aput-object v0, v8, v2

    const/4 v0, 0x6

    aput-object v4, v8, v0

    const/4 v0, 0x7

    aput-object v1, v8, v0

    invoke-static {v8}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 782
    return-void

    .line 756
    :cond_a3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "g="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->m:Lcom/google/googlenav/br;

    iget-boolean v0, v0, Lcom/google/googlenav/br;->a:Z

    if-eqz v0, :cond_ee

    const-string v0, "1"

    :goto_b6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "r="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ja;->m:Lcom/google/googlenav/br;

    iget v2, v2, Lcom/google/googlenav/br;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/ja;->m:Lcom/google/googlenav/br;

    iget v4, v4, Lcom/google/googlenav/br;->g:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_25

    .line 756
    :cond_ee
    const-string v0, "0"

    goto :goto_b6

    :cond_f1
    move-object v4, v1

    goto/16 :goto_53
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/ja;)V
    .registers 1
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ja;->F()V

    return-void
.end method

.method private z()Z
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->i:Lcom/google/googlenav/ui/view/dialog/cz;

    if-nez v0, :cond_6

    .line 214
    const/4 v0, 0x0

    .line 218
    :goto_5
    return v0

    .line 216
    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->i:Lcom/google/googlenav/ui/view/dialog/cz;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/cz;->dismiss()V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->i:Lcom/google/googlenav/ui/view/dialog/cz;

    .line 218
    const/4 v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method public T_()V
    .registers 4

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->l:Lcom/google/googlenav/ui/wizard/ji;

    .line 236
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ja;->b:Lcom/google/googlenav/bo;

    .line 237
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ja;->m:Lcom/google/googlenav/br;

    .line 238
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ja;->a()V

    .line 239
    invoke-virtual {p0, v2, v1, v0}, Lcom/google/googlenav/ui/wizard/ja;->a(Lcom/google/googlenav/br;Lcom/google/googlenav/bo;Lcom/google/googlenav/ui/wizard/ji;)V

    .line 240
    return-void
.end method

.method public a(LZ/a;)I
    .registers 4
    .parameter

    .prologue
    .line 244
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    .line 245
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ja;->h()V

    .line 247
    :cond_b
    const/4 v0, 0x3

    return v0
.end method

.method public a(LZ/b;)I
    .registers 3
    .parameter

    .prologue
    .line 273
    const/4 v0, 0x3

    return v0
.end method

.method public a(Lcom/google/googlenav/br;Lcom/google/googlenav/bo;Lcom/google/googlenav/ui/wizard/ji;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ja;->m:Lcom/google/googlenav/br;

    .line 129
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/ja;->b:Lcom/google/googlenav/bo;

    .line 130
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/ja;->l:Lcom/google/googlenav/ui/wizard/ji;

    .line 131
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ja;->j()V

    .line 132
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 744
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->F()Lcom/google/googlenav/aA;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;)V

    .line 745
    return-void
.end method

.method public a(Ljava/util/List;Lah/p;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ja;->g()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->b()Lah/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lah/s;->a(Ljava/lang/Iterable;Lah/p;)V

    .line 584
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;II)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/ja;->o:Z

    .line 410
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbh/d;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->p:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 412
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/wizard/ja;->s:I

    .line 413
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/wizard/ja;->t:I

    .line 414
    iget v0, p0, Lcom/google/googlenav/ui/wizard/ja;->s:I

    if-eqz v0, :cond_33

    .line 415
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 416
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ja;->p:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    goto :goto_20

    .line 420
    :cond_33
    iget v0, p0, Lcom/google/googlenav/ui/wizard/ja;->t:I

    if-eqz v0, :cond_4e

    .line 421
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 422
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ja;->p:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    goto :goto_3b

    .line 426
    :cond_4e
    invoke-direct {p0, p3, p4}, Lcom/google/googlenav/ui/wizard/ja;->a(II)V

    .line 427
    return-void
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->m:Lcom/google/googlenav/br;

    if-nez v0, :cond_9

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/ja;->a(Z)V

    .line 168
    :goto_8
    return-void

    .line 144
    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->m:Lcom/google/googlenav/br;

    iget v0, v0, Lcom/google/googlenav/br;->f:I

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_19

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->m:Lcom/google/googlenav/br;

    iget v0, v0, Lcom/google/googlenav/br;->g:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_1d

    .line 147
    :cond_19
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ja;->E()V

    goto :goto_8

    .line 151
    :cond_1d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->m:Lcom/google/googlenav/br;

    iget-boolean v0, v0, Lcom/google/googlenav/br;->a:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->m:Lcom/google/googlenav/br;

    invoke-virtual {v0}, Lcom/google/googlenav/br;->a()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 154
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ja;->y()V

    goto :goto_8

    .line 159
    :cond_2f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->m:Lcom/google/googlenav/br;

    iget-boolean v0, v0, Lcom/google/googlenav/br;->a:Z

    if-eqz v0, :cond_3c

    .line 161
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ja;->B()V

    .line 167
    :goto_38
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->b()V

    goto :goto_8

    .line 163
    :cond_3c
    const-string v0, "g"

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->n:Ljava/lang/String;

    .line 165
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/cw;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ja;->b:Lcom/google/googlenav/bo;

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/ui/view/dialog/cw;-><init>(Lcom/google/googlenav/bo;Lcom/google/googlenav/ui/wizard/ja;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->h:Lcom/google/googlenav/ui/view/android/bb;

    goto :goto_38
.end method

.method protected c()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 181
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ja;->A()Z

    .line 182
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ja;->z()Z

    .line 184
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->c:Lcom/google/googlenav/ui/view/dialog/co;

    if-eqz v0, :cond_13

    .line 185
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->c:Lcom/google/googlenav/ui/view/dialog/co;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/co;->dismiss()V

    .line 186
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/ja;->c:Lcom/google/googlenav/ui/view/dialog/co;

    .line 188
    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->q:Lcom/google/googlenav/ui/view/dialog/cs;

    if-eqz v0, :cond_1e

    .line 189
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->q:Lcom/google/googlenav/ui/view/dialog/cs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/cs;->dismiss()V

    .line 190
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/ja;->q:Lcom/google/googlenav/ui/view/dialog/cs;

    .line 195
    :cond_1e
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/ja;->l:Lcom/google/googlenav/ui/wizard/ji;

    .line 196
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/ja;->b:Lcom/google/googlenav/bo;

    .line 197
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/ja;->m:Lcom/google/googlenav/br;

    .line 198
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/ja;->a:LS/f;

    .line 199
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/ja;->r:Lcom/google/googlenav/ui/bw;

    .line 200
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/ja;->n:Ljava/lang/String;

    .line 201
    iput-boolean v2, p0, Lcom/google/googlenav/ui/wizard/ja;->o:Z

    .line 202
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/ja;->p:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 203
    iput v2, p0, Lcom/google/googlenav/ui/wizard/ja;->s:I

    .line 204
    iput v2, p0, Lcom/google/googlenav/ui/wizard/ja;->t:I

    .line 206
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 207
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 280
    sget-boolean v0, Lcom/google/googlenav/ui/wizard/ja;->k:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->m:Lcom/google/googlenav/br;

    iget-boolean v0, v0, Lcom/google/googlenav/br;->a:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 281
    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->d:Lcom/google/googlenav/ui/wizard/ju;

    new-instance v1, Lcom/google/googlenav/ui/wizard/jb;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/jb;-><init>(Lcom/google/googlenav/ui/wizard/ja;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/wizard/cs;)V

    .line 294
    return-void
.end method

.method public f()V
    .registers 8

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->m:Lcom/google/googlenav/br;

    invoke-virtual {v0}, Lcom/google/googlenav/br;->a()Z

    move-result v0

    if-nez v0, :cond_f

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->p:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 441
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ja;->y()V

    .line 488
    :goto_e
    return-void

    .line 446
    :cond_f
    new-instance v0, Lcom/google/googlenav/ui/wizard/je;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/je;-><init>(Lcom/google/googlenav/ui/wizard/ja;)V

    .line 478
    new-instance v2, Lcom/google/googlenav/bt;

    invoke-direct {v2, v0}, Lcom/google/googlenav/bt;-><init>(Lcom/google/googlenav/bu;)V

    .line 483
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x419

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    .line 487
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lac/h;->c(Lac/g;)V

    goto :goto_e
.end method

.method public g()Lcom/google/googlenav/ui/bw;
    .registers 4

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->r:Lcom/google/googlenav/ui/bw;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->a:LS/f;

    if-nez v0, :cond_29

    .line 532
    :cond_8
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->q()LS/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->a:LS/f;

    .line 533
    new-instance v0, Lcom/google/googlenav/ui/bw;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ja;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/J;->k()Lah/o;

    move-result-object v1

    invoke-virtual {v1}, Lah/o;->b()Lah/s;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/ja;->a:LS/f;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/bw;-><init>(Lah/s;LS/f;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->r:Lcom/google/googlenav/ui/bw;

    .line 536
    :cond_29
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->r:Lcom/google/googlenav/ui/bw;

    return-object v0
.end method

.method public h()V
    .registers 2

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ja;->A()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 269
    :goto_6
    return-void

    .line 261
    :cond_7
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ja;->z()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 263
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ja;->B()V

    goto :goto_6

    .line 268
    :cond_11
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/ja;->a(Z)V

    goto :goto_6
.end method

.method public i()V
    .registers 2

    .prologue
    .line 552
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/ja;->a(Z)V

    .line 553
    return-void
.end method

.method public y()V
    .registers 9

    .prologue
    .line 594
    new-instance v0, Lcom/google/googlenav/ui/wizard/jg;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/jg;-><init>(Lcom/google/googlenav/ui/wizard/ja;)V

    .line 613
    new-instance v7, Lcom/google/googlenav/friend/aU;

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-direct {v7, v1, v2, v0}, Lcom/google/googlenav/friend/aU;-><init>(ZILcom/google/googlenav/friend/aV;)V

    .line 615
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->p:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_15

    .line 616
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->p:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v7, v0}, Lcom/google/googlenav/friend/aU;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 620
    :cond_15
    new-instance v2, Lcom/google/googlenav/ui/wizard/jh;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/jh;-><init>(Lcom/google/googlenav/ui/wizard/ja;)V

    .line 634
    const-wide/16 v0, 0x2710

    invoke-virtual {v7, v0, v1}, Lcom/google/googlenav/friend/aU;->b(J)V

    .line 635
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ja;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x419

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    .line 640
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, v7}, Lac/h;->c(Lac/g;)V

    .line 641
    return-void
.end method
