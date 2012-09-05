.class public Lcom/google/googlenav/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/D;


# static fields
.field public static final a:Lcom/google/common/base/o;

.field private static final b:Lcom/google/googlenav/as;

.field private static final c:[Lcom/google/googlenav/an;

.field private static final d:[Lcom/google/googlenav/ao;


# instance fields
.field private A:Z

.field private B:Lcom/google/googlenav/av;

.field private C:Lcom/google/googlenav/av;

.field private D:[Lcom/google/googlenav/au;

.field private E:Ljava/lang/Boolean;

.field private F:Ljava/lang/String;

.field private G:Lbe/c;

.field private H:Lcom/google/googlenav/cd;

.field private I:Lcom/google/googlenav/cd;

.field private final e:Lam/b;

.field private f:Ljava/util/List;

.field private g:LaJ/g;

.field private h:LaJ/g;

.field private i:Ljava/lang/String;

.field private j:B

.field private k:I

.field private l:Z

.field private m:Ljava/util/Map;

.field private n:Lcom/google/googlenav/e;

.field private o:Z

.field private p:[Lcom/google/googlenav/ah;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:Ljava/util/Vector;

.field private t:Lcom/google/googlenav/ab;

.field private u:Ljava/lang/String;

.field private v:J

.field private w:Ljava/lang/ref/SoftReference;

.field private final x:Ljava/util/List;

.field private y:Lcom/google/googlenav/at;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v1, 0x0

    new-instance v0, Lcom/google/googlenav/as;

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/as;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lam/b;)V

    sput-object v0, Lcom/google/googlenav/ah;->b:Lcom/google/googlenav/as;

    new-array v0, v1, [Lcom/google/googlenav/an;

    sput-object v0, Lcom/google/googlenav/ah;->c:[Lcom/google/googlenav/an;

    new-array v0, v1, [Lcom/google/googlenav/ao;

    sput-object v0, Lcom/google/googlenav/ah;->d:[Lcom/google/googlenav/ao;

    new-instance v0, Lcom/google/googlenav/ai;

    invoke-direct {v0}, Lcom/google/googlenav/ai;-><init>()V

    sput-object v0, Lcom/google/googlenav/ah;->a:Lcom/google/common/base/o;

    return-void
.end method

.method protected constructor <init>(LaJ/g;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/googlenav/ah;-><init>(LaJ/g;Ljava/lang/String;ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(LaJ/g;Ljava/lang/String;B)V
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ah;-><init>(LaJ/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    return-void
.end method

.method protected constructor <init>(LaJ/g;Ljava/lang/String;ILjava/util/List;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ah;->i:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/googlenav/ah;->l:Z

    iput-object v1, p0, Lcom/google/googlenav/ah;->m:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ah;->o:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ah;->s:Ljava/util/Vector;

    iput-object v1, p0, Lcom/google/googlenav/ah;->t:Lcom/google/googlenav/ab;

    iput-object v1, p0, Lcom/google/googlenav/ah;->u:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ah;->x:Ljava/util/List;

    sget-object v0, Lcom/google/googlenav/at;->c:Lcom/google/googlenav/at;

    iput-object v0, p0, Lcom/google/googlenav/ah;->y:Lcom/google/googlenav/at;

    iput-boolean v2, p0, Lcom/google/googlenav/ah;->z:Z

    iput-boolean v2, p0, Lcom/google/googlenav/ah;->A:Z

    iput-object v1, p0, Lcom/google/googlenav/ah;->E:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/googlenav/ah;->F:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/googlenav/ah;->G:Lbe/c;

    iput-object v1, p0, Lcom/google/googlenav/ah;->H:Lcom/google/googlenav/cd;

    iput-object v1, p0, Lcom/google/googlenav/ah;->I:Lcom/google/googlenav/cd;

    invoke-static {p4}, Lt/y;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ah;->f:Ljava/util/List;

    iput-object p1, p0, Lcom/google/googlenav/ah;->g:LaJ/g;

    iput-object p2, p0, Lcom/google/googlenav/ah;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    iput-byte v2, p0, Lcom/google/googlenav/ah;->j:B

    iput p3, p0, Lcom/google/googlenav/ah;->k:I

    return-void
.end method

.method public constructor <init>(LaJ/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .registers 19

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v11}, Lcom/google/googlenav/ah;-><init>(LaJ/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(LaJ/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ah;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ah;->l:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ah;->m:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ah;->o:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ah;->s:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ah;->t:Lcom/google/googlenav/ab;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ah;->u:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ah;->x:Ljava/util/List;

    sget-object v0, Lcom/google/googlenav/at;->c:Lcom/google/googlenav/at;

    iput-object v0, p0, Lcom/google/googlenav/ah;->y:Lcom/google/googlenav/at;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ah;->z:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ah;->A:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ah;->E:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ah;->F:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ah;->G:Lbe/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ah;->H:Lcom/google/googlenav/cd;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ah;->I:Lcom/google/googlenav/cd;

    new-instance v0, Lam/b;

    sget-object v1, LbD/eL;->u:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iput-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-direct {p0, p2}, Lcom/google/googlenav/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ah;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/ah;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ah;->c(LaJ/g;)V

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/4 v1, 0x4

    invoke-direct {p0, p3}, Lcom/google/googlenav/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/4 v1, 0x4

    invoke-direct {p0, p4}, Lcom/google/googlenav/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0xb

    invoke-direct {p0, p5}, Lcom/google/googlenav/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    iput-byte p6, p0, Lcom/google/googlenav/ah;->j:B

    invoke-static {p7}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90

    new-instance v0, Lam/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p7}, Lam/b;->b(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v0}, Lam/b;->a(ILam/b;)V

    :cond_90
    invoke-static {p8}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9d

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p8}, Lam/b;->b(ILjava/lang/String;)V

    :cond_9d
    invoke-static {p9}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_aa

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p9}, Lam/b;->b(ILjava/lang/String;)V

    :cond_aa
    packed-switch p6, :pswitch_data_10a

    :pswitch_ad
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ah;->k:I

    :goto_b0
    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlenav/ah;->k:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    iget-object v1, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v2, 0x16

    if-eqz p6, :cond_108

    const/4 v0, 0x1

    :goto_bf
    invoke-virtual {v1, v2, v0}, Lam/b;->b(IZ)V

    const-wide/16 v0, -0x1

    cmp-long v0, p10, v0

    if-eqz v0, :cond_cf

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, p10, p11}, Lam/b;->a(IJ)V

    :cond_cf
    new-instance v0, Lcom/google/googlenav/av;

    invoke-direct {v0}, Lcom/google/googlenav/av;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ah;->B:Lcom/google/googlenav/av;

    new-instance v0, Lcom/google/googlenav/av;

    invoke-direct {v0}, Lcom/google/googlenav/av;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ah;->C:Lcom/google/googlenav/av;

    invoke-static {}, LK/bn;->f()LK/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ah;->f:Ljava/util/List;

    return-void

    :pswitch_e4
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ah;->k:I

    goto :goto_b0

    :pswitch_e8
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ah;->k:I

    goto :goto_b0

    :pswitch_ec
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ah;->k:I

    goto :goto_b0

    :pswitch_f0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ah;->k:I

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x7b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lam/b;->b(IZ)V

    goto :goto_b0

    :pswitch_fc
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/googlenav/ah;->k:I

    goto :goto_b0

    :pswitch_100
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlenav/ah;->k:I

    goto :goto_b0

    :pswitch_104
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/googlenav/ah;->k:I

    goto :goto_b0

    :cond_108
    const/4 v0, 0x0

    goto :goto_bf

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_ec
        :pswitch_fc
        :pswitch_ad
        :pswitch_ad
        :pswitch_ad
        :pswitch_ad
        :pswitch_ad
        :pswitch_ad
        :pswitch_ad
        :pswitch_e8
        :pswitch_100
        :pswitch_e4
        :pswitch_ad
        :pswitch_104
        :pswitch_f0
    .end packed-switch
.end method

.method public constructor <init>(Lam/b;)V
    .registers 8

    const/16 v5, 0xe

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ah;->i:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/googlenav/ah;->l:Z

    iput-object v1, p0, Lcom/google/googlenav/ah;->m:Ljava/util/Map;

    iput-boolean v3, p0, Lcom/google/googlenav/ah;->o:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ah;->s:Ljava/util/Vector;

    iput-object v1, p0, Lcom/google/googlenav/ah;->t:Lcom/google/googlenav/ab;

    iput-object v1, p0, Lcom/google/googlenav/ah;->u:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ah;->x:Ljava/util/List;

    sget-object v0, Lcom/google/googlenav/at;->c:Lcom/google/googlenav/at;

    iput-object v0, p0, Lcom/google/googlenav/ah;->y:Lcom/google/googlenav/at;

    iput-boolean v2, p0, Lcom/google/googlenav/ah;->z:Z

    iput-boolean v2, p0, Lcom/google/googlenav/ah;->A:Z

    iput-object v1, p0, Lcom/google/googlenav/ah;->E:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/googlenav/ah;->F:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/googlenav/ah;->G:Lbe/c;

    iput-object v1, p0, Lcom/google/googlenav/ah;->H:Lcom/google/googlenav/cd;

    iput-object v1, p0, Lcom/google/googlenav/ah;->I:Lcom/google/googlenav/cd;

    iput-object p1, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ah;->v:J

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ah;->b(Lam/b;)LaJ/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ah;->g:LaJ/g;

    invoke-static {p1, v4}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ah;->i:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ah;->k:I

    const/16 v0, 0x90

    invoke-static {p1, v0}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ah;->q:Ljava/lang/String;

    const/16 v0, 0x8d

    invoke-static {p1, v0}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->c(Lam/b;)V

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lam/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_a5

    iput-byte v2, p0, Lcom/google/googlenav/ah;->j:B

    :goto_79
    iget-byte v0, p0, Lcom/google/googlenav/ah;->j:B

    if-eq v0, v5, :cond_80

    invoke-direct {p0}, Lcom/google/googlenav/ah;->i()V

    :cond_80
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bt()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ah;->r:I

    new-instance v0, Lcom/google/googlenav/av;

    invoke-direct {v0}, Lcom/google/googlenav/av;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ah;->B:Lcom/google/googlenav/av;

    new-instance v0, Lcom/google/googlenav/av;

    invoke-direct {v0}, Lcom/google/googlenav/av;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ah;->C:Lcom/google/googlenav/av;

    const/16 v0, 0xa9

    invoke-static {p1, v0}, Lam/g;->d(Lam/b;I)[Lam/b;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lt/y;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ah;->f:Ljava/util/List;

    return-void

    :cond_a5
    iget v0, p0, Lcom/google/googlenav/ah;->k:I

    packed-switch v0, :pswitch_data_d0

    iput-byte v3, p0, Lcom/google/googlenav/ah;->j:B

    goto :goto_79

    :pswitch_ad
    const/16 v0, 0xc

    iput-byte v0, p0, Lcom/google/googlenav/ah;->j:B

    goto :goto_79

    :pswitch_b2
    const/16 v0, 0xa

    iput-byte v0, p0, Lcom/google/googlenav/ah;->j:B

    goto :goto_79

    :pswitch_b7
    invoke-static {p1}, Lcom/google/googlenav/ah;->f(Lam/b;)Z

    move-result v0

    if-eqz v0, :cond_c2

    const/16 v0, 0xf

    iput-byte v0, p0, Lcom/google/googlenav/ah;->j:B

    goto :goto_79

    :cond_c2
    iput-byte v3, p0, Lcom/google/googlenav/ah;->j:B

    goto :goto_79

    :pswitch_c5
    iput-byte v4, p0, Lcom/google/googlenav/ah;->j:B

    goto :goto_79

    :pswitch_c8
    const/16 v0, 0xb

    iput-byte v0, p0, Lcom/google/googlenav/ah;->j:B

    goto :goto_79

    :pswitch_cd
    iput-byte v5, p0, Lcom/google/googlenav/ah;->j:B

    goto :goto_79

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_b7
        :pswitch_b2
        :pswitch_c8
        :pswitch_ad
        :pswitch_c5
        :pswitch_c8
        :pswitch_cd
    .end packed-switch
.end method

.method private a(I)Lam/b;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ah;->h(I)Lcom/google/googlenav/as;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0}, Lcom/google/googlenav/as;->a()Lam/b;

    move-result-object v0

    goto :goto_7
.end method

.method public static a(LaJ/g;)Lam/b;
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lam/b;

    sget-object v1, LbD/cO;->d:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    :try_start_b
    invoke-interface {p0}, LaJ/g;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_5c

    goto :goto_3

    :pswitch_13
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    check-cast p0, LaJ/B;

    invoke-static {p0}, LaJ/C;->b(LaJ/B;)Lam/b;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lam/b;->b(ILam/b;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_22} :catch_23

    goto :goto_3

    :catch_23
    move-exception v1

    const-string v2, "PROTO"

    invoke-static {v2, v1}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :pswitch_2a
    const/4 v1, 0x1

    const/4 v2, 0x4

    :try_start_2c
    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    check-cast p0, LaJ/B;

    invoke-static {p0}, LaJ/C;->a(LaJ/B;)Lam/b;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lam/b;->b(ILam/b;)V

    goto :goto_3

    :pswitch_3b
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    check-cast p0, LaJ/M;

    invoke-virtual {p0}, LaJ/M;->e()Lam/b;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lam/b;->b(ILam/b;)V

    goto :goto_3

    :pswitch_4b
    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    check-cast p0, LaJ/N;

    invoke-virtual {p0}, LaJ/N;->e()Lam/b;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lam/b;->b(ILam/b;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_5a} :catch_23

    goto :goto_3

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_13
        :pswitch_3b
        :pswitch_4b
        :pswitch_2a
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Lam/b;)Lam/b;
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ah;->b(Ljava/lang/String;Lam/b;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    const/4 v1, 0x3

    invoke-virtual {p2, v1, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    goto :goto_8
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lam/b;
    .registers 4

    new-instance v0, Lam/b;

    sget-object v1, LbD/eG;->d:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lam/b;->b(ILjava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lam/b;->b(ILjava/lang/String;)V

    return-object v0
.end method

.method public static a(Lam/b;)Lcom/google/googlenav/ah;
    .registers 2

    new-instance v0, Lcom/google/googlenav/ah;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ah;-><init>(Lam/b;)V

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;)Lcom/google/googlenav/ah;
    .registers 3

    new-instance v0, Lam/b;

    sget-object v1, LbD/eL;->u:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {v0, p0, v1}, Lam/b;->a(Ljava/io/InputStream;I)I

    invoke-static {v0}, Lcom/google/googlenav/ah;->a(Lam/b;)Lcom/google/googlenav/ah;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    return-object p1
.end method

.method public static a(Lcom/google/googlenav/as;)[Lcom/google/googlenav/au;
    .registers 12

    const/4 v0, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x1

    if-nez p0, :cond_6

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/googlenav/as;->a()Lam/b;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v9}, Lam/b;->l(I)I

    move-result v2

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v0, 0x0

    :goto_15
    if-ge v0, v2, :cond_3e

    invoke-virtual {v1, v9, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lam/b;->h(I)Lam/b;

    move-result-object v5

    invoke-static {v4, v10}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v9}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v10, v9}, Lam/g;->b(Lam/b;II)Ljava/lang/String;

    move-result-object v5

    if-eqz v7, :cond_3b

    new-instance v8, Lcom/google/googlenav/au;

    invoke-direct {v8, v7, v4, v6, v5}, Lcom/google/googlenav/au;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_3e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/au;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/au;

    goto :goto_5
.end method

.method private b(I)I
    .registers 3

    if-lez p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    if-gez p1, :cond_8

    const/4 v0, -0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private b(Ljava/lang/String;Lam/b;)I
    .registers 7

    const/4 v1, -0x1

    const/4 v3, 0x3

    if-eqz p2, :cond_a

    invoke-virtual {p2, v3}, Lam/b;->l(I)I

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    move v0, v1

    :cond_b
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p2, v3}, Lam/b;->l(I)I

    move-result v2

    if-ge v0, v2, :cond_26

    invoke-virtual {p2, v3, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/aj;->a(Lam/b;)Lcom/google/googlenav/aj;

    move-result-object v2

    iget-object v2, v2, Lcom/google/googlenav/aj;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_26
    move v0, v1

    goto :goto_b
.end method

.method public static b(Lam/b;)LaJ/g;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    const/4 v1, 0x1

    :try_start_5
    invoke-virtual {p0, v1}, Lam/b;->d(I)I

    move-result v1

    packed-switch v1, :pswitch_data_50

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unsupported Geometry"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_14

    :catch_14
    move-exception v1

    const-string v2, "PROTO"

    invoke-static {v2, v1}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :pswitch_1b
    const/4 v1, 0x2

    :try_start_1c
    invoke-virtual {p0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-static {v1}, LaJ/C;->a(Lam/b;)LaJ/B;

    move-result-object v0

    goto :goto_3

    :pswitch_25
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-static {v1}, LaJ/C;->b(Lam/b;)LaJ/B;

    move-result-object v0

    goto :goto_3

    :pswitch_30
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-static {v1}, LaJ/M;->a(Lam/b;)LaJ/M;

    move-result-object v0

    goto :goto_3

    :pswitch_3a
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-static {v1}, LaJ/N;->b(Lam/b;)LaJ/N;

    move-result-object v0

    goto :goto_3

    :pswitch_44
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-static {v1}, LaJ/C;->e(Lam/b;)LaJ/B;
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_4d} :catch_14

    move-result-object v0

    goto :goto_3

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_30
        :pswitch_3a
        :pswitch_44
        :pswitch_25
    .end packed-switch
.end method

.method protected static f(Lam/b;)Z
    .registers 2

    const/16 v0, 0x7b

    invoke-static {p0, v0}, Lam/g;->h(Lam/b;I)Z

    move-result v0

    return v0
.end method

.method private i()V
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->ar()[B

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->o()Lah/h;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lah/h;->a([BII)Lah/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->al()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {v0}, Lcom/google/googlenav/e;->b(Lah/f;)Lcom/google/googlenav/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ah;->n:Lcom/google/googlenav/e;

    :cond_20
    :goto_20
    return-void

    :cond_21
    invoke-static {v0}, Lcom/google/googlenav/e;->c(Lah/f;)Lcom/google/googlenav/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ah;->n:Lcom/google/googlenav/e;

    goto :goto_20
.end method

.method private j()[Lcom/google/googlenav/an;
    .registers 12

    const/4 v10, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v3, 0x97

    invoke-static {v0, v3}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v5

    if-nez v5, :cond_11

    sget-object v0, Lcom/google/googlenav/ah;->c:[Lcom/google/googlenav/an;

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {v5, v9}, Lam/b;->l(I)I

    move-result v6

    new-array v3, v6, [Lcom/google/googlenav/an;

    move v4, v2

    :goto_18
    if-ge v4, v6, :cond_3c

    invoke-virtual {v5, v9, v4}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    invoke-virtual {v0, v9}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3e

    const-string v8, "http://www.google.com/streetview"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v1

    :goto_31
    new-instance v8, Lcom/google/googlenav/an;

    invoke-direct {v8, v7, v0, v10, v10}, Lcom/google/googlenav/an;-><init>(Ljava/lang/String;I[BLcom/google/googlenav/ai;)V

    aput-object v8, v3, v4

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_18

    :cond_3c
    move-object v0, v3

    goto :goto_10

    :cond_3e
    move v0, v2

    goto :goto_31
.end method

.method private k()Lcom/google/googlenav/an;
    .registers 6

    invoke-direct {p0}, Lcom/google/googlenav/ah;->j()[Lcom/google/googlenav/an;

    move-result-object v2

    const/4 v0, 0x0

    :goto_5
    array-length v1, v2

    if-ge v0, v1, :cond_1c

    aget-object v1, v2, v0

    invoke-virtual {v1}, Lcom/google/googlenav/an;->b()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_14

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_14
    invoke-virtual {v1}, Lcom/google/googlenav/an;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    move-object v0, v1

    :goto_1b
    return-object v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static k(I)Ljava/lang/String;
    .registers 4

    if-gtz p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_b
    const/4 v2, 0x5

    if-ge v0, v2, :cond_30

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x2ee

    if-lt p0, v2, :cond_20

    sget-char v2, Lcom/google/googlenav/ui/bw;->m:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1b
    add-int/lit16 p0, p0, -0x3e8

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_20
    const/16 v2, 0xfa

    if-lt p0, v2, :cond_2a

    sget-char v2, Lcom/google/googlenav/ui/bw;->n:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1b

    :cond_2a
    sget-char v2, Lcom/google/googlenav/ui/bw;->o:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1b

    :cond_30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static k(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, ".google."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_1b

    const-string v0, "/gmf/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private l()Lam/b;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x46

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    const/16 v1, 0xa8

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    return-object v0
.end method

.method private m()Lam/b;
    .registers 5

    const/16 v3, 0x5e

    const/16 v2, 0x5a

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-virtual {v1, v2}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-virtual {v1, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    :goto_17
    if-eqz v1, :cond_23

    invoke-virtual {v1, v3}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1, v3}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    :cond_23
    return-object v0

    :cond_24
    move-object v1, v0

    goto :goto_17
.end method

.method private n()Lam/b;
    .registers 4

    const/4 v0, 0x0

    const/16 v2, 0x5a

    iget-object v1, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    iget-object v1, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-virtual {v1, v2}, Lam/b;->k(I)Z

    move-result v1

    if-nez v1, :cond_1a

    new-instance v1, Lam/b;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-virtual {v0, v2, v1}, Lam/b;->b(ILam/b;)V

    :cond_1a
    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-virtual {v0, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    goto :goto_7
.end method

.method private o()Lam/b;
    .registers 5

    const/4 v0, 0x0

    const/16 v3, 0x5e

    invoke-direct {p0}, Lcom/google/googlenav/ah;->n()Lam/b;

    move-result-object v1

    if-nez v1, :cond_a

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {v1, v3}, Lam/b;->k(I)Z

    move-result v2

    if-nez v2, :cond_18

    new-instance v2, Lam/b;

    invoke-direct {v2, v0}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v1, v3, v2}, Lam/b;->b(ILam/b;)V

    :cond_18
    invoke-virtual {v1, v3}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    goto :goto_9
.end method

.method private p()V
    .registers 8

    const/4 v6, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bx()Lam/b;

    move-result-object v2

    invoke-virtual {v2, v6}, Lam/b;->l(I)I

    move-result v3

    move v0, v1

    :goto_b
    if-ge v0, v3, :cond_18

    invoke-virtual {v2, v6, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v1}, Lam/b;->h(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_18
    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ah;->q:Ljava/lang/String;

    return-object v0
.end method

.method public B()Lam/b;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    return-object v0
.end method

.method public C()LaJ/g;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ah;->g:LaJ/g;

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/d;->a(IILam/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/d;->a(IILam/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-static {v0, v1}, Lcom/google/googlenav/d;->a(ILam/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x97

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->H()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aR()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public K()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v2, 0x76

    invoke-static {v1, v2}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v1

    invoke-static {v1, v0}, Lam/g;->e(Lam/b;I)I

    move-result v1

    if-lez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public L()Lcom/google/googlenav/ao;
    .registers 4

    const/4 v1, 0x0

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->h(I)Lcom/google/googlenav/as;

    move-result-object v0

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return-object v1

    :cond_a
    invoke-virtual {v0}, Lcom/google/googlenav/as;->a()Lam/b;

    move-result-object v0

    if-eqz v0, :cond_9

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ao;->a(Lam/b;)Lcom/google/googlenav/ao;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/google/googlenav/ao;->a()[Lcom/google/googlenav/am;

    move-result-object v2

    if-eqz v2, :cond_2a

    invoke-virtual {v0}, Lcom/google/googlenav/ao;->a()[Lcom/google/googlenav/am;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_2a

    :goto_28
    move-object v1, v0

    goto :goto_9

    :cond_2a
    move-object v0, v1

    goto :goto_28
.end method

.method public M()I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->L()Lcom/google/googlenav/ao;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/google/googlenav/ao;->e()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :cond_e
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x2

    goto :goto_e
.end method

.method public N()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ah;->h(I)Lcom/google/googlenav/as;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {v1}, Lcom/google/googlenav/as;->a()Lam/b;

    move-result-object v1

    if-eqz v1, :cond_9

    const/4 v0, 0x3

    invoke-static {v1, v0}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public O()[Lcom/google/googlenav/au;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ah;->D:[Lcom/google/googlenav/au;

    if-nez v0, :cond_10

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->h(I)Lcom/google/googlenav/as;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ah;->a(Lcom/google/googlenav/as;)[Lcom/google/googlenav/au;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ah;->D:[Lcom/google/googlenav/au;

    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/ah;->D:[Lcom/google/googlenav/au;

    return-object v0
.end method

.method public P()Ljava/lang/String;
    .registers 4

    const/16 v0, 0x377

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->h(I)Lcom/google/googlenav/as;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-object v1

    :cond_f
    invoke-virtual {v0}, Lcom/google/googlenav/as;->a()Lam/b;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    :goto_21
    move-object v1, v0

    goto :goto_e

    :cond_23
    move-object v0, v1

    goto :goto_21
.end method

.method public Q()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ah;->h(I)Lcom/google/googlenav/as;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {v1}, Lcom/google/googlenav/as;->a()Lam/b;

    move-result-object v1

    if-eqz v1, :cond_9

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public R()Z
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->g(I)[Lcom/google/googlenav/ao;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_10

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->g(I)[Lcom/google/googlenav/ao;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public S()Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->g(I)[Lcom/google/googlenav/ao;

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_10

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ah;->g(I)[Lcom/google/googlenav/ao;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public T()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->g(I)[Lcom/google/googlenav/ao;

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_16

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ah;->g(I)[Lcom/google/googlenav/ao;

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_16

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->U()Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public U()Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x24

    invoke-direct {p0, v1}, Lcom/google/googlenav/ah;->a(I)Lam/b;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1, v0}, Lam/b;->l(I)I

    move-result v1

    if-lez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public V()Ljava/util/Vector;
    .registers 8

    const/4 v6, 0x1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/16 v1, 0x24

    invoke-direct {p0, v1}, Lcom/google/googlenav/ah;->a(I)Lam/b;

    move-result-object v2

    if-nez v2, :cond_f

    :cond_e
    return-object v0

    :cond_f
    invoke-virtual {v2, v6}, Lam/b;->l(I)I

    move-result v3

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v3, :cond_e

    invoke-virtual {v2, v6, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    new-instance v5, Lcom/google/googlenav/ak;

    invoke-direct {v5, v4}, Lcom/google/googlenav/ak;-><init>(Lam/b;)V

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method

.method public W()Ljava/util/Vector;
    .registers 7

    const/4 v5, 0x1

    const/16 v0, 0x33

    invoke-direct {p0, v0}, Lcom/google/googlenav/ah;->a(I)Lam/b;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v0, 0x0

    :cond_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v2, v5}, Lam/b;->l(I)I

    move-result v3

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v3, :cond_a

    invoke-virtual {v2, v5, v1}, Lam/b;->f(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_15
.end method

.method public X()I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x76

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lam/g;->e(Lam/b;I)I

    move-result v0

    return v0
.end method

.method public Y()Ljava/util/List;
    .registers 7

    const/4 v5, 0x1

    const/16 v0, 0x31

    invoke-direct {p0, v0}, Lcom/google/googlenav/ah;->a(I)Lam/b;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v0, 0x0

    :cond_a
    return-object v0

    :cond_b
    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v5}, Lam/b;->l(I)I

    move-result v3

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v3, :cond_a

    invoke-virtual {v2, v5, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method

.method public Z()J
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x77

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lam/g;->a(Lam/b;IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()LaJ/B;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->C()LaJ/g;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-interface {v0}, LaJ/g;->b()LaJ/B;

    move-result-object v0

    goto :goto_7
.end method

.method public a(B)V
    .registers 2

    iput-byte p1, p0, Lcom/google/googlenav/ah;->j:B

    return-void
.end method

.method public a(Lcom/google/googlenav/at;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ah;->y:Lcom/google/googlenav/at;

    return-void
.end method

.method public a(Lcom/google/googlenav/cd;)V
    .registers 7

    const/4 v1, 0x0

    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bx()Lam/b;

    move-result-object v2

    invoke-virtual {v2, v4}, Lam/b;->l(I)I

    move-result v3

    move v0, v1

    :goto_c
    if-ge v0, v3, :cond_14

    invoke-virtual {v2, v4, v1}, Lam/b;->g(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_14
    iget-object v0, p1, Lcom/google/googlenav/cd;->b:LK/bn;

    invoke-virtual {v0}, LK/bn;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ce;

    iget-object v3, v0, Lcom/google/googlenav/ce;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/googlenav/ce;->c:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/google/googlenav/ah;->a(Ljava/lang/String;Ljava/lang/String;)Lam/b;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lam/b;->a(ILam/b;)V

    goto :goto_1a

    :cond_32
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ah;->g(Lam/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 8

    const/4 v4, 0x3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bx()Lam/b;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/googlenav/ah;->a(Ljava/lang/String;Lam/b;)Lam/b;

    move-result-object v0

    if-nez v0, :cond_25

    new-instance v0, Lam/b;

    sget-object v2, LbD/eG;->c:Lam/e;

    invoke-direct {v0, v2}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v0, v4, p1}, Lam/b;->b(ILjava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Lam/b;->b(ILjava/lang/String;)V

    invoke-virtual {v0, v3, v3}, Lam/b;->h(II)V

    invoke-virtual {v1, v4, v0}, Lam/b;->a(ILam/b;)V

    iget-object v1, p0, Lcom/google/googlenav/ah;->s:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_25
    if-eqz v0, :cond_2f

    const/4 v1, 0x4

    invoke-direct {p0, p2}, Lcom/google/googlenav/ah;->b(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    :cond_2f
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 6

    const/16 v3, 0xa9

    if-nez p1, :cond_8

    invoke-static {}, LK/bn;->f()LK/bn;

    move-result-object p1

    :cond_8
    iput-object p1, p0, Lcom/google/googlenav/ah;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lam/b;->b(ILam/b;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/y;

    iget-object v2, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-virtual {v0}, Lt/y;->c()Lam/b;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lam/b;->a(ILam/b;)V

    goto :goto_18

    :cond_2e
    return-void
.end method

.method public a(Lt/y;)V
    .registers 3

    if-nez p1, :cond_a

    invoke-static {}, LK/bn;->f()LK/bn;

    move-result-object v0

    :goto_6
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->a(Ljava/util/List;)V

    return-void

    :cond_a
    invoke-static {p1}, LK/bn;->a(Ljava/lang/Object;)LK/bn;

    move-result-object v0

    goto :goto_6
.end method

.method public a([Lcom/google/googlenav/ah;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ah;->p:[Lcom/google/googlenav/ah;

    return-void
.end method

.method public aA()[Lcom/google/googlenav/an;
    .registers 6

    const/16 v4, 0x64

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    if-nez v0, :cond_9

    sget-object v0, Lcom/google/googlenav/ah;->c:[Lcom/google/googlenav/an;

    :cond_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-virtual {v0, v4}, Lam/b;->l(I)I

    move-result v2

    new-array v0, v2, [Lcom/google/googlenav/an;

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v2, :cond_8

    iget-object v3, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-virtual {v3, v4, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/an;->a(Lam/b;)Lcom/google/googlenav/an;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12
.end method

.method public aB()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x46

    const/16 v2, 0x47

    invoke-static {v0, v1, v2}, Lam/g;->b(Lam/b;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aC()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x46

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    if-eqz v0, :cond_11

    const/16 v1, 0x8c

    invoke-static {v0, v1}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public aD()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x46

    const/16 v2, 0x48

    invoke-static {v0, v1, v2}, Lam/g;->b(Lam/b;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aE()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x46

    const/16 v2, 0x49

    invoke-static {v0, v1, v2}, Lam/g;->b(Lam/b;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aF()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x46

    const/16 v2, 0x73

    invoke-static {v0, v1, v2}, Lam/g;->b(Lam/b;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aG()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x46

    const/16 v2, 0x74

    invoke-static {v0, v1, v2}, Lam/g;->b(Lam/b;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aH()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aK()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public aI()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ah;->l()Lam/b;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public aJ()Lab/e;
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aI()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-direct {p0}, Lcom/google/googlenav/ah;->l()Lam/b;

    move-result-object v1

    new-instance v0, Lab/e;

    invoke-direct {v0, v1}, Lab/e;-><init>(Lam/b;)V

    goto :goto_7
.end method

.method public aK()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x46

    const/16 v2, 0xa7

    invoke-static {v0, v1, v2}, Lam/g;->b(Lam/b;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_11

    const/4 v0, 0x0

    :cond_11
    return-object v0
.end method

.method public aL()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x46

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-static {v0, v1}, Lam/g;->h(Lam/b;I)Z

    move-result v0

    return v0
.end method

.method public aM()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x46

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    const/16 v1, 0xa5

    invoke-static {v0, v1}, Lam/g;->h(Lam/b;I)Z

    move-result v0

    return v0
.end method

.method public aN()Ljava/lang/String;
    .registers 7

    const/16 v5, 0x5b

    const/16 v1, 0x5a

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Lam/b;->l(I)I

    move-result v3

    if-lez v3, :cond_37

    const/4 v0, 0x0

    :goto_22
    if-ge v0, v3, :cond_37

    invoke-virtual {v1, v5, v0}, Lam/b;->f(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, -0x1

    if-eq v0, v4, :cond_34

    const-string v4, " > "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3b
    return-object v0

    :cond_3c
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method public aO()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x5a

    const/16 v2, 0x5c

    invoke-static {v0, v1, v2}, Lam/g;->b(Lam/b;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aP()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x5a

    const/16 v2, 0x5d

    invoke-static {v0, v1, v2}, Lam/g;->b(Lam/b;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aQ()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x5a

    const/16 v2, 0x5f

    invoke-static {v0, v1, v2}, Lam/g;->b(Lam/b;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aR()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/google/googlenav/ah;->m()Lam/b;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aS()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/google/googlenav/ah;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-static {v1}, Las/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    invoke-static {v0}, Las/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method public aT()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/google/googlenav/ah;->m()Lam/b;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aU()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/google/googlenav/ah;->m()Lam/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aV()I
    .registers 3

    invoke-direct {p0}, Lcom/google/googlenav/ah;->m()Lam/b;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lam/g;->e(Lam/b;I)I

    move-result v0

    return v0
.end method

.method public aW()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aX()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aT()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->az()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public aX()Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aT()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {v0}, Las/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".youtube."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public aY()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aZ()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public aZ()I
    .registers 3

    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->h(I)Lcom/google/googlenav/as;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    invoke-virtual {v0}, Lcom/google/googlenav/as;->a()Lam/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lam/b;->l(I)I

    move-result v0

    goto :goto_9
.end method

.method public aa()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->Z()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/googlenav/ax;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ab()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x94

    invoke-static {v0, v1}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ac()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlenav/ah;->k:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public ad()Z
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ah;->k:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public ae()Z
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ah;->k:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public af()Z
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ah;->k:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public ag()Z
    .registers 3

    iget-byte v0, p0, Lcom/google/googlenav/ah;->j:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public ah()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ah;->l:Z

    return-void
.end method

.method public ai()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ah;->l:Z

    return v0
.end method

.method public aj()Z
    .registers 4

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/google/googlenav/ah;->j:B

    if-eq v1, v0, :cond_11

    iget-byte v1, p0, Lcom/google/googlenav/ah;->j:B

    const/16 v2, 0xc

    if-eq v1, v2, :cond_11

    iget-byte v1, p0, Lcom/google/googlenav/ah;->j:B

    const/16 v2, 0xf

    if-ne v1, v2, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public ak()Z
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ah;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public al()Z
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ah;->k:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public am()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->al()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->ak()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public an()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ah;->i:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/ah;->i:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->am()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bg()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_16
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_27
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->E()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public ao()[Lam/b;
    .registers 6

    const/16 v4, 0x9d

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-virtual {v0, v4}, Lam/b;->l(I)I

    move-result v1

    new-array v2, v1, [Lam/b;

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_18

    iget-object v3, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-virtual {v3, v4, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_18
    return-object v2
.end method

.method public ap()I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ah;->n:Lcom/google/googlenav/e;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/ah;->n:Lcom/google/googlenav/e;

    invoke-virtual {v0}, Lcom/google/googlenav/e;->f()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/googlenav/ah;->j:B

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->c(B)I

    move-result v0

    goto :goto_a
.end method

.method public aq()I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ah;->n:Lcom/google/googlenav/e;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/ah;->n:Lcom/google/googlenav/e;

    invoke-virtual {v0}, Lcom/google/googlenav/e;->e()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/googlenav/ah;->j:B

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->d(B)I

    move-result v0

    goto :goto_a
.end method

.method public ar()[B
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aA()[Lcom/google/googlenav/an;

    move-result-object v1

    const/4 v0, 0x0

    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_23

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/google/googlenav/an;->b()I

    move-result v2

    if-eqz v2, :cond_19

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/google/googlenav/an;->b()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    :cond_19
    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/google/googlenav/an;->c()[B

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_23
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public as()Lcom/google/googlenav/av;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ah;->B:Lcom/google/googlenav/av;

    return-object v0
.end method

.method public at()Lcom/google/googlenav/av;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ah;->C:Lcom/google/googlenav/av;

    return-object v0
.end method

.method public au()Lam/b;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x97

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    return-object v0
.end method

.method public av()Lcom/google/googlenav/bN;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->au()Lam/b;

    move-result-object v1

    if-nez v1, :cond_b

    move-object v1, v0

    :goto_8
    if-nez v1, :cond_11

    :goto_a
    return-object v0

    :cond_b
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    goto :goto_8

    :cond_11
    new-instance v0, Lcom/google/googlenav/bN;

    invoke-direct {v0, v1}, Lcom/google/googlenav/bN;-><init>(Lam/b;)V

    goto :goto_a
.end method

.method public aw()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ah;->E:Ljava/lang/Boolean;

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->ax()Lcom/google/googlenav/an;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-static {v0}, Lcom/google/googlenav/an;->a(Lcom/google/googlenav/an;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    const/4 v0, 0x1

    :goto_12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ah;->E:Ljava/lang/Boolean;

    :cond_18
    iget-object v0, p0, Lcom/google/googlenav/ah;->E:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public ax()Lcom/google/googlenav/an;
    .registers 5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->h(I)Lcom/google/googlenav/as;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/google/googlenav/as;->a()Lam/b;

    move-result-object v0

    invoke-static {v0, v3}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1, v3}, Lam/g;->b(Lam/b;II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_18
    if-eqz v1, :cond_24

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/googlenav/ah;->E:Ljava/lang/Boolean;

    new-instance v0, Lcom/google/googlenav/an;

    invoke-direct {v0, v1, v3, v2, v2}, Lcom/google/googlenav/an;-><init>(Ljava/lang/String;I[BLcom/google/googlenav/ai;)V

    :goto_23
    return-object v0

    :cond_24
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/googlenav/ah;->E:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/google/googlenav/ah;->k()Lcom/google/googlenav/an;

    move-result-object v0

    goto :goto_23

    :cond_2d
    move-object v1, v2

    goto :goto_18
.end method

.method public ay()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ah;->w:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ah;->w:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_5
.end method

.method public az()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x12

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    if-nez v0, :cond_9

    const-string v0, ""

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-virtual {v0, v2}, Lam/b;->l(I)I

    move-result v1

    const-string v0, ""

    if-lez v1, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public b()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ah;->f:Ljava/util/List;

    return-object v0
.end method

.method public b(LaJ/g;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ah;->h:LaJ/g;

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ah;->o:Z

    return-void
.end method

.method public bA()[I
    .registers 9

    const/4 v7, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bx()Lam/b;

    move-result-object v2

    invoke-virtual {v2, v7}, Lam/b;->l(I)I

    move-result v3

    const/4 v0, 0x2

    new-array v4, v0, [I

    move v0, v1

    :goto_e
    if-ge v0, v3, :cond_2e

    invoke-virtual {v2, v7, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lam/g;->e(Lam/b;I)I

    move-result v5

    packed-switch v5, :pswitch_data_30

    :goto_1c
    :pswitch_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :pswitch_1f
    aget v5, v4, v1

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v1

    goto :goto_1c

    :pswitch_26
    const/4 v5, 0x1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    goto :goto_1c

    :cond_2e
    return-object v4

    nop

    :pswitch_data_30
    .packed-switch -0x1
        :pswitch_26
        :pswitch_1c
        :pswitch_1f
    .end packed-switch
.end method

.method public bB()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bD()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public bC()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bt()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public bD()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ah;->r:I

    return v0
.end method

.method public bE()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ah;->r:I

    return-void
.end method

.method public bF()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public bG()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x46

    const/16 v2, 0x9b

    invoke-static {v0, v1, v2}, Lam/g;->b(Lam/b;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bH()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aF()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    const-string v2, "www."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_e

    const/4 v0, 0x4

    :cond_e
    const-string v2, "/"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1e

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    return-object v0

    :cond_1e
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method

.method public bI()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x9f

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bJ()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ah;->x:Ljava/util/List;

    return-object v0
.end method

.method public bK()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ah;->y:Lcom/google/googlenav/at;

    sget-object v1, Lcom/google/googlenav/at;->a:Lcom/google/googlenav/at;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public bL()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ah;->y:Lcom/google/googlenav/at;

    sget-object v1, Lcom/google/googlenav/at;->c:Lcom/google/googlenav/at;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public bM()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ah;->z:Z

    return v0
.end method

.method public bN()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ah;->A:Z

    return v0
.end method

.method public bO()Ljava/lang/String;
    .registers 3

    const/16 v1, 0x8d

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/16 v1, 0x8e

    invoke-virtual {v0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public bP()Ljava/util/List;
    .registers 8

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/16 v1, 0x1c

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ah;->h(I)Lcom/google/googlenav/as;

    move-result-object v1

    if-nez v1, :cond_b

    :cond_a
    return-object v0

    :cond_b
    invoke-virtual {v1}, Lcom/google/googlenav/as;->a()Lam/b;

    move-result-object v2

    if-eqz v2, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v6}, Lam/b;->l(I)I

    move-result v3

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v3, :cond_a

    invoke-virtual {v2, v6, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-static {v4, v6}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b
.end method

.method public bQ()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bV()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public bR()Lcom/google/googlenav/ui/bG;
    .registers 11

    const/4 v9, 0x6

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x3

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/googlenav/ah;->a(I)Lam/b;

    move-result-object v4

    if-nez v4, :cond_d

    :cond_c
    :goto_c
    return-object v1

    :cond_d
    invoke-virtual {v4, v8}, Lam/b;->l(I)I

    move-result v5

    move v2, v3

    :goto_12
    if-ge v2, v5, :cond_c

    invoke-virtual {v4, v8, v2}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    invoke-virtual {v0, v8}, Lam/b;->k(I)Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-virtual {v0, v8}, Lam/b;->d(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3f

    invoke-virtual {v0, v9}, Lam/b;->l(I)I

    move-result v6

    if-lez v6, :cond_3d

    invoke-virtual {v0, v9, v3}, Lam/b;->f(II)Ljava/lang/String;

    move-result-object v0

    :goto_2f
    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3f

    new-instance v1, Lcom/google/googlenav/ui/bG;

    sget v2, Lcom/google/googlenav/ui/bw;->bA:I

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/ui/bG;-><init>(Ljava/lang/String;I)V

    goto :goto_c

    :cond_3d
    move-object v0, v1

    goto :goto_2f

    :cond_3f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_12
.end method

.method public bS()Lcom/google/googlenav/ap;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bQ()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    const/16 v1, 0x1f

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ah;->h(I)Lcom/google/googlenav/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/as;->a()Lam/b;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v0, Lcom/google/googlenav/ap;

    invoke-direct {v0, v1}, Lcom/google/googlenav/ap;-><init>(Lam/b;)V

    goto :goto_7
.end method

.method public bT()Ljava/lang/String;
    .registers 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bQ()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->h(I)Lcom/google/googlenav/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/as;->a()Lam/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public bU()Ljava/util/Vector;
    .registers 7

    const/4 v5, 0x4

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bQ()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->h(I)Lcom/google/googlenav/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/as;->a()Lam/b;

    move-result-object v2

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    :goto_19
    invoke-virtual {v2, v5}, Lam/b;->l(I)I

    move-result v3

    if-ge v0, v3, :cond_2e

    invoke-virtual {v2, v5, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    new-instance v4, Lcom/google/googlenav/ap;

    invoke-direct {v4, v3}, Lcom/google/googlenav/ap;-><init>(Lam/b;)V

    invoke-virtual {v1, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2e
    move-object v0, v1

    goto :goto_8
.end method

.method public bV()Ljava/util/Vector;
    .registers 8

    const/4 v6, 0x2

    const/4 v0, 0x0

    const/16 v1, 0x1f

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ah;->h(I)Lcom/google/googlenav/as;

    move-result-object v1

    if-nez v1, :cond_b

    :cond_a
    return-object v0

    :cond_b
    invoke-virtual {v1}, Lcom/google/googlenav/as;->a()Lam/b;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2, v6}, Lam/b;->l(I)I

    move-result v3

    if-eqz v3, :cond_a

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v3, :cond_a

    invoke-virtual {v2, v6, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    new-instance v5, Lcom/google/googlenav/aq;

    invoke-direct {v5, p0, v4}, Lcom/google/googlenav/aq;-><init>(Lcom/google/googlenav/ah;Lam/b;)V

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d
.end method

.method public bW()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bX()Lbe/c;

    iget-object v0, p0, Lcom/google/googlenav/ah;->G:Lbe/c;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public bX()Lbe/c;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ah;->G:Lbe/c;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/googlenav/ah;->G:Lbe/c;

    :goto_6
    return-object v0

    :cond_7
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lcom/google/googlenav/ah;->a(I)Lam/b;

    move-result-object v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    goto :goto_6

    :cond_11
    invoke-static {v0}, Lbe/c;->a(Lam/b;)Lbe/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ah;->G:Lbe/c;

    iget-object v0, p0, Lcom/google/googlenav/ah;->G:Lbe/c;

    goto :goto_6
.end method

.method public ba()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aZ()I

    move-result v0

    if-lez v0, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->j(I)Lam/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public bb()Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    const/4 v5, 0x4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aZ()I

    move-result v2

    if-gtz v2, :cond_b

    move-object v0, v1

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->j(I)Lam/b;

    move-result-object v3

    :goto_f
    invoke-virtual {v3, v5}, Lam/b;->l(I)I

    move-result v2

    if-ge v0, v2, :cond_24

    invoke-virtual {v3, v5, v0}, Lam/b;->f(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Las/b;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    move-object v0, v2

    goto :goto_a

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_24
    move-object v0, v1

    goto :goto_a
.end method

.method public bc()Lcom/google/googlenav/ab;
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ah;->t:Lcom/google/googlenav/ab;

    if-nez v0, :cond_19

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->h(I)Lcom/google/googlenav/as;

    move-result-object v0

    if-eqz v0, :cond_19

    new-instance v1, Lcom/google/googlenav/ab;

    invoke-virtual {v0}, Lcom/google/googlenav/as;->a()Lam/b;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/googlenav/ah;->v:J

    invoke-direct {v1, v0, v2, v3}, Lcom/google/googlenav/ab;-><init>(Lam/b;J)V

    iput-object v1, p0, Lcom/google/googlenav/ah;->t:Lcom/google/googlenav/ab;

    :cond_19
    iget-object v0, p0, Lcom/google/googlenav/ah;->t:Lcom/google/googlenav/ab;

    return-object v0
.end method

.method public bd()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ah;->u:Ljava/lang/String;

    if-nez v0, :cond_10

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->h(I)Lcom/google/googlenav/as;

    move-result-object v0

    if-nez v0, :cond_13

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ah;->u:Ljava/lang/String;

    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/google/googlenav/ah;->u:Ljava/lang/String;

    return-object v0

    :cond_13
    invoke-virtual {v0}, Lcom/google/googlenav/as;->a()Lam/b;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ah;->u:Ljava/lang/String;

    goto :goto_10
.end method

.method public be()Lcom/google/googlenav/cd;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ah;->H:Lcom/google/googlenav/cd;

    if-nez v0, :cond_16

    const/16 v0, 0x4e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->h(I)Lcom/google/googlenav/as;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/google/googlenav/as;->a()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/cd;->a(Lam/b;)Lcom/google/googlenav/cd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ah;->H:Lcom/google/googlenav/cd;

    :cond_16
    iget-object v0, p0, Lcom/google/googlenav/ah;->H:Lcom/google/googlenav/cd;

    return-object v0
.end method

.method public bf()Lcom/google/googlenav/cd;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ah;->I:Lcom/google/googlenav/cd;

    return-object v0
.end method

.method public bg()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aO()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public bh()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ah;->n:Lcom/google/googlenav/e;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public bi()Lcom/google/googlenav/e;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ah;->n:Lcom/google/googlenav/e;

    return-object v0
.end method

.method public bj()Ljava/lang/String;
    .registers 9

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/googlenav/ah;->a(I)Lam/b;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-virtual {v1, v6}, Lam/b;->l(I)I

    move-result v2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_30

    invoke-virtual {v1, v6, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    invoke-virtual {v3, v6}, Lam/b;->k(I)Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-virtual {v3, v6}, Lam/b;->d(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2d

    invoke-virtual {v3, v7}, Lam/b;->k(I)Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-virtual {v3, v7}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    :goto_2c
    return-object v0

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_30
    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_3d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public bk()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const-string v0, ""

    goto :goto_c
.end method

.method public bl()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-static {v0}, Lcom/google/googlenav/ah;->f(Lam/b;)Z

    move-result v0

    return v0
.end method

.method public bm()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x7e

    invoke-static {v0, v1}, Lam/g;->h(Lam/b;I)Z

    move-result v0

    return v0
.end method

.method public bn()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x95

    invoke-static {v0, v1}, Lam/g;->h(Lam/b;I)Z

    move-result v0

    return v0
.end method

.method public bo()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x98

    invoke-static {v0, v1}, Lam/g;->h(Lam/b;I)Z

    move-result v0

    return v0
.end method

.method public bp()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public bq()Z
    .registers 6

    const/4 v0, 0x0

    iget-byte v1, p0, Lcom/google/googlenav/ah;->j:B

    const/16 v2, 0xa

    if-eq v1, v2, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v2, 0x8d

    const/16 v3, 0x8f

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Lam/g;->a(Lam/b;III)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public br()Ljava/lang/String;
    .registers 7

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ah;->F:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/ah;->F:Ljava/lang/String;

    :goto_7
    return-object v0

    :cond_8
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ah;->F:Ljava/lang/String;

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/google/googlenav/ah;->a(I)Lam/b;

    move-result-object v1

    if-nez v1, :cond_17

    iget-object v0, p0, Lcom/google/googlenav/ah;->F:Ljava/lang/String;

    goto :goto_7

    :cond_17
    invoke-virtual {v1, v5}, Lam/b;->l(I)I

    move-result v2

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v2, :cond_40

    invoke-virtual {v1, v5, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lam/b;->h(I)Lam/b;

    move-result-object v3

    if-eqz v3, :cond_43

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lam/b;->h(I)Lam/b;

    move-result-object v3

    if-eqz v3, :cond_43

    invoke-virtual {v3, v5}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Las/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_43

    invoke-virtual {v3, v5}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ah;->F:Ljava/lang/String;

    :cond_40
    iget-object v0, p0, Lcom/google/googlenav/ah;->F:Ljava/lang/String;

    goto :goto_7

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c
.end method

.method public bs()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->br()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public bt()I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x99

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lam/g;->e(Lam/b;I)I

    move-result v0

    return v0
.end method

.method public bu()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ah;->s:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public bv()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bx()Lam/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bw()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Lam/b;->k(I)Z

    move-result v0

    return v0
.end method

.method public bx()Lam/b;
    .registers 4

    const/16 v2, 0x99

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bw()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-virtual {v0, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Lam/b;

    sget-object v1, LbD/eG;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iget-object v1, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-virtual {v1, v2, v0}, Lam/b;->b(ILam/b;)V

    goto :goto_e
.end method

.method public by()[Lcom/google/googlenav/aj;
    .registers 7

    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bx()Lam/b;

    move-result-object v1

    invoke-virtual {v1, v5}, Lam/b;->l(I)I

    move-result v2

    new-array v3, v2, [Lcom/google/googlenav/aj;

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v2, :cond_1b

    invoke-virtual {v1, v5, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-static {v4}, Lcom/google/googlenav/aj;->a(Lam/b;)Lcom/google/googlenav/aj;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1b
    return-object v3
.end method

.method public bz()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bE()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->l(I)V

    invoke-direct {p0}, Lcom/google/googlenav/ah;->p()V

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bx()Lam/b;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    return-void
.end method

.method public c()B
    .registers 2

    iget-byte v0, p0, Lcom/google/googlenav/ah;->j:B

    return v0
.end method

.method public c(Z)Ljava/lang/String;
    .registers 7

    const/16 v1, 0x76

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->k(I)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_f
    const-string v0, ""

    :goto_11
    return-object v0

    :cond_12
    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-static {v0, v1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {v0, v3}, Lam/b;->d(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ah;->k(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    if-eqz p1, :cond_35

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_35
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->X()I

    move-result v0

    if-lez v0, :cond_51

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_46

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_46
    if-ne v0, v3, :cond_56

    const/16 v0, 0x3ae

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_51
    :goto_51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_56
    const/16 v2, 0x3ad

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_51
.end method

.method public c(LaJ/g;)V
    .registers 5

    iput-object p1, p0, Lcom/google/googlenav/ah;->g:LaJ/g;

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/4 v1, 0x3

    invoke-static {p1}, Lcom/google/googlenav/ah;->a(LaJ/g;)Lam/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    :cond_10
    return-void
.end method

.method c(Lam/b;)V
    .registers 10

    const/16 v7, 0x92

    if-nez p1, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p1, v7}, Lam/b;->l(I)I

    move-result v1

    if-lez v1, :cond_4

    new-array v0, v1, [Lcom/google/googlenav/ah;

    iput-object v0, p0, Lcom/google/googlenav/ah;->p:[Lcom/google/googlenav/ah;

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v7, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ah;

    iget-object v4, p0, Lcom/google/googlenav/ah;->g:LaJ/g;

    const/4 v5, 0x2

    invoke-static {v2, v5}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/google/googlenav/ah;-><init>(LaJ/g;Ljava/lang/String;B)V

    const/16 v4, 0x90

    invoke-static {v2, v4}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/google/googlenav/ah;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/ah;->p:[Lcom/google/googlenav/ah;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public d()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d(Lam/b;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    if-eqz v0, :cond_21

    if-eqz p1, :cond_21

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x9e

    invoke-virtual {v0, v1, p1}, Lam/b;->a(ILam/b;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->ay()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_21

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lam/b;->d(I)I

    move-result v1

    invoke-static {v1}, Lar/n;->a(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ah;->b:Lcom/google/googlenav/as;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/google/googlenav/ah;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/ah;->q:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x90

    iget-object v2, p0, Lcom/google/googlenav/ah;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    :cond_13
    return-void
.end method

.method public d(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ah;->z:Z

    return-void
.end method

.method public e(Lam/b;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p1}, Lam/b;->b(ILam/b;)V

    goto :goto_4
.end method

.method public e(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/4 v1, 0x4

    invoke-direct {p0, p1}, Lcom/google/googlenav/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->a(ILjava/lang/String;)V

    return-void
.end method

.method public e(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ah;->A:Z

    return-void
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ah;->o:Z

    return v0
.end method

.method public f()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method public f(Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ah;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lam/b;->b(ILjava/lang/String;)V

    :cond_c
    return-void
.end method

.method public g()Lar/k;
    .registers 7

    const/4 v1, 0x0

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    if-eqz v0, :cond_19

    new-instance v0, Lar/k;

    const-string v2, "proto"

    iget-object v4, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-virtual {v4}, Lam/b;->e()I

    move-result v4

    invoke-direct {v0, v2, v4}, Lar/k;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    iget-object v0, p0, Lcom/google/googlenav/ah;->n:Lcom/google/googlenav/e;

    if-eqz v0, :cond_2d

    new-instance v0, Lar/k;

    const-string v2, "image"

    iget-object v4, p0, Lcom/google/googlenav/ah;->n:Lcom/google/googlenav/e;

    invoke-virtual {v4}, Lcom/google/googlenav/e;->g()I

    move-result v4

    invoke-direct {v0, v2, v4}, Lar/k;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    iget-object v0, p0, Lcom/google/googlenav/ah;->p:[Lcom/google/googlenav/ah;

    if-eqz v0, :cond_50

    move v0, v1

    move v2, v1

    :goto_33
    iget-object v4, p0, Lcom/google/googlenav/ah;->p:[Lcom/google/googlenav/ah;

    array-length v4, v4

    if-ge v0, v4, :cond_46

    iget-object v4, p0, Lcom/google/googlenav/ah;->p:[Lcom/google/googlenav/ah;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/google/googlenav/ah;->g()Lar/k;

    move-result-object v4

    iget v4, v4, Lar/k;->b:I

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_46
    new-instance v0, Lar/k;

    const-string v4, "rbl results"

    invoke-direct {v0, v4, v2}, Lar/k;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_50
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->ay()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_80

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_5f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/as;

    sget-object v5, Lcom/google/googlenav/ah;->b:Lcom/google/googlenav/as;

    if-eq v0, v5, :cond_a7

    invoke-virtual {v0}, Lcom/google/googlenav/as;->b()I

    move-result v0

    add-int/2addr v0, v2

    :goto_74
    move v2, v0

    goto :goto_5f

    :cond_76
    new-instance v0, Lar/k;

    const-string v4, "place page stories - soft ref"

    invoke-direct {v0, v4, v2}, Lar/k;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_80
    iget-object v0, p0, Lcom/google/googlenav/ah;->q:Ljava/lang/String;

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/google/googlenav/ah;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    :cond_8b
    iget-object v0, p0, Lcom/google/googlenav/ah;->u:Ljava/lang/String;

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/google/googlenav/ah;->u:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    :cond_96
    iget-object v0, p0, Lcom/google/googlenav/ah;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    new-instance v1, Lar/k;

    const-string v2, "Placemark"

    invoke-direct {v1, v2, v0, v3}, Lar/k;-><init>(Ljava/lang/String;ILjava/util/List;)V

    return-object v1

    :cond_a7
    move v0, v2

    goto :goto_74
.end method

.method public g(Lam/b;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x99

    invoke-virtual {v0, v1, p1}, Lam/b;->b(ILam/b;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->m(I)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Lam/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Lam/b;->b(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v0}, Lam/b;->a(ILam/b;)V

    :cond_18
    return-void
.end method

.method public g(I)[Lcom/google/googlenav/ao;
    .registers 10

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v1, 0x1

    if-ltz p1, :cond_7

    if-le p1, v3, :cond_22

    :cond_7
    const-string v0, "getJustifications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/google/googlenav/ah;->d:[Lcom/google/googlenav/ao;

    :goto_21
    return-object v0

    :cond_22
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->h(I)Lcom/google/googlenav/as;

    move-result-object v0

    if-nez v0, :cond_2d

    sget-object v0, Lcom/google/googlenav/ah;->d:[Lcom/google/googlenav/ao;

    goto :goto_21

    :cond_2d
    invoke-virtual {v0}, Lcom/google/googlenav/as;->a()Lam/b;

    move-result-object v4

    if-nez v4, :cond_36

    sget-object v0, Lcom/google/googlenav/ah;->d:[Lcom/google/googlenav/ao;

    goto :goto_21

    :cond_36
    invoke-static {p1}, Lcom/google/googlenav/ao;->a(I)Z

    move-result v0

    if-eqz v0, :cond_46

    move v0, v1

    :goto_3d
    invoke-virtual {v4, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v5

    if-nez v5, :cond_48

    sget-object v0, Lcom/google/googlenav/ah;->d:[Lcom/google/googlenav/ao;

    goto :goto_21

    :cond_46
    const/4 v0, 0x2

    goto :goto_3d

    :cond_48
    invoke-virtual {v5, v1}, Lam/b;->l(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/googlenav/ao;->b(I)Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_56
    new-array v3, v0, [Lcom/google/googlenav/ao;

    move v4, v2

    :goto_59
    add-int v6, v2, v0

    if-ge v4, v6, :cond_74

    sub-int v6, v4, v2

    invoke-virtual {v5, v1, v4}, Lam/b;->e(II)Lam/b;

    move-result-object v7

    invoke-static {v7}, Lcom/google/googlenav/ao;->a(Lam/b;)Lcom/google/googlenav/ao;

    move-result-object v7

    aput-object v7, v3, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    :cond_6c
    add-int/lit8 v0, v0, -0x3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v2, v3

    goto :goto_56

    :cond_74
    move-object v0, v3

    goto :goto_21
.end method

.method public h(I)Lcom/google/googlenav/as;
    .registers 11

    const/16 v8, 0x9e

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-static {p1}, Lar/n;->a(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Lcom/google/googlenav/ah;->w:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ah;->w:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4f

    :cond_1a
    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/googlenav/ah;->w:Ljava/lang/ref/SoftReference;

    move v0, v2

    :goto_2b
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->ay()Ljava/util/Map;

    move-result-object v5

    iget-object v3, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-virtual {v3, v8}, Lam/b;->l(I)I

    move-result v6

    move v3, v1

    :goto_36
    if-ge v3, v6, :cond_71

    iget-object v1, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    invoke-virtual {v1, v8, v3}, Lam/b;->e(II)Lam/b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lam/b;->d(I)I

    move-result v7

    if-ne v7, p1, :cond_5e

    invoke-static {v1}, Lcom/google/googlenav/as;->a(Lam/b;)Lcom/google/googlenav/as;

    move-result-object v1

    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_6d

    move-object v0, v1

    goto :goto_9

    :cond_4f
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->ay()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/google/googlenav/ah;->b:Lcom/google/googlenav/as;

    if-eq v0, v3, :cond_78

    check-cast v0, Lcom/google/googlenav/as;

    goto :goto_9

    :cond_5e
    if-eqz v0, :cond_6d

    invoke-virtual {v1, v2}, Lam/b;->d(I)I

    move-result v1

    invoke-static {v1}, Lar/n;->a(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v7, Lcom/google/googlenav/ah;->b:Lcom/google/googlenav/as;

    invoke-interface {v5, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6d
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_36

    :cond_71
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/as;

    goto :goto_9

    :cond_78
    move v0, v1

    goto :goto_2b
.end method

.method public h(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/google/googlenav/ah;->o()Lam/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lam/b;->b(ILjava/lang/String;)V

    :cond_e
    return-void
.end method

.method public h()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public i(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->aZ()I

    move-result v0

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/view/android/bD;->a(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/google/googlenav/ah;->o()Lam/b;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lam/b;->b(ILjava/lang/String;)V

    :cond_e
    return-void
.end method

.method public j(I)Lam/b;
    .registers 5

    const/4 v2, 0x2

    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ah;->h(I)Lcom/google/googlenav/as;

    move-result-object v0

    if-ltz p1, :cond_15

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/google/googlenav/as;->a()Lam/b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lam/b;->l(I)I

    move-result v1

    if-lt p1, v1, :cond_17

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return-object v0

    :cond_17
    invoke-virtual {v0}, Lcom/google/googlenav/as;->a()Lam/b;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    goto :goto_16
.end method

.method public j(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/google/googlenav/ah;->o()Lam/b;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lam/b;->b(ILjava/lang/String;)V

    :cond_f
    return-void
.end method

.method public l(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ah;->a(Ljava/lang/String;Lam/b;)Lam/b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lam/g;->e(Lam/b;I)I

    move-result v0

    return v0
.end method

.method public l(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bx()Lam/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lam/b;->h(II)V

    iget-object v1, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v2, 0x99

    invoke-virtual {v1, v2, v0}, Lam/b;->b(ILam/b;)V

    return-void
.end method

.method public m(I)V
    .registers 2

    iput p1, p0, Lcom/google/googlenav/ah;->r:I

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bx()Lam/b;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ah;->b(Ljava/lang/String;Lam/b;)I

    move-result v1

    if-gez v1, :cond_10

    const-string v0, "deleteAspectRating"

    invoke-static {v0, p1}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_f
    return-void

    :cond_10
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lam/b;->g(II)V

    iget-object v0, p0, Lcom/google/googlenav/ah;->s:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method public n(I)V
    .registers 4

    invoke-static {p1}, Lar/n;->a(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ah;->x:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/google/googlenav/ah;->x:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method public n(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ah;->s:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bx()Lam/b;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ah;->b(Ljava/lang/String;Lam/b;)I

    move-result v0

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public p(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bx()Lam/b;

    move-result-object v0

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_10

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lam/b;->b(ILjava/lang/String;)V

    :cond_10
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/16 v1, 0x9f

    invoke-virtual {v0, v1, p1}, Lam/b;->b(ILjava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_24
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_42
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_54

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Lam/b;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ah;->h:LaJ/g;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/ah;->h:LaJ/g;

    invoke-static {v0}, Lcom/google/googlenav/ah;->a(LaJ/g;)Lam/b;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/googlenav/ah;->e:Lam/b;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    goto :goto_a

    :cond_17
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public x()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->y()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public y()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ah;->p:[Lcom/google/googlenav/ah;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ah;->p:[Lcom/google/googlenav/ah;

    array-length v0, v0

    goto :goto_5
.end method

.method public z()[Lcom/google/googlenav/ah;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ah;->p:[Lcom/google/googlenav/ah;

    return-object v0
.end method
