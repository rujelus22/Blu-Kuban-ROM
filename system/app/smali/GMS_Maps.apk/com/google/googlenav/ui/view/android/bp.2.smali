.class public Lcom/google/googlenav/ui/view/android/bp;
.super Lcom/google/googlenav/ui/view/android/bO;


# instance fields
.field private a:Lbb/c;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ao;Ljava/util/Vector;Lcom/google/googlenav/an;LaJ/B;ZZZIILaY/aG;Lbb/c;ILcom/google/googlenav/cd;)V
    .registers 23

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bO;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/bp;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;

    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/view/android/bp;->a([Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;

    invoke-virtual {p0, p3}, Lcom/google/googlenav/ui/view/android/bp;->e(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;

    invoke-virtual {p0, p4}, Lcom/google/googlenav/ui/view/android/bp;->f(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;

    invoke-virtual {p0, p5}, Lcom/google/googlenav/ui/view/android/bp;->g(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;

    invoke-virtual {p0, p6}, Lcom/google/googlenav/ui/view/android/bp;->i(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;

    invoke-virtual {p0, p7}, Lcom/google/googlenav/ui/view/android/bp;->j(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;

    invoke-virtual {p0, p8}, Lcom/google/googlenav/ui/view/android/bp;->a(Lcom/google/googlenav/ao;)Lcom/google/googlenav/ui/view/android/bO;

    invoke-virtual {p0, p9}, Lcom/google/googlenav/ui/view/android/bp;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/view/android/bO;

    invoke-virtual {p0, p10}, Lcom/google/googlenav/ui/view/android/bp;->a(Lcom/google/googlenav/an;)Lcom/google/googlenav/ui/view/android/bO;

    invoke-virtual {p0, p11}, Lcom/google/googlenav/ui/view/android/bp;->a(LaJ/B;)Lcom/google/googlenav/ui/view/android/bO;

    invoke-virtual {p0, p12}, Lcom/google/googlenav/ui/view/android/bp;->a(Z)Lcom/google/googlenav/ui/view/android/bO;

    invoke-virtual {p0, p13}, Lcom/google/googlenav/ui/view/android/bp;->b(Z)Lcom/google/googlenav/ui/view/android/bO;

    move/from16 v0, p14

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bp;->c(Z)Lcom/google/googlenav/ui/view/android/bO;

    move/from16 v0, p15

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bp;->b(I)Lcom/google/googlenav/ui/view/android/bO;

    move/from16 v0, p16

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bp;->c(I)Lcom/google/googlenav/ui/view/android/bO;

    move-object/from16 v0, p17

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bp;->a(Lcom/google/googlenav/ui/p;)Lcom/google/googlenav/ui/view/android/bO;

    invoke-virtual/range {p17 .. p17}, LaY/aG;->bg()Lcom/google/googlenav/ui/bF;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/bp;->a(Lcom/google/googlenav/ui/bF;)Lcom/google/googlenav/ui/view/android/bO;

    move-object/from16 v0, p18

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bp;->a(Lbb/c;)V

    move/from16 v0, p19

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bp;->a(I)V

    move-object/from16 v0, p20

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bp;->a(Lcom/google/googlenav/cd;)Lcom/google/googlenav/ui/view/android/bO;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/bp;)Lbb/c;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bp;->a:Lbb/c;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/bp;)I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/view/android/bp;->b:I

    return v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/view/android/bm;
    .registers 3

    new-instance v0, Lcom/google/googlenav/ui/view/android/bm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/bm;-><init>(Lcom/google/googlenav/ui/view/android/bp;Lcom/google/googlenav/ui/view/android/bn;)V

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/google/googlenav/ui/view/android/bp;->b:I

    return-void
.end method

.method public a(Lbb/c;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bp;->a:Lbb/c;

    return-void
.end method

.method public synthetic b()Lcom/google/googlenav/ui/view/android/bN;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bp;->a()Lcom/google/googlenav/ui/view/android/bm;

    move-result-object v0

    return-object v0
.end method
