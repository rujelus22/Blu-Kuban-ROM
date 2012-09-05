.class public Lax/S;
.super Ljava/lang/Object;


# static fields
.field public static final a:I


# instance fields
.field private final b:LaY/K;

.field private c:Lbb/o;

.field private d:Ljava/util/concurrent/ConcurrentMap;

.field private e:Lbb/o;

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lax/S;->a:I

    return-void
.end method

.method public constructor <init>(LaY/K;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LK/bW;

    invoke-direct {v0}, LK/bW;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, LK/bW;->a(I)LK/bW;

    move-result-object v0

    invoke-virtual {v0}, LK/bW;->l()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lax/S;->d:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    iput v0, p0, Lax/S;->f:I

    iput-object p1, p0, Lax/S;->b:LaY/K;

    return-void
.end method

.method public static a(Ljava/util/Vector;LaX/a;LaX/i;ILcom/google/googlenav/ui/a;)I
    .registers 11

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1}, LaX/a;->a()Lax/bz;

    move-result-object v3

    if-eqz v3, :cond_52

    new-instance v2, Lcom/google/googlenav/ui/bm;

    invoke-direct {v2}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v2

    const/16 v4, 0x4aa

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/bg;->R:Lcom/google/googlenav/ui/bg;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v3}, Lax/bz;->b()I

    move-result v4

    sget v5, Lax/S;->a:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-nez v4, :cond_39

    invoke-static {p0, p3}, Lax/S;->a(Ljava/util/Vector;I)V

    :cond_38
    :goto_38
    return v0

    :cond_39
    move v0, v2

    :goto_3a
    if-ge v1, v4, :cond_38

    invoke-virtual {v3, v1}, Lax/bz;->b(I)Lax/by;

    move-result-object v2

    const/16 v5, 0x21

    invoke-static {v1, v5, v2, p2, p4}, Lax/S;->a(IILax/by;LaX/i;Lbb/c;)Lcom/google/googlenav/ui/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_52
    move v0, v1

    goto :goto_38
.end method

.method static synthetic a(Lax/S;)LaY/K;
    .registers 2

    iget-object v0, p0, Lax/S;->b:LaY/K;

    return-object v0
.end method

.method private a(Lax/aP;LaX/i;)Lbb/n;
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/Vector;

    const/4 v0, 0x4

    invoke-direct {v3, v0}, Ljava/util/Vector;-><init>(I)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {p1}, Lax/S;->e(Lax/aP;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/google/googlenav/ui/bg;->N:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1f
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->m()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-virtual {p1}, Lax/aP;->k()Z

    move-result v0

    if-eqz v0, :cond_5b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v4, Lcom/google/googlenav/ui/bw;->bk:C

    invoke-static {v4}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x17a

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/google/googlenav/ui/bg;->U:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5b
    invoke-virtual {p1}, Lax/aP;->m()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-virtual {p1}, Lax/aP;->v()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/google/googlenav/ui/bg;->L:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6e
    invoke-virtual {p1}, Lax/aP;->m()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-static {p1, v2, v2, v2, v1}, Lax/S;->a(Lax/aP;ZZZZ)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/google/googlenav/ui/bg;->L:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_81
    invoke-virtual {p1}, Lax/aP;->c()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-virtual {p1}, Lax/aP;->b()Z

    move-result v0

    if-nez v0, :cond_93

    invoke-virtual {p1}, Lax/aP;->J()Z

    move-result v0

    if-eqz v0, :cond_fb

    :cond_93
    iget-object v0, p0, Lax/S;->b:LaY/K;

    invoke-virtual {v0}, LaY/K;->bM()J

    move-result-wide v4

    iget-object v0, p0, Lax/S;->b:LaY/K;

    invoke-virtual {v0}, LaY/K;->bS()LaY/aj;

    move-result-object v0

    invoke-virtual {v0}, LaY/aj;->b()Z

    move-result v0

    invoke-static {p1, v4, v5, v2, v0}, Lax/S;->a(Lax/aP;JZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b2

    sget-object v4, Lcom/google/googlenav/ui/bg;->U:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_b2
    move v0, v2

    :goto_b3
    invoke-virtual {p1}, Lax/aP;->b()Z

    move-result v4

    if-nez v4, :cond_c3

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/M;->az()Z

    move-result v4

    if-nez v4, :cond_c4

    :cond_c3
    move v2, v1

    :cond_c4
    new-instance v1, Lcom/google/googlenav/ui/bm;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    new-instance v3, LaX/j;

    invoke-virtual {p1}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v2}, LaX/j;-><init>(Ljava/lang/Long;IZ)V

    invoke-static {v3, p2}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aj;Lcom/google/googlenav/ui/ai;)Lcom/google/googlenav/ui/bn;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bm;->b(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/bm;->a(Ljava/lang/Object;)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    if-eqz v0, :cond_f0

    invoke-virtual {p1}, Lax/aP;->d()LaJ/B;

    move-result-object v0

    invoke-direct {p0, p1}, Lax/S;->d(Lax/aP;)I

    move-result v2

    invoke-static {v1, v0, v2}, LaP/g;->a(Lcom/google/googlenav/ui/bm;LaJ/B;I)V

    :cond_f0
    new-instance v0, Lbb/n;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbb/n;-><init>(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;)V

    return-object v0

    :cond_fb
    move v0, v1

    goto :goto_b3
.end method

.method private static a(IIZLjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/ui/bl;
    .registers 8

    if-eqz p2, :cond_41

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->n()Lah/g;

    move-result-object v0

    :goto_a
    sget-char v1, Lcom/google/googlenav/ui/bw;->ar:C

    sparse-switch p0, :sswitch_data_5a

    :goto_f
    new-instance v2, Lcom/google/googlenav/ui/bm;

    invoke-direct {v2}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;Lah/g;)Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/googlenav/ui/bm;->b(Ljava/lang/String;)Lcom/google/googlenav/ui/bm;

    invoke-static {p4}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    if-eqz p2, :cond_56

    sget-object v0, Lcom/google/googlenav/ui/bg;->t:Lcom/google/googlenav/ui/bg;

    :goto_2d
    invoke-static {p4, v0}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    :cond_34
    if-eqz p2, :cond_3c

    invoke-virtual {v1, p0}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/bm;->i(I)Lcom/google/googlenav/ui/bm;

    :cond_3c
    invoke-virtual {v1}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    return-object v0

    :cond_41
    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->o()Lah/g;

    move-result-object v0

    goto :goto_a

    :sswitch_4a
    sget-char v1, Lcom/google/googlenav/ui/bw;->aZ:C

    goto :goto_f

    :sswitch_4d
    sget-char v1, Lcom/google/googlenav/ui/bw;->aV:C

    goto :goto_f

    :sswitch_50
    sget-char v1, Lcom/google/googlenav/ui/bw;->aY:C

    goto :goto_f

    :sswitch_53
    sget-char v1, Lcom/google/googlenav/ui/bw;->aX:C

    goto :goto_f

    :cond_56
    sget-object v0, Lcom/google/googlenav/ui/bg;->u:Lcom/google/googlenav/ui/bg;

    goto :goto_2d

    nop

    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_50
        0xf -> :sswitch_4d
        0x150 -> :sswitch_4a
        0x258 -> :sswitch_53
        0x25b -> :sswitch_4d
    .end sparse-switch
.end method

.method private static a(Ljava/lang/String;ILah/f;)Lcom/google/googlenav/ui/bl;
    .registers 5

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    sget-object v1, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {p0, v1}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/bm;->a(Lah/f;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;ILah/f;)Lcom/google/googlenav/ui/bl;
    .registers 10

    sget-object v2, Lcom/google/googlenav/ui/bg;->aP:Lcom/google/googlenav/ui/bg;

    sget-object v3, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lax/S;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/bg;Lcom/google/googlenav/ui/bg;ILah/f;)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/bg;Lcom/google/googlenav/ui/bg;ILah/f;)Lcom/google/googlenav/ui/bl;
    .registers 8

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-static {p0, p2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {p1, p3}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/googlenav/ui/bm;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/googlenav/ui/bm;->a(Lah/f;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    return-object v0
.end method

.method public static a(IILax/by;LaX/i;Lbb/c;)Lcom/google/googlenav/ui/bm;
    .registers 12

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p2}, Lax/by;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->T:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lax/by;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->L:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/googlenav/ui/bm;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/bm;->i(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Z)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v6

    new-instance v0, LaX/j;

    invoke-virtual {p2}, Lax/by;->a()Ljava/lang/Long;

    move-result-object v1

    sget v2, Lcom/google/googlenav/ui/bw;->bt:I

    invoke-direct {v0, v1, v2}, LaX/j;-><init>(Ljava/lang/Long;I)V

    invoke-static {v0, p3}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aj;Lcom/google/googlenav/ui/ai;)Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;

    invoke-virtual {v6, p2}, Lcom/google/googlenav/ui/bm;->a(Ljava/lang/Object;)Lcom/google/googlenav/ui/bm;

    invoke-virtual {v6, p4}, Lcom/google/googlenav/ui/bm;->a(Lbb/c;)Lcom/google/googlenav/ui/bm;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sget-char v1, Lcom/google/googlenav/ui/bw;->F:C

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bw;->J()Lah/g;

    move-result-object v2

    const/16 v3, 0x14c

    move-object v4, p4

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lax/S;->a(Ljava/util/Vector;CLah/g;ILbb/c;Lax/by;)V

    sget-char v1, Lcom/google/googlenav/ui/bw;->G:C

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bw;->K()Lah/g;

    move-result-object v2

    const/16 v3, 0x14d

    move-object v4, p4

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lax/S;->a(Ljava/util/Vector;CLah/g;ILbb/c;Lax/by;)V

    invoke-virtual {v6, v0}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/bm;

    return-object v6
.end method

.method static a(LaJ/B;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_9

    const/16 v0, 0x14f

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object p1

    :cond_8
    :goto_8
    return-object p1

    :cond_9
    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x14b

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8
.end method

.method public static a(Lax/aP;JZZ)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    invoke-virtual {p0}, Lax/aP;->b()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lax/aO;->c()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {p0}, Lax/aP;->d()LaJ/B;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lax/aP;->I()J

    move-result-wide v1

    add-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_d

    invoke-virtual {p0}, Lax/aP;->K()Z

    move-result v0

    if-eqz v0, :cond_2e

    if-eqz p4, :cond_2e

    const/16 v0, 0x206

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_2e
    invoke-virtual {p0}, Lax/aP;->F()Z

    move-result v0

    invoke-static {v1, v2, p3, v0}, Lcom/google/googlenav/b;->a(JZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method private a(Lax/aP;Z)Ljava/lang/String;
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lax/S;->c(Lax/aP;)I

    move-result v0

    if-ne v0, v2, :cond_3a

    const/16 v1, 0x17e

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    if-eqz p2, :cond_39

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v2, Lcom/google/googlenav/ui/bw;->bk:C

    invoke-static {v2}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_39
    return-object v0

    :cond_3a
    const/16 v1, 0x17f

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method static a(Lax/aP;ZZZ)Ljava/lang/String;
    .registers 8

    invoke-virtual {p0, p2, p3}, Lax/aP;->a(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lax/aP;->H()LaJ/B;

    move-result-object v1

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Lax/aP;->F()Z

    move-result v2

    if-eqz v2, :cond_2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v3, Lcom/google/googlenav/ui/bw;->bh:C

    invoke-static {v3}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2d
    invoke-static {v1, v0}, Lax/S;->a(LaJ/B;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lax/aP;ZZZZ)Ljava/lang/String;
    .registers 7

    if-eqz p1, :cond_7

    invoke-static {p0, p2, p3, p4}, Lax/S;->a(Lax/aP;ZZZ)Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Lax/aP;->d()LaJ/B;

    move-result-object v0

    invoke-virtual {p0, p4}, Lax/aP;->g(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lax/S;->a(LaJ/B;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private a(ILax/aP;LaX/i;Ljava/util/Vector;Z)V
    .registers 12

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/bm;->i(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/bm;->a(Z)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    invoke-static {p2}, Lax/S;->e(Lax/aP;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->T:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {p2, v5, v5, v5, v4}, Lax/S;->a(Lax/aP;ZZZZ)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->L:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v2, p0, Lax/S;->b:LaY/K;

    invoke-virtual {v2}, LaY/K;->bM()J

    move-result-wide v2

    invoke-static {p2, v2, v3, v4, p5}, Lax/S;->a(Lax/aP;JZZ)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_52

    sget-object v3, Lcom/google/googlenav/ui/bg;->U:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->c(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v2

    invoke-direct {p0, p2}, Lax/S;->d(Lax/aP;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    :cond_52
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->m()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-virtual {p2}, Lax/aP;->b()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-virtual {p0, v1, p2}, Lax/S;->a(Ljava/util/Vector;Lax/aP;)V

    :cond_65
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    invoke-virtual {p2}, Lax/aP;->b()Z

    move-result v1

    if-nez v1, :cond_79

    invoke-virtual {p2}, Lax/aP;->d()LaJ/B;

    move-result-object v1

    invoke-direct {p0, p2}, Lax/S;->d(Lax/aP;)I

    move-result v2

    invoke-static {v0, v1, v2}, LaP/g;->a(Lcom/google/googlenav/ui/bm;LaJ/B;I)V

    :cond_79
    invoke-direct {p0, p2}, Lax/S;->d(Lax/aP;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    new-instance v1, LaX/j;

    invoke-virtual {p2}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v2

    sget v3, Lcom/google/googlenav/ui/bw;->bt:I

    invoke-direct {v1, v2, v3}, LaX/j;-><init>(Ljava/lang/Long;I)V

    invoke-static {v1, p3}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aj;Lcom/google/googlenav/ui/ai;)Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/bm;->a(Ljava/lang/Object;)Lcom/google/googlenav/ui/bm;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lax/aP;Lcom/google/googlenav/a;Ljava/util/Vector;)V
    .registers 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/google/googlenav/a;->b()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const/16 v3, 0xaa

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p1, v7, v6, v6, v6}, Lax/S;->a(Lax/aP;ZZZZ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/bg;->aP:Lcom/google/googlenav/ui/bg;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v3, 0xa9

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/googlenav/b;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/googlenav/ui/bm;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->A()Lah/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lah/f;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/bm;->a(Ljava/lang/Object;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0x83b

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    iget-object v1, p0, Lax/S;->b:LaY/K;

    invoke-virtual {v1}, LaY/K;->bh()Lcom/google/googlenav/ui/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lbb/c;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lax/aP;Ljava/util/Vector;)V
    .registers 9

    const/16 v1, 0x164

    invoke-virtual {p1}, Lax/aP;->x()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x15e

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x156

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bw;->A()Lah/f;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lax/S;->a(Ljava/lang/String;Ljava/lang/String;ILah/f;)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_23
    return-void

    :cond_24
    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x165

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->aO:Lcom/google/googlenav/ui/bg;

    sget-object v3, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    const/4 v4, -0x1

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/ui/bw;->A()Lah/f;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lax/S;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/bg;Lcom/google/googlenav/ui/bg;ILah/f;)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_23
.end method

.method public static a(Ljava/util/Vector;)V
    .registers 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/16 v1, 0x90

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->aP:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/googlenav/ui/bm;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bm;->a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->A()Lah/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lah/f;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0x834

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Ljava/util/Vector;CLah/g;ILbb/c;Lax/by;)V
    .registers 10

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbb/a;

    const/4 v3, -0x1

    invoke-direct {v2, p3, v3, p5}, Lbb/a;-><init>(IILjava/lang/Object;)V

    invoke-static {v1, p2, v2}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/String;Lah/g;Lbb/E;)Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    invoke-virtual {v0, p4}, Lcom/google/googlenav/ui/bm;->a(Lbb/c;)Lcom/google/googlenav/ui/bm;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Ljava/util/Vector;I)V
    .registers 5

    const/16 v0, 0x292

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_f

    const/16 v0, 0x64

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :cond_f
    new-instance v1, Lcom/google/googlenav/ui/bm;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->E:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private static b(Ljava/util/Vector;)V
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0x232

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->E:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private static c(Ljava/util/Vector;)V
    .registers 5

    const/4 v3, 0x4

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v1, 0x43f

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->aP:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->E()Lah/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lah/f;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private d(Lax/aP;)I
    .registers 3

    invoke-virtual {p1}, Lax/aP;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x28

    :goto_8
    return v0

    :cond_9
    const/16 v0, 0xd

    goto :goto_8
.end method

.method private d(Ljava/util/Vector;)V
    .registers 5

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v1, 0x12c

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->aP:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0x155

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->D()Lah/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lah/f;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private static e(Lax/aP;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lax/aP;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {p0}, Lax/aP;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_16
    invoke-virtual {p0}, Lax/aP;->D()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2d
    return-object v0
.end method

.method private f()Lbb/p;
    .registers 8

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->j()Z

    move-result v0

    if-eqz v0, :cond_4e

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v1, 0x834

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v1

    :goto_1a
    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v2, 0x12d

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v2

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v3, 0x13d

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-static {}, Lax/r;->c()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/bm;->d(Z)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v3

    new-instance v0, Lbb/p;

    const v5, 0x7f0201cc

    new-instance v6, Lax/V;

    invoke-direct {v6, p0}, Lax/V;-><init>(Lax/S;)V

    invoke-direct/range {v0 .. v6}, Lbb/p;-><init>(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;ILaw/f;)V

    return-object v0

    :cond_4e
    move-object v1, v4

    goto :goto_1a
.end method

.method private f(Lax/aP;)Lbb/p;
    .registers 13

    const/16 v10, 0x1b3

    const/16 v9, 0xe0

    const/4 v2, 0x0

    const/4 v8, -0x1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lax/aP;->a()Lcom/google/googlenav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->C()LaJ/g;

    move-result-object v4

    invoke-virtual {p1}, Lax/aP;->b()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->az()Z

    move-result v0

    if-eqz v0, :cond_98

    :cond_1f
    move v0, v1

    :goto_20
    if-eqz v0, :cond_9a

    const/4 v0, 0x0

    move-object v3, v0

    :goto_24
    if-eqz v4, :cond_af

    iget-object v0, p0, Lax/S;->b:LaY/K;

    invoke-virtual {v0}, LaY/K;->av()Z

    move-result v0

    if-eqz v0, :cond_af

    move v0, v1

    :goto_2f
    const/16 v5, 0x41f

    invoke-static {v5}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x420

    invoke-static {v6}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v8, v0, v5, v6}, Lax/S;->a(IIZLjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/ui/bl;

    move-result-object v5

    iget-object v0, p0, Lax/S;->b:LaY/K;

    invoke-virtual {v0, v4}, LaY/K;->b(LaJ/g;)Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lax/S;->b:LaY/K;

    invoke-virtual {v0, v4}, LaY/K;->c(LaJ/g;)Z

    move-result v0

    if-eqz v0, :cond_b4

    :cond_4f
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_b4

    const/16 v0, 0xf

    const/4 v6, 0x4

    invoke-virtual {p1}, Lax/aP;->b()Z

    move-result v7

    if-nez v7, :cond_b2

    iget-object v7, p0, Lax/S;->b:LaY/K;

    invoke-virtual {v7, v4}, LaY/K;->a(LaJ/g;)Z

    move-result v4

    if-eqz v4, :cond_b2

    :goto_6a
    invoke-static {v10}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v6, v1, v2, v4}, Lax/S;->a(IIZLjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    :goto_76
    const/16 v1, 0x258

    iget-object v2, p0, Lax/S;->b:LaY/K;

    invoke-virtual {p1}, Lax/aP;->a()Lcom/google/googlenav/ah;

    move-result-object v4

    invoke-virtual {v2, v4}, LaY/K;->d(Lcom/google/googlenav/ah;)Z

    move-result v2

    const/16 v4, 0x4a7

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x4a8

    invoke-static {v6}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v8, v2, v4, v6}, Lax/S;->a(IIZLjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/ui/bl;

    move-result-object v1

    new-instance v2, Lbb/p;

    invoke-direct {v2, v3, v5, v0, v1}, Lbb/p;-><init>(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;)V

    return-object v2

    :cond_98
    move v0, v2

    goto :goto_20

    :cond_9a
    const/16 v0, 0x150

    const/16 v3, 0x1bd

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1be

    invoke-static {v5}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v8, v1, v3, v5}, Lax/S;->a(IIZLjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_24

    :cond_af
    move v0, v2

    goto/16 :goto_2f

    :cond_b2
    move v1, v2

    goto :goto_6a

    :cond_b4
    const/16 v0, 0x25b

    invoke-virtual {p1}, Lax/aP;->b()Z

    move-result v6

    if-nez v6, :cond_d1

    iget-object v6, p0, Lax/S;->b:LaY/K;

    invoke-virtual {v6, v4}, LaY/K;->a(LaJ/g;)Z

    move-result v4

    if-eqz v4, :cond_d1

    :goto_c4
    invoke-static {v10}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v8, v1, v2, v4}, Lax/S;->a(IIZLjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    goto :goto_76

    :cond_d1
    move v1, v2

    goto :goto_c4
.end method

.method private g()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    const/16 v0, 0x187

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lax/S;->f:I

    return v0
.end method

.method public a(Lax/aP;)Lbb/o;
    .registers 15

    const/4 v3, 0x4

    const/4 v4, 0x0

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Lax/aP;->F()Z

    move-result v0

    if-eqz v0, :cond_d2

    invoke-virtual {p1}, Lax/aP;->G()Lcom/google/googlenav/a;

    move-result-object v0

    invoke-direct {p0, p1, v0, v5}, Lax/S;->a(Lax/aP;Lcom/google/googlenav/a;Ljava/util/Vector;)V

    :cond_14
    :goto_14
    invoke-direct {p0, v5}, Lax/S;->d(Ljava/util/Vector;)V

    invoke-virtual {p1}, Lax/aP;->c()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {v5}, Lax/S;->c(Ljava/util/Vector;)V

    :cond_20
    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v1, 0x12e

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->aP:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0x13b

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->C()Lah/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lah/f;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->m()Z

    move-result v0

    if-nez v0, :cond_8e

    new-instance v0, Lcom/google/googlenav/ui/bm;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/16 v1, 0x190

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->aP:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    const/16 v1, 0x138

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->B()Lah/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bm;->a(Lah/f;)Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_8e
    iget-object v0, p0, Lax/S;->e:Lbb/o;

    if-nez v0, :cond_e3

    iget-object v0, p0, Lax/S;->b:LaY/K;

    invoke-virtual {v0}, LaY/K;->i()LaX/i;

    move-result-object v3

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_e1

    invoke-static {p1}, Lax/S;->e(Lax/aP;)Ljava/lang/String;

    move-result-object v2

    :goto_a6
    new-instance v0, Lbb/o;

    const/4 v1, 0x6

    invoke-direct {p0, p1, v3}, Lax/S;->a(Lax/aP;LaX/i;)Lbb/n;

    move-result-object v3

    invoke-direct {p0, p1}, Lax/S;->f(Lax/aP;)Lbb/p;

    move-result-object v10

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    move-object v11, v4

    move-object v12, v4

    invoke-direct/range {v0 .. v12}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;[Lcom/google/googlenav/ui/bh;Ljava/util/Vector;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lbb/y;Lbb/p;Lbb/p;[Laq/a;Lbb/r;)V

    iput-object v0, p0, Lax/S;->e:Lbb/o;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_cf

    iget-object v0, p0, Lax/S;->e:Lbb/o;

    new-instance v1, Lax/W;

    invoke-direct {v1, p0}, Lax/W;-><init>(Lax/S;)V

    iput-object v1, v0, Lbb/o;->e:Lbb/q;

    :cond_cf
    :goto_cf
    iget-object v0, p0, Lax/S;->e:Lbb/o;

    return-object v0

    :cond_d2
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->j()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {v5}, Lax/S;->a(Ljava/util/Vector;)V

    goto/16 :goto_14

    :cond_e1
    move-object v2, v4

    goto :goto_a6

    :cond_e3
    iget-object v0, p0, Lax/S;->e:Lbb/o;

    invoke-virtual {v0, v5}, Lbb/o;->a(Ljava/util/Vector;)V

    goto :goto_cf
.end method

.method a(Ljava/util/Vector;Lax/aP;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lax/S;->a(Lax/aP;Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->L:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lax/S;->g:Z

    return-void
.end method

.method public b(Lax/aP;)Lbb/o;
    .registers 15

    const/4 v4, 0x0

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Lax/aP;->m()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p1}, Lax/aP;->F()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-virtual {p1}, Lax/aP;->G()Lcom/google/googlenav/a;

    move-result-object v0

    invoke-direct {p0, p1, v0, v5}, Lax/S;->a(Lax/aP;Lcom/google/googlenav/a;Ljava/util/Vector;)V

    :goto_19
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->m()Z

    move-result v0

    if-nez v0, :cond_46

    invoke-virtual {p1}, Lax/aP;->n()Z

    move-result v0

    if-nez v0, :cond_bd

    const/16 v0, 0x19a

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x136

    :goto_31
    const/16 v2, 0x442

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bw;->G()Lah/f;

    move-result-object v3

    invoke-static {v2, v1, v0, v3}, Lax/S;->a(Ljava/lang/String;Ljava/lang/String;ILah/f;)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_46
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->m()Z

    move-result v0

    if-nez v0, :cond_67

    const/16 v0, 0x19e

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13a

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bw;->F()Lah/f;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lax/S;->a(Ljava/lang/String;ILah/f;)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_67
    iget-object v0, p0, Lax/S;->b:LaY/K;

    invoke-virtual {v0}, LaY/K;->i()LaX/i;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lax/S;->a(Lax/aP;LaX/i;)Lbb/n;

    move-result-object v3

    invoke-direct {p0, p1}, Lax/S;->f(Lax/aP;)Lbb/p;

    move-result-object v10

    iget-object v0, p0, Lax/S;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbb/o;

    if-nez v0, :cond_d9

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_d7

    invoke-static {p1}, Lax/S;->e(Lax/aP;)Ljava/lang/String;

    move-result-object v2

    :goto_91
    new-instance v0, Lbb/o;

    const/4 v1, 0x7

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    move-object v11, v4

    move-object v12, v4

    invoke-direct/range {v0 .. v12}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;[Lcom/google/googlenav/ui/bh;Ljava/util/Vector;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lbb/y;Lbb/p;Lbb/p;[Laq/a;Lbb/r;)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ap()Z

    move-result v1

    if-eqz v1, :cond_ae

    new-instance v1, Lax/Y;

    invoke-direct {v1, p0}, Lax/Y;-><init>(Lax/S;)V

    iput-object v1, v0, Lbb/o;->e:Lbb/q;

    :cond_ae
    iget-object v1, p0, Lax/S;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b7
    return-object v0

    :cond_b8
    invoke-direct {p0, p1, v5}, Lax/S;->a(Lax/aP;Ljava/util/Vector;)V

    goto/16 :goto_19

    :cond_bd
    invoke-virtual {p1}, Lax/aP;->o()Z

    move-result v0

    if-eqz v0, :cond_cd

    const/16 v0, 0x18f

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x135

    goto/16 :goto_31

    :cond_cd
    const/16 v0, 0x1a0

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x134

    goto/16 :goto_31

    :cond_d7
    move-object v2, v4

    goto :goto_91

    :cond_d9
    invoke-virtual {v0, v3}, Lbb/o;->a(Lbb/n;)V

    invoke-virtual {v0, v5}, Lbb/o;->a(Ljava/util/Vector;)V

    invoke-virtual {v0, v10}, Lbb/o;->b(Lbb/p;)V

    goto :goto_b7
.end method

.method public b()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Lax/S;->c:Lbb/o;

    iget-object v0, p0, Lax/S;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    iput-object v1, p0, Lax/S;->e:Lbb/o;

    return-void
.end method

.method protected c(Lax/aP;)I
    .registers 3

    invoke-virtual {p1}, Lax/aP;->j()I

    move-result v0

    return v0
.end method

.method public c()Lbb/o;
    .registers 24

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lax/S;->f:I

    const/4 v12, 0x0

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    invoke-static {}, Lax/aO;->a()Z

    move-result v2

    if-eqz v2, :cond_16f

    move-object v2, v1

    :goto_13
    const/4 v1, 0x0

    if-eqz v2, :cond_38a

    new-instance v1, Lcom/google/googlenav/ui/bm;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bm;-><init>()V

    sget-object v3, Lcom/google/googlenav/ui/bg;->W:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    const/16 v2, 0x132

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v1

    move-object v7, v1

    :goto_35
    move-object/from16 v0, p0

    iget-object v1, v0, Lax/S;->b:LaY/K;

    invoke-virtual {v1}, LaY/K;->b()Lax/aS;

    move-result-object v1

    invoke-virtual {v1}, Lax/aS;->e()Ljava/util/List;

    move-result-object v2

    const/4 v1, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_18d

    const/16 v1, 0x157

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_50
    const/4 v1, 0x0

    if-eqz v2, :cond_384

    new-instance v1, Lcom/google/googlenav/ui/bm;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bm;-><init>()V

    sget-object v3, Lcom/google/googlenav/ui/bg;->X:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v1

    move-object v8, v1

    :goto_72
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lax/S;->b:LaY/K;

    invoke-virtual {v2}, LaY/K;->j()LaX/g;

    move-result-object v2

    invoke-virtual {v2}, LaX/g;->d()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_381

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_381

    invoke-static {}, LaI/c;->a()Z

    move-result v2

    if-eqz v2, :cond_381

    invoke-static {}, LaI/c;->k()Z

    move-result v2

    if-nez v2, :cond_381

    invoke-static {}, LaY/bu;->a()V

    const/16 v1, 0x18c

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/bm;

    invoke-direct {v2}, Lcom/google/googlenav/ui/bm;-><init>()V

    sget-object v3, Lcom/google/googlenav/ui/bg;->X:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    const/16 v2, 0x152

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bm;->f(I)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v1

    move-object v9, v1

    :goto_bb
    move-object/from16 v0, p0

    iget-object v1, v0, Lax/S;->b:LaY/K;

    invoke-virtual {v1}, LaY/K;->e()LaX/i;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lax/S;->b:LaY/K;

    invoke-virtual {v1}, LaY/K;->j()LaX/g;

    move-result-object v15

    invoke-virtual {v15}, LaX/g;->b()J

    move-result-wide v18

    const/4 v11, -0x1

    move-object/from16 v0, p0

    iget v10, v0, Lax/S;->f:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lax/S;->b:LaY/K;

    invoke-virtual {v1}, LaY/K;->b()Lax/aS;

    move-result-object v13

    invoke-virtual {v13}, Lax/aS;->b()I

    move-result v16

    invoke-virtual {v13}, Lax/aS;->f()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lax/S;->b:LaY/K;

    invoke-virtual {v1}, LaY/K;->bS()LaY/aj;

    move-result-object v1

    invoke-virtual {v1}, LaY/aj;->b()Z

    move-result v6

    if-nez v16, :cond_f7

    invoke-static {v5}, Lax/S;->b(Ljava/util/Vector;)V

    add-int/lit8 v10, v10, 0x1

    :cond_f7
    if-lez v16, :cond_37d

    const/4 v2, 0x0

    invoke-virtual {v13}, Lax/aS;->d()Lax/aP;

    move-result-object v3

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lax/S;->a(ILax/aP;LaX/i;Ljava/util/Vector;Z)V

    invoke-virtual {v13}, Lax/aS;->d()Lax/aP;

    move-result-object v1

    invoke-virtual {v1}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v18

    if-nez v1, :cond_37a

    move v1, v10

    :goto_114
    add-int/lit8 v10, v10, 0x1

    move v14, v1

    move v1, v10

    :goto_118
    const/4 v2, 0x1

    move/from16 v0, v16

    if-le v0, v2, :cond_258

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lax/aS;->a(I)Lax/aP;

    move-result-object v2

    invoke-virtual {v2}, Lax/aP;->J()Z

    move-result v2

    if-nez v2, :cond_377

    new-instance v2, Lcom/google/googlenav/ui/bm;

    invoke-direct {v2}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v2

    const/16 v3, 0xcf

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v10, Lcom/google/googlenav/ui/bg;->R:Lcom/google/googlenav/ui/bg;

    invoke-static {v3, v10}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    :goto_14c
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x1

    move v11, v2

    move v2, v3

    move/from16 v22, v1

    move v1, v10

    move/from16 v10, v22

    :goto_156
    move/from16 v0, v16

    if-ge v2, v0, :cond_259

    move-object/from16 v0, p0

    iget-object v3, v0, Lax/S;->b:LaY/K;

    invoke-virtual {v3}, LaY/K;->b()Lax/aS;

    move-result-object v3

    invoke-virtual {v3, v2}, Lax/aS;->a(I)Lax/aP;

    move-result-object v3

    invoke-virtual {v3}, Lax/aP;->m()Z

    move-result v13

    if-nez v13, :cond_1be

    :cond_16c
    :goto_16c
    add-int/lit8 v2, v2, 0x1

    goto :goto_156

    :cond_16f
    invoke-static {}, Lax/aO;->b()Z

    move-result v2

    if-eqz v2, :cond_17e

    const/16 v1, 0x14c

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_13

    :cond_17e
    invoke-static {}, Lax/aO;->c()Z

    move-result v2

    if-eqz v2, :cond_38d

    const/16 v1, 0x14a

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_13

    :cond_18d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_387

    const/16 v1, 0x154

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_50

    :cond_1be
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lax/S;->g:Z

    if-nez v13, :cond_1cc

    invoke-virtual {v3}, Lax/aP;->J()Z

    move-result v13

    if-eqz v13, :cond_1cc

    if-nez v17, :cond_16c

    :cond_1cc
    if-nez v1, :cond_370

    invoke-virtual {v3}, Lax/aP;->J()Z

    move-result v13

    if-eqz v13, :cond_370

    new-instance v1, Lcom/google/googlenav/ui/bm;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/4 v13, 0x2

    invoke-virtual {v1, v13}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    const/16 v13, 0x487

    invoke-static {v13}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v13

    sget-object v20, Lcom/google/googlenav/ui/bg;->R:Lcom/google/googlenav/ui/bg;

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    const/4 v1, 0x1

    move/from16 v22, v1

    move v1, v10

    move/from16 v10, v22

    :goto_201
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/googlenav/M;->m()Z

    move-result v13

    if-eqz v13, :cond_36b

    if-nez v12, :cond_36b

    invoke-virtual {v3}, Lax/aP;->k()Z

    move-result v13

    if-eqz v13, :cond_36b

    new-instance v12, Lcom/google/googlenav/ui/bm;

    invoke-direct {v12}, Lcom/google/googlenav/ui/bm;-><init>()V

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/google/googlenav/ui/bm;->d(I)Lcom/google/googlenav/ui/bm;

    move-result-object v12

    const/16 v13, 0x17b

    invoke-static {v13}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v13

    sget-object v20, Lcom/google/googlenav/ui/bg;->R:Lcom/google/googlenav/ui/bg;

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/googlenav/ui/bm;->a()Lcom/google/googlenav/ui/bl;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v12, v1, 0x1

    add-int/lit8 v11, v11, 0x1

    const/4 v1, 0x1

    move v13, v11

    move v11, v1

    :goto_23d
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lax/S;->a(ILax/aP;LaX/i;Ljava/util/Vector;Z)V

    invoke-virtual {v3}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v1, v20, v18

    if-nez v1, :cond_368

    move v1, v12

    :goto_24f
    add-int/lit8 v3, v12, 0x1

    move v12, v11

    move v14, v1

    move v1, v10

    move v11, v13

    move v10, v3

    goto/16 :goto_16c

    :cond_258
    move v10, v1

    :cond_259
    move-object/from16 v0, p0

    iget-object v1, v0, Lax/S;->b:LaY/K;

    invoke-virtual {v1}, LaY/K;->c()LaX/a;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lax/S;->b:LaY/K;

    invoke-virtual {v2}, LaY/K;->b()Lax/aS;

    move-result-object v2

    invoke-virtual {v2}, Lax/aS;->b()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lax/S;->b:LaY/K;

    invoke-virtual {v3}, LaY/K;->bh()Lcom/google/googlenav/ui/a;

    move-result-object v3

    invoke-static {v5, v1, v4, v2, v3}, Lax/S;->a(Ljava/util/Vector;LaX/a;LaX/i;ILcom/google/googlenav/ui/a;)I

    move-result v1

    add-int/2addr v1, v10

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/google/googlenav/ui/n;->t:Laq/a;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Laq/a;->a(Laq/a;Z)Laq/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->j()Z

    move-result v2

    if-eqz v2, :cond_29d

    sget-object v2, Lcom/google/googlenav/ui/n;->W:Laq/a;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Laq/a;->a(Laq/a;Z)Laq/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29d
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->ak()Z

    move-result v2

    if-nez v2, :cond_2b1

    sget-object v2, Lcom/google/googlenav/ui/n;->q:Laq/a;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Laq/a;->a(Laq/a;Z)Laq/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b1
    sget-object v2, Lcom/google/googlenav/ui/n;->s:Laq/a;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Laq/a;->a(Laq/a;Z)Laq/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lax/S;->d()Laq/a;

    move-result-object v2

    if-eqz v2, :cond_2c4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c4
    sget-object v2, Lcom/google/googlenav/ui/n;->w:Laq/a;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Laq/a;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Laq/a;

    invoke-virtual {v15}, LaX/g;->c()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_327

    const-wide/16 v1, -0x1

    cmp-long v1, v18, v1

    if-nez v1, :cond_327

    move-object/from16 v0, p0

    iget v1, v0, Lax/S;->f:I

    invoke-virtual {v15, v1}, LaX/g;->b(I)V

    :cond_2e9
    :goto_2e9
    new-instance v15, Lbb/p;

    const/4 v1, 0x0

    invoke-direct {v15, v7, v8, v9, v1}, Lbb/p;-><init>(Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lax/S;->c:Lbb/o;

    if-eqz v1, :cond_32e

    move-object/from16 v0, p0

    iget-object v1, v0, Lax/S;->c:Lbb/o;

    invoke-virtual {v1, v5}, Lbb/o;->a(Ljava/util/Vector;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lax/S;->c:Lbb/o;

    invoke-virtual {v1, v15}, Lbb/o;->a(Lbb/p;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lax/S;->c:Lbb/o;

    invoke-direct/range {p0 .. p0}, Lax/S;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbb/o;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lax/S;->c:Lbb/o;

    invoke-direct/range {p0 .. p0}, Lax/S;->f()Lbb/p;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbb/o;->b(Lbb/p;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lax/S;->c:Lbb/o;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lbb/o;->a([Laq/a;)V

    :cond_322
    :goto_322
    move-object/from16 v0, p0

    iget-object v1, v0, Lax/S;->c:Lbb/o;

    return-object v1

    :cond_327
    const/4 v1, -0x1

    if-eq v14, v1, :cond_2e9

    invoke-virtual {v15, v14}, LaX/g;->b(I)V

    goto :goto_2e9

    :cond_32e
    new-instance v6, Lbb/o;

    const/16 v7, 0xb

    invoke-direct/range {p0 .. p0}, Lax/S;->g()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {p0 .. p0}, Lax/S;->f()Lbb/p;

    move-result-object v16

    const/16 v18, 0x0

    move-object v11, v5

    invoke-direct/range {v6 .. v18}, Lbb/o;-><init>(ILjava/lang/String;Lbb/n;[Lcom/google/googlenav/ui/bh;Ljava/util/Vector;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/bl;Lbb/y;Lbb/p;Lbb/p;[Laq/a;Lbb/r;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lax/S;->c:Lbb/o;

    move-object/from16 v0, p0

    iget-object v1, v0, Lax/S;->c:Lbb/o;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lbb/o;->t:Z

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ap()Z

    move-result v1

    if-eqz v1, :cond_322

    move-object/from16 v0, p0

    iget-object v1, v0, Lax/S;->c:Lbb/o;

    new-instance v2, Lax/T;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lax/T;-><init>(Lax/S;)V

    iput-object v2, v1, Lbb/o;->e:Lbb/q;

    goto :goto_322

    :cond_368
    move v1, v14

    goto/16 :goto_24f

    :cond_36b
    move v13, v11

    move v11, v12

    move v12, v1

    goto/16 :goto_23d

    :cond_370
    move/from16 v22, v1

    move v1, v10

    move/from16 v10, v22

    goto/16 :goto_201

    :cond_377
    move v2, v12

    goto/16 :goto_14c

    :cond_37a
    move v1, v11

    goto/16 :goto_114

    :cond_37d
    move v1, v10

    move v14, v11

    goto/16 :goto_118

    :cond_381
    move-object v9, v1

    goto/16 :goto_bb

    :cond_384
    move-object v8, v1

    goto/16 :goto_72

    :cond_387
    move-object v2, v1

    goto/16 :goto_50

    :cond_38a
    move-object v7, v1

    goto/16 :goto_35

    :cond_38d
    move-object v2, v1

    goto/16 :goto_13
.end method

.method public d()Laq/a;
    .registers 2

    invoke-virtual {p0}, Lax/S;->e()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lax/S;->g:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/googlenav/ui/n;->v:Laq/a;

    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lcom/google/googlenav/ui/n;->u:Laq/a;

    goto :goto_c

    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected e()Z
    .registers 2

    iget-object v0, p0, Lax/S;->b:LaY/K;

    invoke-virtual {v0}, LaY/K;->b()Lax/aS;

    move-result-object v0

    invoke-virtual {v0}, Lax/aS;->f()Z

    move-result v0

    return v0
.end method
