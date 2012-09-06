.class public Lcom/google/googlenav/ui/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lan/y;
.implements Las/h;
.implements Lcom/google/googlenav/J;
.implements Lcom/google/googlenav/common/h;
.implements Lcom/google/googlenav/common/util/n;
.implements Lcom/google/googlenav/ui/android/D;


# static fields
.field private static aI:LaT/h;

.field private static aJ:LaT/h;

.field private static aj:Ljava/lang/String;


# instance fields
.field private final A:Lcom/google/googlenav/friend/j;

.field private final B:Lat/p;

.field private final C:Lan/h;

.field private final D:Lat/V;

.field private final E:Lat/k;

.field private final F:Lcom/google/googlenav/j;

.field private G:I

.field private H:J

.field private I:I

.field private J:J

.field private K:J

.field private L:J

.field private M:J

.field private N:Z

.field private final O:Lcom/google/googlenav/ui/ac;

.field private P:Z

.field private final Q:Lcom/google/googlenav/ui/ab;

.field private R:Lat/B;

.field private final S:Lcom/google/googlenav/ui/s;

.field private T:I

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:J

.field private Z:J

.field a:Z

.field private aA:Ljava/lang/Boolean;

.field private final aB:Lat/v;

.field private aC:Z

.field private final aD:Lcom/google/googlenav/ui/aB;

.field private aE:Z

.field private aF:Lah/o;

.field private final aG:Lcom/google/googlenav/ui/ah;

.field private final aH:Lcom/google/googlenav/ui/X;

.field private final aK:LaT/h;

.field private final aL:LaT/h;

.field private final aM:Lcom/google/googlenav/friend/a;

.field private aN:Lcom/google/googlenav/ui/android/r;

.field private final aa:Lcom/google/googlenav/A;

.field private final ab:LY/c;

.field private final ac:Lax/b;

.field private final ad:Lcom/google/googlenav/ui/wizard/ju;

.field private final ae:LaM/am;

.field private final af:Lcom/google/googlenav/ui/wizard/z;

.field private final ag:Lab/a;

.field private final ah:Lcom/google/googlenav/L;

.field private final ai:Lcom/google/googlenav/mylocationnotifier/k;

.field private ak:Lat/B;

.field private final al:Landroid/graphics/Point;

.field private am:Z

.field private an:Lcom/google/googlenav/ui/W;

.field private final ao:LZ/c;

.field private ap:Z

.field private aq:Z

.field private ar:Z

.field private as:Z

.field private at:Z

.field private au:Ljava/lang/String;

.field private av:Z

.field private aw:Lcom/google/googlenav/ui/u;

.field private ax:Lcom/google/googlenav/ui/c;

.field private final ay:Lat/u;

.field private az:Z

.field protected b:Lcom/google/googlenav/ui/ap;

.field volatile c:Z

.field protected final d:Lcom/google/googlenav/offers/a;

.field protected volatile e:Z

.field public final f:LaT/h;

.field private final g:Lcom/google/googlenav/ui/android/L;

.field private final h:Lcom/google/googlenav/android/Y;

.field private i:Z

.field private j:Z

.field private k:LY/d;

.field private l:I

.field private m:Z

.field private n:I

.field private o:I

.field private p:LZ/a;

.field private q:Z

.field private final r:Lcom/google/googlenav/aA;

.field private final s:Lcom/google/googlenav/common/io/j;

.field private t:Lcom/google/googlenav/ui/av;

.field private final u:Lcom/google/googlenav/ui/bJ;

.field private final v:Lcom/google/googlenav/ui/bK;

.field private final w:Lcom/google/googlenav/ui/aC;

.field private final x:Lcom/google/googlenav/friend/J;

.field private final y:Lcom/google/googlenav/friend/p;

.field private final z:Lcom/google/googlenav/friend/ai;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x16

    .line 623
    const-string v0, ""

    sput-object v0, Lcom/google/googlenav/ui/v;->aj:Ljava/lang/String;

    .line 789
    new-instance v0, LaT/h;

    const-string v1, "latitude join"

    const-string v2, "lj"

    invoke-direct {v0, v1, v2, v3}, LaT/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/v;->aI:LaT/h;

    .line 794
    new-instance v0, LaT/h;

    const-string v1, "latitude show"

    const-string v2, "ls"

    invoke-direct {v0, v1, v2, v3}, LaT/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/v;->aJ:LaT/h;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/aB;Lat/p;Lat/u;Lcom/google/googlenav/ui/bK;Lcom/google/googlenav/ui/s;Lan/h;LaM/at;)V
    .registers 25
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 839
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 247
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/googlenav/ui/v;->i:Z

    .line 250
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/googlenav/ui/v;->j:Z

    .line 351
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->p:LZ/a;

    .line 354
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/googlenav/ui/v;->q:Z

    .line 427
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/googlenav/ui/v;->I:I

    .line 433
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/google/googlenav/ui/v;->K:J

    .line 444
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/google/googlenav/ui/v;->L:J

    .line 453
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/google/googlenav/ui/v;->M:J

    .line 457
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/googlenav/ui/v;->N:Z

    .line 493
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/googlenav/ui/v;->T:I

    .line 529
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/googlenav/ui/v;->U:Z

    .line 534
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/googlenav/ui/v;->V:Z

    .line 540
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/googlenav/ui/v;->W:Z

    .line 543
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/googlenav/ui/v;->X:Z

    .line 551
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/google/googlenav/ui/v;->Y:J

    .line 554
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/google/googlenav/ui/v;->Z:J

    .line 590
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/googlenav/ui/v;->c:Z

    .line 629
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->ak:Lat/B;

    .line 636
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->al:Landroid/graphics/Point;

    .line 649
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/googlenav/ui/v;->am:Z

    .line 665
    new-instance v3, LZ/c;

    invoke-direct {v3}, LZ/c;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->ao:LZ/c;

    .line 671
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/googlenav/ui/v;->aq:Z

    .line 677
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/googlenav/ui/v;->ar:Z

    .line 683
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/googlenav/ui/v;->as:Z

    .line 689
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/googlenav/ui/v;->at:Z

    .line 700
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/googlenav/ui/v;->av:Z

    .line 711
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/googlenav/ui/v;->e:Z

    .line 730
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/googlenav/ui/v;->az:Z

    .line 739
    new-instance v3, Lcom/google/googlenav/ui/w;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/google/googlenav/ui/w;-><init>(Lcom/google/googlenav/ui/v;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->aB:Lat/v;

    .line 803
    new-instance v3, LaT/h;

    const-string v4, "searchprenetworkrequest"

    invoke-direct {v3, v4}, LaT/h;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->aK:LaT/h;

    .line 806
    new-instance v3, LaT/h;

    const-string v4, "searchpostnetworkrequest"

    invoke-direct {v3, v4}, LaT/h;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->aL:LaT/h;

    .line 809
    new-instance v3, LaT/h;

    const-string v4, "search-bubble"

    invoke-direct {v3, v4}, LaT/h;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->f:LaT/h;

    .line 840
    const-string v3, "GmmController.GmmController"

    invoke-static {v3}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 841
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ui/v;->aD:Lcom/google/googlenav/ui/aB;

    .line 842
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ui/aB;->a()Lcom/google/googlenav/aA;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->r:Lcom/google/googlenav/aA;

    .line 843
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ui/aB;->e()Lcom/google/googlenav/android/Y;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->h:Lcom/google/googlenav/android/Y;

    .line 844
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ui/aB;->d()Lcom/google/googlenav/ui/android/L;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->g:Lcom/google/googlenav/ui/android/L;

    .line 845
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ui/aB;->b()Lcom/google/googlenav/ui/aC;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->w:Lcom/google/googlenav/ui/aC;

    .line 846
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ui/aB;->i()LY/c;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->ab:LY/c;

    .line 852
    invoke-virtual/range {p0 .. p0}, Lcom/google/googlenav/ui/v;->N()V

    .line 854
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ui/v;->B:Lat/p;

    .line 855
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ui/v;->v:Lcom/google/googlenav/ui/bK;

    .line 856
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ui/v;->S:Lcom/google/googlenav/ui/s;

    .line 857
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ui/v;->C:Lan/h;

    .line 858
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->s:Lcom/google/googlenav/common/io/j;

    .line 861
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    .line 862
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/googlenav/ui/v;->aB:Lat/v;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lat/u;->a(Lat/v;)V

    .line 865
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/googlenav/ui/v;->n:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/googlenav/ui/v;->o:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Lat/u;->c(II)V

    .line 867
    new-instance v3, Lcom/google/googlenav/ui/wizard/z;

    invoke-direct {v3}, Lcom/google/googlenav/ui/wizard/z;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->af:Lcom/google/googlenav/ui/wizard/z;

    .line 872
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0001"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-char v4, Lcom/google/googlenav/ui/bn;->z:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LS/p;->a(Ljava/lang/String;)V

    .line 875
    new-instance v3, Lcom/google/googlenav/ui/ab;

    invoke-direct {v3}, Lcom/google/googlenav/ui/ab;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->Q:Lcom/google/googlenav/ui/ab;

    .line 877
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/googlenav/ui/v;->g:Lcom/google/googlenav/ui/android/L;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/android/L;->b()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/googlenav/ui/v;->n:I

    .line 878
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/googlenav/ui/v;->g:Lcom/google/googlenav/ui/android/L;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/android/L;->a()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/googlenav/ui/v;->o:I

    .line 879
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/googlenav/ui/v;->n:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/googlenav/ui/v;->o:I

    invoke-virtual {v3, v4, v5}, Lcom/google/googlenav/ui/bn;->b(II)V

    .line 880
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/googlenav/ui/v;->n:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/googlenav/ui/v;->o:I

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/v;->a(II)V

    .line 884
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/googlenav/ui/v;->n:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/googlenav/ui/v;->o:I

    invoke-static {v3, v4}, Lat/Y;->b(II)V

    .line 891
    invoke-virtual/range {p2 .. p2}, Lat/p;->c()Lat/Y;

    move-result-object v3

    invoke-static {v3}, Lat/Y;->c(Lat/Y;)Lat/Y;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lat/u;->a(Lat/Y;)V

    .line 896
    new-instance v3, Lcom/google/googlenav/ui/ap;

    sget-object v8, Lcom/google/googlenav/android/A;->a:Lcom/google/googlenav/android/A;

    move-object/from16 v4, p6

    move-object/from16 v5, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/google/googlenav/ui/ap;-><init>(Lan/h;Lcom/google/googlenav/ui/v;Lat/u;Lat/p;Lcom/google/googlenav/android/A;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->b:Lcom/google/googlenav/ui/ap;

    .line 898
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/googlenav/ui/v;->r:Lcom/google/googlenav/aA;

    invoke-interface {v3}, Lcom/google/googlenav/aA;->d()V

    .line 900
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/googlenav/ui/v;->n:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/googlenav/ui/v;->o:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lat/p;->d(II)V

    .line 901
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/googlenav/ui/v;->n:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/googlenav/ui/v;->o:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Lat/u;->c(II)V

    .line 902
    invoke-static/range {p0 .. p0}, Lcom/google/googlenav/common/j;->b(Lcom/google/googlenav/common/h;)V

    .line 904
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/googlenav/ui/v;->r:Lcom/google/googlenav/aA;

    invoke-interface {v3}, Lcom/google/googlenav/aA;->d()V

    .line 908
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v11

    .line 909
    new-instance v3, Lcom/google/googlenav/ui/X;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/google/googlenav/ui/X;-><init>(Lcom/google/googlenav/ui/v;Lcom/google/googlenav/ui/w;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->aH:Lcom/google/googlenav/ui/X;

    .line 910
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/googlenav/ui/v;->aH:Lcom/google/googlenav/ui/X;

    invoke-virtual {v11, v3}, Lac/h;->a(Lac/q;)V

    .line 912
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/googlenav/ui/v;->r:Lcom/google/googlenav/aA;

    invoke-interface {v3}, Lcom/google/googlenav/aA;->d()V

    .line 914
    new-instance v3, Lat/V;

    const-wide/32 v4, 0x1d4c0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/googlenav/ui/v;->ab:LY/c;

    invoke-direct {v3, v4, v5, v6}, Lat/V;-><init>(JLY/c;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->D:Lat/V;

    .line 915
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ui/aB;->c()Lcom/google/googlenav/ui/ac;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->O:Lcom/google/googlenav/ui/ac;

    .line 916
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/googlenav/ui/v;->O:Lcom/google/googlenav/ui/ac;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/googlenav/ui/v;->D:Lat/V;

    invoke-interface {v3, v4}, Lcom/google/googlenav/ui/ac;->a(Lat/V;)V

    .line 920
    new-instance v3, Lat/k;

    invoke-direct {v3}, Lat/k;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->E:Lat/k;

    .line 922
    new-instance v3, Lcom/google/googlenav/j;

    invoke-direct {v3}, Lcom/google/googlenav/j;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->F:Lcom/google/googlenav/j;

    .line 923
    sget-object v3, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v4, Lcom/google/googlenav/ui/I;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/google/googlenav/ui/I;-><init>(Lcom/google/googlenav/ui/v;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    .line 930
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/googlenav/ui/v;->O:Lcom/google/googlenav/ui/ac;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lat/p;->a(Lat/Q;)V

    .line 932
    new-instance v3, Lcom/google/googlenav/ui/P;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/google/googlenav/ui/P;-><init>(Lcom/google/googlenav/ui/v;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lat/p;->a(Lat/q;)V

    .line 941
    new-instance v3, Lcom/google/googlenav/A;

    move-object/from16 v0, p6

    move-object/from16 v1, p3

    move-object/from16 v2, p0

    invoke-direct {v3, v0, v1, v2}, Lcom/google/googlenav/A;-><init>(Lan/h;Lat/u;Lcom/google/googlenav/J;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->aa:Lcom/google/googlenav/A;

    .line 943
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/K;->i()Z

    move-result v3

    if-eqz v3, :cond_498

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/K;->j()Z

    move-result v3

    if-eqz v3, :cond_498

    .line 945
    new-instance v3, Lcom/google/googlenav/friend/j;

    invoke-direct {v3}, Lcom/google/googlenav/friend/j;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->A:Lcom/google/googlenav/friend/j;

    .line 951
    :goto_2a4
    new-instance v3, Lag/q;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lag/q;-><init>(Lcom/google/googlenav/ui/v;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/googlenav/ui/v;->h:Lcom/google/googlenav/android/Y;

    invoke-static {v3, v4}, Lag/h;->a(Lag/e;Lcom/google/googlenav/android/Y;)V

    .line 953
    invoke-virtual/range {p0 .. p0}, Lcom/google/googlenav/ui/v;->z()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/googlenav/ui/v;->af:Lcom/google/googlenav/ui/wizard/z;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/googlenav/ui/v;->A:Lcom/google/googlenav/friend/j;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    move-object/from16 v9, p0

    invoke-virtual/range {v3 .. v10}, Lcom/google/googlenav/ui/aB;->a(Lat/p;Lat/u;Lan/h;ZLcom/google/googlenav/ui/wizard/z;Lcom/google/googlenav/J;Lcom/google/googlenav/friend/j;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    .line 956
    new-instance v3, Lcom/google/googlenav/ui/ah;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/googlenav/ui/v;->b:Lcom/google/googlenav/ui/ap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/googlenav/ui/v;->r:Lcom/google/googlenav/aA;

    invoke-direct {v3, v4, v5, v6}, Lcom/google/googlenav/ui/ah;-><init>(Lcom/google/googlenav/ui/ap;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/aA;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->aG:Lcom/google/googlenav/ui/ah;

    .line 958
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/K;->i()Z

    move-result v3

    if-eqz v3, :cond_49f

    .line 959
    new-instance v3, Lcom/google/googlenav/friend/J;

    invoke-direct {v3}, Lcom/google/googlenav/friend/J;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->x:Lcom/google/googlenav/friend/J;

    .line 960
    new-instance v3, Lcom/google/googlenav/friend/p;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/googlenav/ui/v;->ab:LY/c;

    move-object/from16 v0, p0

    invoke-direct {v3, v4, v0}, Lcom/google/googlenav/friend/p;-><init>(LY/c;Lcom/google/googlenav/ui/v;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->y:Lcom/google/googlenav/friend/p;

    .line 961
    new-instance v3, Lcom/google/googlenav/friend/ai;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/googlenav/ui/v;->h:Lcom/google/googlenav/android/Y;

    invoke-direct {v3, v4}, Lcom/google/googlenav/friend/ai;-><init>(Lcom/google/googlenav/android/Y;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->z:Lcom/google/googlenav/friend/ai;

    .line 968
    :goto_314
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/K;->aA()Z

    move-result v3

    if-eqz v3, :cond_32d

    .line 969
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v3

    new-instance v4, Lcom/google/googlenav/ui/aa;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/google/googlenav/ui/aa;-><init>(Lcom/google/googlenav/ui/v;Lcom/google/googlenav/ui/w;)V

    invoke-virtual {v3, v4}, Las/f;->a(Las/h;)V

    .line 972
    :cond_32d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-static {v3}, Lax/l;->a(Lcom/google/googlenav/ui/wizard/ju;)Lax/l;

    .line 974
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v3

    invoke-virtual {v3}, Lax/l;->f()Lax/m;

    move-result-object v3

    .line 975
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v4

    invoke-virtual {v4}, Lax/l;->g()Lax/m;

    move-result-object v4

    .line 977
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v5

    invoke-virtual {v5}, Lax/l;->l()Lax/F;

    move-result-object v5

    .line 978
    new-instance v6, Lax/b;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/googlenav/ui/v;->b:Lcom/google/googlenav/ui/ap;

    invoke-direct {v6, v11, v7, v5}, Lax/b;-><init>(Lac/h;Lcom/google/googlenav/ui/ap;Lax/F;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/googlenav/ui/v;->ac:Lax/b;

    .line 980
    invoke-interface {v3}, Lax/m;->g()Lax/r;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/googlenav/ui/v;->ac:Lax/b;

    invoke-interface {v3, v5}, Lax/r;->a(Lax/z;)V

    .line 982
    invoke-interface {v4}, Lax/m;->g()Lax/r;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/googlenav/ui/v;->ac:Lax/b;

    invoke-interface {v3, v4}, Lax/r;->a(Lax/z;)V

    .line 984
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/googlenav/ui/v;->ac:Lax/b;

    invoke-virtual {v3}, Lax/b;->b()V

    .line 986
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/googlenav/ui/v;->O:Lcom/google/googlenav/ui/ac;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/googlenav/ui/v;->C:Lan/h;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/googlenav/ui/v;->x:Lcom/google/googlenav/friend/J;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/googlenav/ui/v;->y:Lcom/google/googlenav/friend/p;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/googlenav/ui/v;->z:Lcom/google/googlenav/friend/ai;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/googlenav/ui/v;->h:Lcom/google/googlenav/android/Y;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/googlenav/ui/v;->E:Lat/k;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/googlenav/ui/v;->aD:Lcom/google/googlenav/ui/aB;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aB;->f()Lcom/google/googlenav/layer/r;

    move-result-object v15

    sget-object v16, Lcom/google/googlenav/offers/j;->a:Lcom/google/googlenav/offers/j;

    move-object/from16 v3, p7

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v16}, LaM/at;->a(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lan/h;Lcom/google/googlenav/friend/J;Lcom/google/googlenav/friend/p;Lcom/google/googlenav/friend/ai;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lat/k;Lcom/google/googlenav/layer/r;Lcom/google/googlenav/offers/j;)LaM/am;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    .line 991
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v3}, LaM/am;->b()V

    .line 995
    invoke-static {}, LaB/h;->i()LaB/h;

    move-result-object v3

    .line 996
    if-eqz v3, :cond_3c8

    .line 997
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v3, v4}, LaB/h;->a(LaB/i;)V

    .line 1001
    :cond_3c8
    new-instance v3, Lcom/google/googlenav/offers/a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/google/googlenav/offers/a;-><init>(Lcom/google/googlenav/ui/v;Lat/u;Lcom/google/googlenav/ui/wizard/ju;LaM/am;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->d:Lcom/google/googlenav/offers/a;

    .line 1005
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/K;->aA()Z

    move-result v3

    if-eqz v3, :cond_3f6

    .line 1006
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/googlenav/ui/v;->h:Lcom/google/googlenav/android/Y;

    invoke-static {v4}, Lcom/google/googlenav/offers/k;->a(Lcom/google/googlenav/android/Y;)Lcom/google/googlenav/offers/k;

    move-result-object v4

    invoke-virtual {v3, v4}, Las/f;->a(Las/h;)V

    .line 1010
    :cond_3f6
    new-instance v3, Lab/a;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lab/a;-><init>(Lcom/google/googlenav/ui/v;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->ag:Lab/a;

    .line 1012
    new-instance v3, Lcom/google/googlenav/L;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v3, v4}, Lcom/google/googlenav/L;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->ah:Lcom/google/googlenav/L;

    .line 1014
    new-instance v3, Lcom/google/googlenav/mylocationnotifier/k;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/google/googlenav/mylocationnotifier/k;-><init>(Lcom/google/googlenav/ui/v;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->ai:Lcom/google/googlenav/mylocationnotifier/k;

    .line 1016
    new-instance v3, Lcom/google/googlenav/ui/bJ;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Lcom/google/googlenav/ui/bJ;-><init>(Lat/u;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->u:Lcom/google/googlenav/ui/bJ;

    .line 1021
    new-instance v3, Lcom/google/googlenav/ui/Q;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/google/googlenav/ui/Q;-><init>(Lcom/google/googlenav/ui/v;Lat/u;)V

    new-instance v4, Lcom/google/googlenav/ui/R;

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v4, v0, v1}, Lcom/google/googlenav/ui/R;-><init>(Lcom/google/googlenav/ui/v;Lan/h;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/googlenav/ui/v;->h:Lcom/google/googlenav/android/Y;

    invoke-static {v3, v4, v5}, LaI/o;->a(LaI/q;LaI/p;Lcom/google/googlenav/android/Y;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/googlenav/ui/v;->r:Lcom/google/googlenav/aA;

    invoke-interface {v3}, Lcom/google/googlenav/aA;->d()V

    .line 1044
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/K;->ao()Z

    move-result v3

    if-eqz v3, :cond_45a

    .line 1045
    new-instance v3, Lcom/google/googlenav/ui/au;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Lcom/google/googlenav/ui/au;-><init>(Lat/p;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lat/p;->a(Lat/w;)V

    .line 1048
    :cond_45a
    invoke-direct/range {p0 .. p0}, Lcom/google/googlenav/ui/v;->aC()V

    .line 1050
    new-instance v3, Lcom/google/googlenav/friend/a;

    invoke-direct {v3}, Lcom/google/googlenav/friend/a;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->aM:Lcom/google/googlenav/friend/a;

    .line 1051
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/K;->aA()Z

    move-result v3

    if-eqz v3, :cond_47b

    .line 1052
    invoke-virtual/range {p0 .. p0}, Lcom/google/googlenav/ui/v;->s()V

    .line 1055
    invoke-virtual/range {p0 .. p0}, Lcom/google/googlenav/ui/v;->y()Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/googlenav/ui/v;->c:Z

    .line 1058
    :cond_47b
    invoke-virtual/range {p0 .. p0}, Lcom/google/googlenav/ui/v;->x()LaD/i;

    move-result-object v3

    invoke-static {v3}, Laz/a;->a(LaD/i;)V

    .line 1059
    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v3

    if-nez v3, :cond_48b

    .line 1062
    invoke-static {}, Laz/a;->b()V

    .line 1065
    :cond_48b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/googlenav/ui/v;->ab:LY/c;

    invoke-static {v3}, Lcom/google/googlenav/ui/view/dialog/ai;->a(LY/c;)V

    .line 1066
    const-string v3, "GmmController.GmmController"

    invoke-static {v3}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 1067
    return-void

    .line 947
    :cond_498
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->A:Lcom/google/googlenav/friend/j;

    goto/16 :goto_2a4

    .line 963
    :cond_49f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->x:Lcom/google/googlenav/friend/J;

    .line 964
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->y:Lcom/google/googlenav/friend/p;

    .line 965
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/googlenav/ui/v;->z:Lcom/google/googlenav/friend/ai;

    goto/16 :goto_314
.end method

.method private a(Lax/E;)Lcom/google/googlenav/ai;
    .registers 4
    .parameter

    .prologue
    .line 3592
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lax/E;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lax/E;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3594
    :cond_e
    const/4 v0, 0x0

    .line 3596
    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {p1}, Lax/E;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ai;

    move-result-object v0

    goto :goto_f
.end method

.method static a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1151
    invoke-static {p0}, Lcom/google/googlenav/ui/s;->b(I)I

    move-result v0

    invoke-static {v0}, Lat/p;->a(I)I

    move-result v0

    .line 1153
    invoke-static {p1}, Lcom/google/googlenav/ui/s;->b(I)I

    move-result v1

    invoke-static {v1}, Lat/p;->a(I)I

    move-result v1

    .line 1156
    mul-int/2addr v0, v1

    invoke-static {v0}, Lat/P;->a(I)V

    .line 1157
    return-void
.end method

.method private static a(IILjava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3142
    const/4 v0, 0x4

    const-string v1, "ws"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "m="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 3146
    return-void
.end method

.method private a(LS/e;I)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 2082
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    .line 2083
    invoke-virtual {v0}, Lac/h;->t()I

    move-result v1

    .line 2084
    invoke-virtual {v0}, Lac/h;->s()I

    move-result v2

    .line 2085
    invoke-virtual {v0}, Lac/h;->r()I

    move-result v0

    .line 2087
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/googlenav/ui/v;->p:LZ/a;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  Z: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v6}, Lat/u;->d()Lat/Y;

    move-result-object v6

    invoke-virtual {v6}, Lat/Y;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  C: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/google/googlenav/ui/v;->I:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  S: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Lcom/google/googlenav/ui/v;->e(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/google/googlenav/common/util/k;->c()I

    move-result v6

    invoke-static {v6}, Lcom/google/googlenav/common/util/k;->a(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/google/googlenav/common/util/k;->b()I

    move-result v6

    invoke-static {v6}, Lcom/google/googlenav/common/util/k;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/google/googlenav/common/util/k;->d()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NW: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v1, v1, 0xa

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "Kbytes/s"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "  R/S: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "K "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v0, v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 2098
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->aD:Lcom/google/googlenav/ui/aB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aB;->j()[Ljava/lang/String;

    move-result-object v0

    .line 2099
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bn;->F()I

    move-result v1

    sget-object v2, Lcom/google/googlenav/ui/v;->aj:Ljava/lang/String;

    invoke-static {p1, v1, v3, v0, v2}, Lcom/google/googlenav/ui/aU;->a(LS/e;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2101
    return-void
.end method

.method static a(Lcom/google/googlenav/aW;)V
    .registers 8
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1670
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->O()Lat/B;

    move-result-object v0

    .line 1671
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->U()Lat/H;

    move-result-object v1

    invoke-virtual {v1}, Lat/H;->b()Lat/Y;

    move-result-object v1

    .line 1672
    new-instance v2, Lat/H;

    invoke-direct {v2, v0, v1, v4}, Lat/H;-><init>(Lat/B;Lat/Y;I)V

    .line 1673
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->U()Lat/H;

    move-result-object v0

    invoke-static {v0, v2}, Lat/u;->a(Lat/H;Lat/H;)I

    move-result v0

    .line 1674
    if-gez v0, :cond_1f

    .line 1713
    :cond_1e
    :goto_1e
    return-void

    .line 1678
    :cond_1f
    invoke-static {v0}, Lat/u;->b(I)I

    move-result v0

    .line 1682
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->V()Lat/H;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 1689
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->V()Lat/H;

    move-result-object v1

    invoke-static {v1, v2}, Lat/u;->a(Lat/H;Lat/H;)I

    move-result v1

    .line 1691
    if-ltz v1, :cond_1e

    .line 1695
    invoke-static {v1}, Lat/u;->b(I)I

    move-result v1

    .line 1696
    sub-int/2addr v1, v0

    .line 1698
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "s=c"

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "t="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ts="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1711
    :goto_6d
    const-string v1, "stat"

    invoke-static {v5, v1, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 1705
    :cond_73
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "s=nc"

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-static {v1}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6d
.end method

.method private a(Lcom/google/googlenav/ch;)V
    .registers 5
    .parameter

    .prologue
    .line 3061
    new-instance v0, Lcom/google/googlenav/cq;

    invoke-virtual {p1}, Lcom/google/googlenav/ch;->i()Lcom/google/googlenav/ca;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/cq;-><init>(Lcom/google/googlenav/ca;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/ai;BZ)V

    .line 3063
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/u;)V
    .registers 4
    .parameter

    .prologue
    .line 2027
    if-nez p1, :cond_9

    .line 2033
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LaM/am;->b(Lcom/google/googlenav/ui/u;)V

    .line 2073
    :goto_8
    return-void

    .line 2037
    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ax:Lcom/google/googlenav/ui/c;

    if-eqz v0, :cond_12

    .line 2038
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ax:Lcom/google/googlenav/ui/c;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/c;->a(Lcom/google/googlenav/ui/u;)V

    .line 2040
    :cond_12
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/v;->b(Lcom/google/googlenav/ui/u;)V

    .line 2041
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ax:Lcom/google/googlenav/ui/c;

    if-eqz v0, :cond_1e

    .line 2042
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ax:Lcom/google/googlenav/ui/c;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/c;->b(Lcom/google/googlenav/ui/u;)V

    .line 2044
    :cond_1e
    invoke-virtual {p1}, Lcom/google/googlenav/ui/u;->g()Z

    move-result v0

    if-nez v0, :cond_27

    .line 2045
    invoke-virtual {p1}, Lcom/google/googlenav/ui/u;->h()V

    .line 2049
    :cond_27
    iget v0, p0, Lcom/google/googlenav/ui/v;->I:I

    if-nez v0, :cond_2f

    .line 2051
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->q()V

    goto :goto_8

    .line 2057
    :cond_2f
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v1

    .line 2058
    if-eqz v1, :cond_68

    .line 2059
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    if-nez v0, :cond_71

    :cond_49
    const/4 v0, 0x1

    .line 2061
    :goto_4a
    invoke-virtual {v1}, LaM/i;->ab()Z

    move-result v1

    if-nez v1, :cond_5e

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    invoke-virtual {v0}, LaM/i;->aa()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2063
    :cond_5e
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->G()Z

    .line 2064
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0, p1}, LaM/am;->a(Lcom/google/googlenav/ui/u;)V

    .line 2070
    :cond_68
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/v;->c(Lcom/google/googlenav/ui/u;)V

    .line 2072
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0, p1}, LaM/am;->b(Lcom/google/googlenav/ui/u;)V

    goto :goto_8

    .line 2059
    :cond_71
    const/4 v0, 0x0

    goto :goto_4a
.end method

.method private a(Lcom/google/googlenav/ui/u;LS/e;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1958
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->w()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->H()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->C()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1960
    invoke-static {}, Lcom/google/googlenav/ui/aK;->a()Lcom/google/googlenav/ui/aK;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/u;->a()LS/e;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    invoke-virtual {v2}, Lat/p;->o()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/aK;->a(LS/e;Z)V

    .line 1964
    :cond_2b
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/ju;->b(Lcom/google/googlenav/ui/u;)V

    .line 1967
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->w:Lcom/google/googlenav/ui/aC;

    invoke-interface {v0}, Lcom/google/googlenav/ui/aC;->a()V

    .line 1970
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->F()I

    move-result v0

    .line 1971
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_42

    .line 1972
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->u:Lcom/google/googlenav/ui/bJ;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/bJ;->a(Lcom/google/googlenav/ui/u;)V

    .line 1974
    :cond_42
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/v;)V
    .registers 1
    .parameter

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aP()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/v;Lcom/google/googlenav/ai;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/v;->b(Lcom/google/googlenav/ai;)V

    return-void
.end method

.method private a(LZ/a;I)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3992
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v2

    .line 3993
    invoke-virtual {p1}, LZ/a;->d()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 4022
    :cond_c
    :goto_c
    return v0

    .line 3998
    :cond_d
    if-eq v2, v1, :cond_18

    const/4 v3, 0x2

    if-eq v2, v3, :cond_18

    const/4 v3, 0x3

    if-eq v2, v3, :cond_18

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    .line 4004
    :cond_18
    packed-switch v2, :pswitch_data_42

    move p2, v0

    .line 4019
    :goto_1c
    :pswitch_1c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->Q()V

    .line 4020
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    iget-object v3, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v3}, Lat/u;->c()Lat/B;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v4}, Lat/u;->d()Lat/Y;

    move-result-object v4

    invoke-virtual {v3, v0, p2, v4}, Lat/B;->a(IILat/Y;)Lat/B;

    move-result-object v0

    invoke-virtual {v2, v0}, Lat/u;->c(Lat/B;)V

    move v0, v1

    .line 4022
    goto :goto_c

    .line 4006
    :pswitch_36
    neg-int p2, p2

    .line 4007
    goto :goto_1c

    :pswitch_38
    move v5, v0

    move v0, p2

    move p2, v5

    .line 4013
    goto :goto_1c

    .line 4015
    :pswitch_3c
    neg-int p2, p2

    move v5, v0

    move v0, p2

    move p2, v5

    goto :goto_1c

    .line 4004
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_36
        :pswitch_1c
        :pswitch_3c
        :pswitch_38
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/googlenav/ui/v;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/google/googlenav/ui/v;->U:Z

    return p1
.end method

.method private aC()V
    .registers 3

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->C:Lan/h;

    invoke-interface {v0, p0}, Lan/h;->a(Lan/y;)V

    .line 1461
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->x:Lcom/google/googlenav/friend/J;

    if-eqz v0, :cond_10

    .line 1462
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->C:Lan/h;

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->x:Lcom/google/googlenav/friend/J;

    invoke-interface {v0, v1}, Lan/h;->a(Lan/y;)V

    .line 1466
    :cond_10
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/googlenav/ui/A;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/A;-><init>(Lcom/google/googlenav/ui/v;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    .line 1480
    return-void
.end method

.method private aD()V
    .registers 4

    .prologue
    .line 1484
    const-string v0, "LastSessionTime"

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/j;->a(Ljava/lang/String;J)V

    .line 1486
    return-void
.end method

.method private aE()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1502
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->s:Lcom/google/googlenav/common/io/j;

    const-string v1, "TRAFFIC_ON"

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->a_(Ljava/lang/String;)[B

    move-result-object v0

    .line 1503
    if-eqz v0, :cond_16

    array-length v1, v0

    if-ne v1, v2, :cond_16

    .line 1506
    aget-byte v0, v0, v3

    if-ne v0, v2, :cond_16

    .line 1507
    invoke-virtual {p0, v2, v3}, Lcom/google/googlenav/ui/v;->a(ZZ)V

    .line 1510
    :cond_16
    return-void
.end method

.method private aF()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1803
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v2

    .line 1804
    if-eqz v2, :cond_1f

    .line 1805
    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/C;->v()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/C;->ag_()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1819
    :cond_16
    :goto_16
    return v0

    .line 1809
    :cond_17
    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/C;->n()Z

    move-result v2

    if-eqz v2, :cond_16

    move v0, v1

    goto :goto_16

    .line 1812
    :cond_1f
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v2}, LaM/am;->I()LaM/i;

    move-result-object v2

    .line 1813
    if-eqz v2, :cond_16

    .line 1815
    invoke-virtual {v2}, LaM/i;->aZ()Z

    move-result v2

    if-eqz v2, :cond_16

    move v0, v1

    goto :goto_16
.end method

.method private aG()V
    .registers 3

    .prologue
    .line 1950
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/v;->J:J

    .line 1951
    return-void
.end method

.method private aH()Z
    .registers 2

    .prologue
    .line 2298
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->ai()Z

    move-result v0

    return v0
.end method

.method private aI()V
    .registers 3

    .prologue
    .line 2561
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/v;->M:J

    .line 2562
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    invoke-virtual {v0}, Lat/p;->j()V

    .line 2563
    return-void
.end method

.method private aJ()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2749
    iget-boolean v0, p0, Lcom/google/googlenav/ui/v;->aC:Z

    if-nez v0, :cond_c

    .line 2750
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0, v1}, LaM/am;->d(Z)V

    .line 2751
    iput-boolean v1, p0, Lcom/google/googlenav/ui/v;->aC:Z

    .line 2758
    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ao:LZ/c;

    invoke-virtual {v0}, LZ/c;->a()V

    .line 2759
    return-void
.end method

.method private aK()V
    .registers 3

    .prologue
    .line 2789
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->q()I

    move-result v0

    sparse-switch v0, :sswitch_data_32

    .line 2808
    :goto_9
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v1}, LaM/am;->I()LaM/i;

    move-result-object v1

    invoke-virtual {v0, v1}, LaM/am;->d(LaM/i;)V

    .line 2809
    :goto_14
    return-void

    .line 2791
    :sswitch_15
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/v;->r(Z)V

    goto :goto_14

    .line 2795
    :sswitch_1a
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/v;->r(Z)V

    goto :goto_9

    .line 2799
    :sswitch_1f
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->i()Lcom/google/googlenav/ui/wizard/bZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bZ;->j()V

    goto :goto_9

    .line 2803
    :sswitch_2d
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->W()V

    goto :goto_14

    .line 2789
    nop

    :sswitch_data_32
    .sparse-switch
        0x1 -> :sswitch_1a
        0x2 -> :sswitch_15
        0x8 -> :sswitch_1f
        0xa -> :sswitch_2d
    .end sparse-switch
.end method

.method private aL()V
    .registers 2

    .prologue
    .line 4587
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aN()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4588
    invoke-static {}, Lay/a;->z()Lay/a;

    move-result-object v0

    invoke-virtual {v0}, Lay/a;->e()V

    .line 4590
    :cond_d
    return-void
.end method

.method private aM()V
    .registers 2

    .prologue
    .line 4596
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aN()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4597
    invoke-static {}, Lay/a;->z()Lay/a;

    move-result-object v0

    invoke-virtual {v0}, Lay/a;->f()V

    .line 4599
    :cond_d
    return-void
.end method

.method private aN()Z
    .registers 2

    .prologue
    .line 4602
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->w()LaM/bK;

    move-result-object v0

    .line 4603
    if-eqz v0, :cond_12

    check-cast v0, LaM/bK;

    invoke-virtual {v0}, LaM/bK;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private aO()V
    .registers 2

    .prologue
    .line 4759
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->k:LY/d;

    if-eqz v0, :cond_9

    .line 4760
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->k:LY/d;

    invoke-virtual {v0}, LY/d;->c()I

    .line 4762
    :cond_9
    return-void
.end method

.method private aP()V
    .registers 2

    .prologue
    .line 4806
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    if-eqz v0, :cond_9

    .line 4807
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->R()V

    .line 4809
    :cond_9
    return-void
.end method

.method private aQ()V
    .registers 3

    .prologue
    .line 5068
    invoke-static {}, Lao/b;->c()I

    move-result v0

    .line 5069
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->b(I)V

    .line 5070
    return-void
.end method

.method private aR()V
    .registers 3

    .prologue
    .line 5180
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 5181
    invoke-virtual {v0}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, LaM/i;->as()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 5183
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LaM/i;->a(B)V

    .line 5185
    :cond_1c
    return-void
.end method

.method private aS()Z
    .registers 2

    .prologue
    .line 5516
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->ar()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5517
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->af:Lcom/google/googlenav/ui/wizard/z;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->a()V

    .line 5518
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->T()V

    .line 5519
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->at()V

    .line 5520
    const/4 v0, 0x1

    .line 5522
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private aT()V
    .registers 4

    .prologue
    .line 5682
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->g()Lcom/google/googlenav/common/util/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/util/l;->a()Ljava/util/List;

    move-result-object v0

    .line 5683
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5684
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c

    .line 5686
    :cond_1e
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/v;)Lcom/google/googlenav/ui/bJ;
    .registers 2
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->u:Lcom/google/googlenav/ui/bJ;

    return-object v0
.end method

.method private b(LS/e;)Lcom/google/googlenav/ui/u;
    .registers 9
    .parameter

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    .line 1780
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bn;->E()I

    move-result v1

    .line 1781
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bn;->F()I

    move-result v2

    .line 1783
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->n()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->ag_()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 1785
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->r()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->s()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->t()I

    move-result v5

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->u()I

    move-result v6

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/googlenav/ui/u;->a(LS/e;IIIIII)Lcom/google/googlenav/ui/u;

    move-result-object v0

    .line 1791
    :goto_39
    return-object v0

    :cond_3a
    invoke-static {p1, v1, v2}, Lcom/google/googlenav/ui/u;->a(LS/e;II)Lcom/google/googlenav/ui/u;

    move-result-object v0

    goto :goto_39
.end method

.method private b(LZ/b;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2641
    iget-boolean v0, p0, Lcom/google/googlenav/ui/v;->aC:Z

    .line 2642
    iget-boolean v1, p0, Lcom/google/googlenav/ui/v;->aC:Z

    if-eqz v1, :cond_e

    .line 2643
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v1, v4}, LaM/am;->d(Z)V

    .line 2644
    iput-boolean v4, p0, Lcom/google/googlenav/ui/v;->aC:Z

    .line 2657
    :cond_e
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->F()I

    move-result v1

    .line 2660
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1f

    .line 2661
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->u:Lcom/google/googlenav/ui/bJ;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/bJ;->a(LZ/b;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2729
    :cond_1e
    :goto_1e
    return-void

    .line 2666
    :cond_1f
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->s()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/wizard/ju;->a(LZ/b;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/googlenav/ui/v;->a(ILZ/a;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2669
    :cond_34
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v1, p1}, LaM/am;->a(LZ/b;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2673
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->C()Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 2674
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/v;->c(LZ/b;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 2676
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    invoke-virtual {p1}, LZ/b;->k()I

    move-result v1

    invoke-virtual {p1}, LZ/b;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lat/p;->b(II)Lat/B;

    move-result-object v0

    .line 2678
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/v;->a(Lat/B;)V

    goto :goto_1e

    .line 2685
    :cond_5a
    invoke-virtual {p1}, LZ/b;->d()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 2689
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v2}, Lat/u;->c()Lat/B;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v3}, Lat/u;->d()Lat/Y;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lat/u;->e(Lat/B;Lat/Y;)V

    .line 2691
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ao:LZ/c;

    invoke-virtual {v1}, LZ/c;->a()V

    .line 2692
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ao:LZ/c;

    invoke-virtual {v1, p1}, LZ/c;->a(LZ/b;)V

    .line 2693
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/googlenav/ui/v;->V:Z

    .line 2696
    :cond_7e
    invoke-static {}, Lcom/google/googlenav/ui/s;->c()Z

    move-result v1

    if-eqz v1, :cond_89

    .line 2697
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->S:Lcom/google/googlenav/ui/s;

    invoke-virtual {v1, p1, v0}, Lcom/google/googlenav/ui/s;->a(LZ/b;Z)V

    .line 2699
    :cond_89
    invoke-virtual {p1}, LZ/b;->c()Z

    move-result v0

    if-eqz v0, :cond_c1

    iget-object v0, p0, Lcom/google/googlenav/ui/v;->R:Lat/B;

    if-eqz v0, :cond_c1

    .line 2700
    invoke-virtual {p1}, LZ/b;->m()Landroid/graphics/Point;

    move-result-object v0

    .line 2703
    if-eqz v0, :cond_1e

    .line 2704
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ao:LZ/c;

    invoke-virtual {v1, p1}, LZ/c;->a(LZ/b;)V

    .line 2707
    invoke-static {}, Lcom/google/googlenav/ui/s;->c()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2708
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 2709
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 2711
    invoke-static {v1, v0}, Lcom/google/googlenav/ui/s;->d(II)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 2712
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    iget-object v3, p0, Lcom/google/googlenav/ui/v;->R:Lat/B;

    iget-object v4, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v4}, Lat/u;->d()Lat/Y;

    move-result-object v4

    invoke-virtual {v3, v1, v0, v4}, Lat/B;->a(IILat/Y;)Lat/B;

    move-result-object v0

    invoke-virtual {v2, v0}, Lat/u;->c(Lat/B;)V

    goto/16 :goto_1e

    .line 2718
    :cond_c1
    invoke-virtual {p1}, LZ/b;->e()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 2719
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ao:LZ/c;

    invoke-virtual {v0, p1}, LZ/c;->a(LZ/b;)V

    .line 2720
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ao:LZ/c;

    invoke-virtual {v0}, LZ/c;->d()V

    .line 2721
    iput-boolean v4, p0, Lcom/google/googlenav/ui/v;->V:Z

    .line 2722
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ao:LZ/c;

    invoke-virtual {v1}, LZ/c;->b()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ao:LZ/c;

    invoke-virtual {v2}, LZ/c;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lat/u;->a(II)V

    .line 2726
    :cond_e4
    invoke-static {}, Lcom/google/googlenav/ui/s;->c()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2727
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v0}, Lat/u;->c()Lat/B;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/v;->R:Lat/B;

    goto/16 :goto_1e
.end method

.method private b(Lcom/google/googlenav/ai;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3645
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->D()V

    .line 3647
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v0

    .line 3648
    if-eqz v0, :cond_10

    .line 3649
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v1, v0}, Lat/u;->c(Lat/B;)V

    .line 3652
    :cond_10
    new-array v0, v3, [Lcom/google/googlenav/ai;

    aput-object p1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/v;->c(Ljava/util/List;Lcom/google/googlenav/bc;)Lcom/google/googlenav/aW;

    move-result-object v0

    .line 3653
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v1, v0, v3}, LaM/am;->a(Lcom/google/googlenav/aW;Z)LaM/bj;

    move-result-object v0

    .line 3654
    invoke-virtual {v0}, LaM/bj;->ar()Lcom/google/googlenav/F;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/google/googlenav/F;->a(I)V

    .line 3655
    invoke-virtual {v0}, LaM/bj;->an()Z

    .line 3656
    return-void
.end method

.method private b(Lcom/google/googlenav/ui/u;)V
    .registers 11
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 2159
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    if-nez v0, :cond_7

    .line 2214
    :cond_6
    :goto_6
    return-void

    .line 2171
    :cond_7
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v7

    .line 2174
    invoke-virtual {v7}, Lac/h;->g()V

    .line 2184
    :try_start_e
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/u;->e()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/u;->f()I

    move-result v3

    iget v4, p0, Lcom/google/googlenav/ui/v;->n:I

    iget v5, p0, Lcom/google/googlenav/ui/v;->o:I

    invoke-virtual {v0, v1, v3, v4, v5}, Lat/p;->a(IIII)V

    .line 2191
    iget-object v8, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    monitor-enter v8
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_6c

    .line 2192
    :try_start_22
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    check-cast v0, Lat/h;

    invoke-virtual {v0}, Lat/h;->g()V

    .line 2196
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->V()Z

    move-result v0

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/google/googlenav/ui/v;->v:Lcom/google/googlenav/ui/bK;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bK;->f()Z

    move-result v0

    if-nez v0, :cond_67

    invoke-virtual {v7}, Lac/h;->n()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 2199
    :goto_3d
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->v:Lcom/google/googlenav/ui/bK;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bK;->g()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 2200
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/u;->b()LS/e;

    move-result-object v1

    iget-object v3, p0, Lcom/google/googlenav/ui/v;->C:Lan/h;

    invoke-interface {v3}, Lan/h;->g()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lat/p;->a(LS/e;ZZZZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/v;->N:Z

    .line 2203
    :cond_59
    monitor-exit v8
    :try_end_5a
    .catchall {:try_start_22 .. :try_end_5a} :catchall_69

    .line 2205
    invoke-virtual {v7}, Lac/h;->h()V

    .line 2209
    iget-boolean v0, p0, Lcom/google/googlenav/ui/v;->am:Z

    if-eqz v0, :cond_6

    .line 2210
    iput-boolean v6, p0, Lcom/google/googlenav/ui/v;->am:Z

    .line 2211
    invoke-virtual {v7}, Lac/h;->h()V

    goto :goto_6

    :cond_67
    move v2, v6

    .line 2196
    goto :goto_3d

    .line 2203
    :catchall_69
    move-exception v0

    :try_start_6a
    monitor-exit v8
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    :try_start_6b
    throw v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    .line 2205
    :catchall_6c
    move-exception v0

    invoke-virtual {v7}, Lac/h;->h()V

    .line 2209
    iget-boolean v1, p0, Lcom/google/googlenav/ui/v;->am:Z

    if-eqz v1, :cond_79

    .line 2210
    iput-boolean v6, p0, Lcom/google/googlenav/ui/v;->am:Z

    .line 2211
    invoke-virtual {v7}, Lac/h;->h()V

    :cond_79
    throw v0
.end method

.method private b(Ljava/lang/Object;B)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 4913
    if-eqz p1, :cond_7

    instance-of v0, p1, Lcom/google/googlenav/aW;

    if-nez v0, :cond_8

    .line 4948
    :cond_7
    :goto_7
    return-void

    .line 4917
    :cond_8
    check-cast p1, Lcom/google/googlenav/aW;

    .line 4922
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->i()I

    move-result v0

    .line 4926
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->f()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    move v0, v1

    .line 4933
    :cond_16
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v2}, LaM/am;->I()LaM/i;

    move-result-object v2

    invoke-virtual {v2}, LaM/i;->av()I

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v2}, LaM/am;->I()LaM/i;

    move-result-object v2

    invoke-virtual {v2}, LaM/i;->av()I

    move-result v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_47

    .line 4935
    :cond_30
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    check-cast v0, LaM/bj;

    .line 4945
    :goto_38
    invoke-virtual {v0}, LaM/bj;->ar()Lcom/google/googlenav/F;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/F;->c()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 4946
    invoke-virtual {v0, p2}, LaM/bj;->a(B)V

    goto :goto_7

    .line 4937
    :cond_47
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v2, p1, v1}, LaM/am;->a(Lcom/google/googlenav/aW;Z)LaM/bj;

    move-result-object v1

    .line 4942
    invoke-virtual {v1}, LaM/bj;->ar()Lcom/google/googlenav/F;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/googlenav/F;->a(I)V

    move-object v0, v1

    goto :goto_38
.end method

.method private b(Lcom/google/googlenav/aW;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3307
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->aB()Z

    move-result v2

    if-nez v2, :cond_d

    .line 3335
    :cond_c
    :goto_c
    return v0

    .line 3311
    :cond_d
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->B()Ljava/lang/String;

    move-result-object v2

    .line 3312
    if-eqz v2, :cond_c

    const-string v3, "##exp "

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_c

    .line 3316
    const-string v0, "##exp "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 3318
    :try_start_25
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3319
    invoke-static {}, Laf/c;->a()Laf/c;

    move-result-object v3

    .line 3320
    if-eqz v3, :cond_59

    .line 3321
    if-gez v0, :cond_5b

    .line 3322
    neg-int v4, v0

    invoke-virtual {v3, v4}, Laf/c;->b(I)V

    .line 3327
    :goto_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Experiment: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-gez v0, :cond_7e

    const-string v0, "disabled"

    :goto_4e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    :cond_59
    move v0, v1

    .line 3335
    goto :goto_c

    .line 3324
    :cond_5b
    invoke-virtual {v3, v0}, Laf/c;->a(I)V
    :try_end_5e
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_5e} :catch_5f

    goto :goto_35

    .line 3330
    :catch_5f
    move-exception v0

    .line 3332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad Experiment id: \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    move v0, v1

    .line 3333
    goto :goto_c

    .line 3327
    :cond_7e
    :try_start_7e
    const-string v0, "enabled"
    :try_end_80
    .catch Ljava/lang/NumberFormatException; {:try_start_7e .. :try_end_80} :catch_5f

    goto :goto_4e
.end method

.method static synthetic c(Lcom/google/googlenav/ui/v;)LY/c;
    .registers 2
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ab:LY/c;

    return-object v0
.end method

.method private c(Ljava/util/List;Lcom/google/googlenav/bc;)Lcom/google/googlenav/aW;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 3672
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v0}, Lat/u;->f()Lat/H;

    move-result-object v1

    .line 3673
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/ai;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/ai;

    .line 3674
    if-eqz p2, :cond_1c

    iget-object v2, p2, Lcom/google/googlenav/bc;->a:Ljava/lang/String;

    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 3675
    :cond_1c
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v2, v1}, Lat/u;->a(Lat/H;)I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v3, v1}, Lat/u;->b(Lat/H;)I

    move-result v3

    invoke-static {v0, v1, v2, v3, p2}, Lcom/google/googlenav/aW;->a([Lcom/google/googlenav/ai;Lat/H;IILcom/google/googlenav/bc;)Lcom/google/googlenav/aW;

    move-result-object v0

    .line 3682
    :goto_2c
    return-object v0

    :cond_2d
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-static {v0, p2, v1}, Lcom/google/googlenav/aW;->a([Lcom/google/googlenav/ai;Lcom/google/googlenav/bc;Lat/u;)Lcom/google/googlenav/aW;

    move-result-object v0

    goto :goto_2c
.end method

.method private c(Lac/g;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 3149
    const/16 v0, 0x4ef

    .line 3150
    instance-of v1, p1, Lad/s;

    if-eqz v1, :cond_d

    .line 3151
    const/16 v0, 0x1c4

    .line 3159
    :cond_8
    :goto_8
    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3152
    :cond_d
    instance-of v1, p1, Lad/w;

    if-eqz v1, :cond_14

    .line 3153
    const/16 v0, 0x1c5

    goto :goto_8

    .line 3154
    :cond_14
    instance-of v1, p1, Lad/x;

    if-eqz v1, :cond_1b

    .line 3155
    const/16 v0, 0x1c6

    goto :goto_8

    .line 3156
    :cond_1b
    instance-of v1, p1, Lad/i;

    if-eqz v1, :cond_8

    .line 3157
    const/16 v0, 0x1c3

    goto :goto_8
.end method

.method private c(LS/e;)V
    .registers 12
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1828
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aG()V

    .line 1831
    iput-boolean v0, p0, Lcom/google/googlenav/ui/v;->N:Z

    .line 1833
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/v;->b(LS/e;)Lcom/google/googlenav/ui/u;

    move-result-object v7

    .line 1834
    iput-object v7, p0, Lcom/google/googlenav/ui/v;->aw:Lcom/google/googlenav/ui/u;

    .line 1836
    const/4 v3, -0x1

    .line 1843
    :try_start_10
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/ju;->u()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1844
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v2, v7}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/u;)V

    .line 1847
    :cond_1d
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aF()Z

    move-result v2

    if-nez v2, :cond_94

    move v3, v5

    .line 1858
    :goto_24
    if-nez v3, :cond_bc

    move v4, v0

    .line 1862
    :goto_27
    if-ne v3, v0, :cond_bf

    iget v2, p0, Lcom/google/googlenav/ui/v;->T:I

    if-eq v2, v6, :cond_31

    iget v2, p0, Lcom/google/googlenav/ui/v;->T:I

    if-ne v2, v5, :cond_bf

    :cond_31
    move v2, v0

    :goto_32
    or-int/2addr v4, v2

    .line 1867
    if-ne v3, v0, :cond_3d

    iget-object v2, p0, Lcom/google/googlenav/ui/v;->S:Lcom/google/googlenav/ui/s;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/s;->d()Z

    move-result v2

    if-nez v2, :cond_45

    :cond_3d
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->S:Lcom/google/googlenav/ui/s;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/s;->e()Z

    move-result v2

    if-eqz v2, :cond_c2

    :cond_45
    move v2, v0

    :goto_46
    or-int/2addr v2, v4

    .line 1870
    iput v3, p0, Lcom/google/googlenav/ui/v;->T:I

    .line 1873
    if-eqz v2, :cond_58

    .line 1876
    iget-object v4, p0, Lcom/google/googlenav/ui/v;->S:Lcom/google/googlenav/ui/s;

    iget v8, p0, Lcom/google/googlenav/ui/v;->n:I

    iget v9, p0, Lcom/google/googlenav/ui/v;->o:I

    invoke-virtual {v4, v8, v9}, Lcom/google/googlenav/ui/s;->a(II)Lcom/google/googlenav/ui/u;

    move-result-object v4

    .line 1878
    invoke-direct {p0, v4}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/ui/u;)V

    .line 1882
    :cond_58
    if-ne v3, v6, :cond_c4

    .line 1884
    invoke-direct {p0, v7}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/ui/u;)V

    .line 1912
    :cond_5d
    :goto_5d
    invoke-direct {p0, v7, p1}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/ui/u;LS/e;)V
    :try_end_60
    .catchall {:try_start_10 .. :try_end_60} :catchall_e3

    .line 1914
    iget-boolean v2, p0, Lcom/google/googlenav/ui/v;->a:Z

    if-eqz v2, :cond_67

    .line 1915
    invoke-direct {p0, p1, v3}, Lcom/google/googlenav/ui/v;->a(LS/e;I)V

    .line 1921
    :cond_67
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    invoke-virtual {v2}, Lat/p;->a()Lat/D;

    move-result-object v2

    invoke-virtual {v2}, Lat/D;->m()Z

    move-result v2

    if-eqz v2, :cond_118

    iget-object v2, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    invoke-virtual {v2}, Lat/p;->a()Lat/D;

    move-result-object v2

    invoke-virtual {v2}, Lat/D;->n()Z

    move-result v2

    if-nez v2, :cond_118

    .line 1923
    :goto_7f
    invoke-static {}, Lcom/google/googlenav/friend/p;->d()Z

    move-result v1

    .line 1924
    if-nez v0, :cond_87

    if-eqz v1, :cond_8a

    .line 1925
    :cond_87
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/v;->d(LS/e;)V

    .line 1935
    :cond_8a
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->V()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 1937
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->q()V

    .line 1940
    :cond_93
    return-void

    .line 1849
    :cond_94
    :try_start_94
    invoke-static {}, Lcom/google/googlenav/ui/s;->c()Z

    move-result v2

    if-eqz v2, :cond_a4

    iget-object v2, p0, Lcom/google/googlenav/ui/v;->S:Lcom/google/googlenav/ui/s;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/s;->f()Z

    move-result v2

    if-eqz v2, :cond_a4

    move v3, v0

    .line 1850
    goto :goto_24

    .line 1851
    :cond_a4
    invoke-static {}, Lcom/google/googlenav/ui/s;->c()Z

    move-result v2

    if-eqz v2, :cond_b6

    iget-object v2, p0, Lcom/google/googlenav/ui/v;->v:Lcom/google/googlenav/ui/bK;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bK;->d()Z

    move-result v2

    if-nez v2, :cond_b6

    iget v2, p0, Lcom/google/googlenav/ui/v;->I:I

    if-nez v2, :cond_b9

    :cond_b6
    move v3, v6

    .line 1853
    goto/16 :goto_24

    :cond_b9
    move v3, v1

    .line 1855
    goto/16 :goto_24

    :cond_bc
    move v4, v1

    .line 1858
    goto/16 :goto_27

    :cond_bf
    move v2, v1

    .line 1862
    goto/16 :goto_32

    :cond_c2
    move v2, v1

    .line 1867
    goto :goto_46

    .line 1885
    :cond_c4
    if-eq v3, v5, :cond_5d

    .line 1895
    iget-object v4, p0, Lcom/google/googlenav/ui/v;->S:Lcom/google/googlenav/ui/s;

    invoke-virtual {v4, v7}, Lcom/google/googlenav/ui/s;->a(Lcom/google/googlenav/ui/u;)V

    .line 1896
    iget-object v4, p0, Lcom/google/googlenav/ui/v;->S:Lcom/google/googlenav/ui/s;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/s;->j()Z

    move-result v4

    if-eqz v4, :cond_d6

    .line 1898
    invoke-direct {p0, v7}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/ui/u;)V

    .line 1900
    :cond_d6
    iget-object v4, p0, Lcom/google/googlenav/ui/v;->S:Lcom/google/googlenav/ui/s;

    invoke-virtual {v4, v7}, Lcom/google/googlenav/ui/s;->b(Lcom/google/googlenav/ui/u;)V

    .line 1901
    if-nez v2, :cond_5d

    .line 1908
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/ui/u;)V
    :try_end_e1
    .catchall {:try_start_94 .. :try_end_e1} :catchall_e3

    goto/16 :goto_5d

    .line 1914
    :catchall_e3
    move-exception v2

    iget-boolean v4, p0, Lcom/google/googlenav/ui/v;->a:Z

    if-eqz v4, :cond_eb

    .line 1915
    invoke-direct {p0, p1, v3}, Lcom/google/googlenav/ui/v;->a(LS/e;I)V

    .line 1921
    :cond_eb
    iget-object v3, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    invoke-virtual {v3}, Lat/p;->a()Lat/D;

    move-result-object v3

    invoke-virtual {v3}, Lat/D;->m()Z

    move-result v3

    if-eqz v3, :cond_11b

    iget-object v3, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    invoke-virtual {v3}, Lat/p;->a()Lat/D;

    move-result-object v3

    invoke-virtual {v3}, Lat/D;->n()Z

    move-result v3

    if-nez v3, :cond_11b

    .line 1923
    :goto_103
    invoke-static {}, Lcom/google/googlenav/friend/p;->d()Z

    move-result v1

    .line 1924
    if-nez v0, :cond_10b

    if-eqz v1, :cond_10e

    .line 1925
    :cond_10b
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/v;->d(LS/e;)V

    .line 1935
    :cond_10e
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->V()Z

    move-result v0

    if-eqz v0, :cond_117

    .line 1937
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->q()V

    .line 1939
    :cond_117
    throw v2

    :cond_118
    move v0, v1

    .line 1921
    goto/16 :goto_7f

    :cond_11b
    move v0, v1

    goto :goto_103
.end method

.method private c(Lad/k;)V
    .registers 4
    .parameter

    .prologue
    .line 3084
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->C:Lan/h;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/v;->C:Lan/h;

    invoke-interface {v0}, Lan/h;->g()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3109
    :cond_c
    :goto_c
    return-void

    .line 3088
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->C:Lan/h;

    invoke-interface {v0}, Lan/h;->m()Lan/s;

    move-result-object v0

    .line 3089
    if-eqz v0, :cond_c

    .line 3092
    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v1

    .line 3093
    invoke-virtual {v0}, Lan/s;->b()Ln/B;

    move-result-object v0

    .line 3098
    if-nez v0, :cond_25

    .line 3099
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    invoke-virtual {v0, v1}, Lat/p;->a(Lat/B;)Ln/B;

    move-result-object v0

    .line 3102
    :cond_25
    invoke-static {v1, v0}, Lad/y;->b(Lat/B;Ln/B;)Lad/y;

    move-result-object v0

    .line 3104
    invoke-interface {p1}, Lad/k;->aq()Lad/y;

    move-result-object v1

    invoke-virtual {v1}, Lad/y;->q()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 3105
    invoke-interface {p1, v0}, Lad/k;->a(Lad/y;)V

    goto :goto_c

    .line 3106
    :cond_37
    invoke-interface {p1}, Lad/k;->as()Lad/y;

    move-result-object v1

    invoke-virtual {v1}, Lad/y;->q()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3107
    invoke-interface {p1, v0}, Lad/k;->b(Lad/y;)V

    goto :goto_c
.end method

.method private c(Lcom/google/googlenav/ui/u;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2228
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    .line 2229
    invoke-virtual {v0}, Lac/h;->m()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 2230
    iget-boolean v0, p0, Lcom/google/googlenav/ui/v;->aq:Z

    if-eqz v0, :cond_2d

    .line 2231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x30a

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    .line 2233
    iput-boolean v2, p0, Lcom/google/googlenav/ui/v;->aq:Z

    .line 2240
    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->d()Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v0}, Lat/u;->d()Lat/Y;

    move-result-object v0

    invoke-virtual {v0}, Lat/Y;->a()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_64

    iget-boolean v0, p0, Lcom/google/googlenav/ui/v;->ap:Z

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/google/googlenav/ui/v;->O:Lcom/google/googlenav/ui/ac;

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/ac;->a(Lat/p;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 2244
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->O:Lcom/google/googlenav/ui/ac;

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/ac;->b(Lat/p;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2245
    const/16 v0, 0x31d

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 2246
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    .line 2248
    :cond_62
    iput-boolean v2, p0, Lcom/google/googlenav/ui/v;->ap:Z

    .line 2250
    :cond_64
    return-void

    .line 2237
    :cond_65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/v;->aq:Z

    goto :goto_2d
.end method

.method private c(LZ/b;)Z
    .registers 3
    .parameter

    .prologue
    .line 2737
    invoke-virtual {p1}, LZ/b;->j()Z

    move-result v0

    return v0
.end method

.method private c(Lcom/google/googlenav/aW;)Z
    .registers 4
    .parameter

    .prologue
    .line 3344
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3345
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->B()Ljava/lang/String;

    move-result-object v0

    .line 3346
    if-eqz v0, :cond_19

    const-string v1, "##dumpmem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3347
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aT()V

    .line 3348
    const/4 v0, 0x1

    .line 3351
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method static synthetic d(Lcom/google/googlenav/ui/v;)Lcom/google/googlenav/ui/wizard/ju;
    .registers 2
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    return-object v0
.end method

.method private d(LS/e;)V
    .registers 5
    .parameter

    .prologue
    .line 2307
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->z()LS/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bn;->x:C

    invoke-interface {v0, v1}, LS/g;->c(C)I

    move-result v0

    .line 2312
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v1

    iget v2, p0, Lcom/google/googlenav/ui/v;->n:I

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, -0x3

    const/4 v2, 0x6

    invoke-virtual {v1, p1, v0, v2}, Lcom/google/googlenav/ui/bn;->a(LS/e;II)V

    .line 2313
    return-void
.end method

.method private d(Lad/k;)V
    .registers 5
    .parameter

    .prologue
    .line 3113
    invoke-interface {p1}, Lad/k;->aq()Lad/y;

    move-result-object v0

    invoke-virtual {v0}, Lad/y;->f()Lat/B;

    .line 3114
    invoke-interface {p1}, Lad/k;->as()Lad/y;

    move-result-object v0

    invoke-virtual {v0}, Lad/y;->f()Lat/B;

    .line 3115
    invoke-interface {p1}, Lad/k;->aq()Lad/y;

    move-result-object v0

    invoke-virtual {v0}, Lad/y;->e()Ljava/lang/String;

    .line 3116
    invoke-interface {p1}, Lad/k;->as()Lad/y;

    move-result-object v0

    invoke-virtual {v0}, Lad/y;->e()Ljava/lang/String;

    .line 3117
    const-string v0, "0"

    .line 3118
    const-string v1, "driving"

    .line 3119
    instance-of v1, p1, Lad/w;

    if-eqz v1, :cond_47

    .line 3120
    const-string v0, "1"

    .line 3121
    const-string v1, "transit"

    .line 3129
    :cond_28
    :goto_28
    const/4 v1, 0x0

    invoke-interface {p1}, Lad/k;->aq()Lad/y;

    move-result-object v2

    invoke-virtual {v2}, Lad/y;->d()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/ui/v;->a(IILjava/lang/String;)V

    .line 3131
    const/4 v1, 0x1

    invoke-interface {p1}, Lad/k;->as()Lad/y;

    move-result-object v2

    invoke-virtual {v2}, Lad/y;->d()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/ui/v;->a(IILjava/lang/String;)V

    .line 3134
    const/4 v1, 0x4

    const-string v2, "m"

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 3139
    return-void

    .line 3122
    :cond_47
    instance-of v1, p1, Lad/x;

    if-eqz v1, :cond_50

    .line 3123
    const-string v0, "2"

    .line 3124
    const-string v1, "walking"

    goto :goto_28

    .line 3125
    :cond_50
    instance-of v1, p1, Lad/i;

    if-eqz v1, :cond_28

    .line 3126
    const-string v0, "3"

    .line 3127
    const-string v1, "bicycling"

    goto :goto_28
.end method

.method private d(LZ/a;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2374
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->s()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2375
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/wizard/ju;->c(LZ/a;)I

    move-result v1

    .line 2376
    packed-switch v1, :pswitch_data_4a

    .line 2387
    :cond_12
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_42

    .line 2389
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->aB()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2390
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->aN:Lcom/google/googlenav/ui/android/r;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/r;->b()V

    .line 2404
    :goto_25
    return v0

    .line 2379
    :pswitch_26
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aK()V

    goto :goto_25

    .line 2394
    :cond_2a
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->af:Lcom/google/googlenav/ui/wizard/z;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/z;->c()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v1

    .line 2395
    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_42

    .line 2396
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->af:Lcom/google/googlenav/ui/wizard/z;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/z;->d()Lcom/google/googlenav/ui/wizard/A;

    .line 2397
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/v;->b(I)V

    goto :goto_25

    .line 2403
    :cond_42
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0, p1}, LaM/am;->b(LZ/a;)Z

    .line 2404
    const/4 v0, 0x0

    goto :goto_25

    .line 2376
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_26
    .end packed-switch
.end method

.method static synthetic e(Lcom/google/googlenav/ui/v;)LaM/am;
    .registers 2
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    return-object v0
.end method

.method private static e(I)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 2110
    packed-switch p0, :pswitch_data_12

    .line 2115
    const-string v0, "?"

    :goto_5
    return-object v0

    .line 2111
    :pswitch_6
    const-string v0, "Map->Buf->Scr"

    goto :goto_5

    .line 2112
    :pswitch_9
    const-string v0, "Buf->Scr"

    goto :goto_5

    .line 2113
    :pswitch_c
    const-string v0, "Map->Scr"

    goto :goto_5

    .line 2114
    :pswitch_f
    const-string v0, "No map"

    goto :goto_5

    .line 2110
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method private e(LZ/a;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2457
    invoke-virtual {p1}, LZ/a;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2485
    :cond_7
    :goto_7
    return-void

    .line 2460
    :cond_8
    const-string v0, "8596494"

    iget v2, p0, Lcom/google/googlenav/ui/v;->l:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1}, LZ/a;->e()C

    move-result v2

    if-ne v0, v2, :cond_32

    .line 2462
    iget v0, p0, Lcom/google/googlenav/ui/v;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/v;->l:I

    .line 2463
    iget v0, p0, Lcom/google/googlenav/ui/v;->l:I

    const-string v2, "8596494"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_7

    .line 2464
    iget-boolean v0, p0, Lcom/google/googlenav/ui/v;->a:Z

    if-nez v0, :cond_30

    const/4 v0, 0x1

    :goto_2b
    iput-boolean v0, p0, Lcom/google/googlenav/ui/v;->a:Z

    .line 2465
    iput v1, p0, Lcom/google/googlenav/ui/v;->l:I

    goto :goto_7

    :cond_30
    move v0, v1

    .line 2464
    goto :goto_2b

    .line 2468
    :cond_32
    iput v1, p0, Lcom/google/googlenav/ui/v;->l:I

    goto :goto_7
.end method

.method static synthetic f(Lcom/google/googlenav/ui/v;)V
    .registers 1
    .parameter

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aE()V

    return-void
.end method

.method private f(LZ/a;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2511
    iput-boolean v0, p0, Lcom/google/googlenav/ui/v;->q:Z

    .line 2517
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/ju;->s()Z

    move-result v2

    if-nez v2, :cond_15

    .line 2518
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v2, p1}, LaM/am;->a(LZ/a;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2553
    :cond_14
    :goto_14
    return v1

    .line 2523
    :cond_15
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->C()Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v2, p1}, Lcom/google/googlenav/ui/wizard/ju;->a(LZ/a;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 2525
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/v;->c(LZ/a;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/googlenav/ui/v;->q:Z

    .line 2526
    iget-boolean v2, p0, Lcom/google/googlenav/ui/v;->q:Z

    if-eqz v2, :cond_47

    .line 2529
    sget-object v0, Lcom/google/googlenav/android/A;->a:Lcom/google/googlenav/android/A;

    invoke-virtual {v0}, Lcom/google/googlenav/android/A;->h()V

    goto :goto_14

    .line 2532
    :cond_33
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/ju;->s()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 2533
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v2, p1}, Lcom/google/googlenav/ui/wizard/ju;->b(LZ/a;)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/google/googlenav/ui/v;->a(ILZ/a;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 2539
    :cond_47
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->C()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 2540
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->x()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-virtual {p1}, LZ/a;->e()C

    move-result v2

    const/16 v3, 0x37

    if-ne v2, v3, :cond_63

    .line 2542
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->P()V

    goto :goto_14

    .line 2546
    :cond_63
    invoke-virtual {p1}, LZ/a;->e()C

    move-result v2

    const/16 v3, 0x35

    if-ne v2, v3, :cond_77

    .line 2547
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->b()I

    move-result v2

    if-eqz v2, :cond_75

    :goto_71
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/v;->a(I)Z

    goto :goto_14

    :cond_75
    move v0, v1

    goto :goto_71

    :cond_77
    move v1, v0

    .line 2553
    goto :goto_14
.end method

.method static synthetic g(Lcom/google/googlenav/ui/v;)Lcom/google/googlenav/android/Y;
    .registers 2
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->h:Lcom/google/googlenav/android/Y;

    return-object v0
.end method

.method private g(LZ/a;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2844
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->Q:Lcom/google/googlenav/ui/ab;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->C()Z

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/google/googlenav/ui/ab;->a(LZ/a;Z)I

    move-result v2

    .line 2845
    if-eqz v2, :cond_17

    .line 2846
    iget-object v3, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    if-gez v2, :cond_13

    move v0, v1

    :cond_13
    invoke-virtual {v3, v0}, Lat/u;->a(Z)Z

    .line 2849
    :goto_16
    return v1

    :cond_17
    move v1, v0

    goto :goto_16
.end method

.method static synthetic h(Lcom/google/googlenav/ui/v;)Lan/h;
    .registers 2
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->C:Lan/h;

    return-object v0
.end method

.method private h(LZ/a;)Z
    .registers 7
    .parameter

    .prologue
    .line 2907
    const/16 v0, 0x19

    .line 2908
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->p:LZ/a;

    if-nez v1, :cond_1d

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/googlenav/ui/v;->L:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xfa

    cmp-long v1, v1, v3

    if-gez v1, :cond_1d

    .line 2911
    const/16 v0, 0xc

    .line 2914
    :cond_1d
    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/v;->a(LZ/a;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2917
    const/4 v0, 0x1

    .line 2920
    :goto_24
    return v0

    :cond_25
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->b:Lcom/google/googlenav/ui/ap;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/ap;->a(LZ/a;)Z

    move-result v0

    goto :goto_24
.end method

.method static synthetic i(Lcom/google/googlenav/ui/v;)Lcom/google/googlenav/friend/J;
    .registers 2
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->x:Lcom/google/googlenav/friend/J;

    return-object v0
.end method

.method private i(Lad/b;)V
    .registers 5
    .parameter

    .prologue
    .line 3072
    const-string v0, "locationMemory"

    invoke-static {v0}, Lad/z;->b(Ljava/lang/String;)Lad/z;

    move-result-object v0

    .line 3075
    invoke-virtual {p1}, Lad/b;->aq()Lad/y;

    move-result-object v1

    invoke-virtual {p1}, Lad/b;->ar()Lad/y;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lad/z;->a(Lad/y;Lad/y;)V

    .line 3076
    invoke-virtual {p1}, Lad/b;->as()Lad/y;

    move-result-object v1

    invoke-virtual {p1}, Lad/b;->at()Lad/y;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lad/z;->a(Lad/y;Lad/y;)V

    .line 3077
    return-void
.end method

.method private j(Lad/b;)V
    .registers 8
    .parameter

    .prologue
    .line 3164
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/v;->c(Lac/g;)Ljava/lang/String;

    move-result-object v1

    .line 3169
    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    .line 3170
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;J)V

    .line 3171
    return-void
.end method

.method static synthetic j(Lcom/google/googlenav/ui/v;)Z
    .registers 2
    .parameter

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/google/googlenav/ui/v;->i:Z

    return v0
.end method

.method static synthetic k(Lcom/google/googlenav/ui/v;)LY/d;
    .registers 2
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->k:LY/d;

    return-object v0
.end method

.method static synthetic l(Lcom/google/googlenav/ui/v;)Lcom/google/googlenav/friend/a;
    .registers 2
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->aM:Lcom/google/googlenav/friend/a;

    return-object v0
.end method

.method private l(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    .line 3572
    new-instance v0, Lcom/google/googlenav/ui/D;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/D;-><init>(Lcom/google/googlenav/ui/v;)V

    .line 3584
    new-instance v2, Lcom/google/googlenav/f;

    invoke-direct {v2, v0, p1}, Lcom/google/googlenav/f;-><init>(Lcom/google/googlenav/g;Ljava/lang/String;)V

    .line 3585
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lac/h;->c(Lac/g;)V

    .line 3587
    const/16 v0, 0x1bd

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;J)V

    .line 3589
    return-void
.end method

.method private m(Ljava/lang/String;)Lax/E;
    .registers 4
    .parameter

    .prologue
    .line 3602
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    invoke-virtual {v0}, Lax/l;->f()Lax/m;

    move-result-object v0

    invoke-interface {v0}, Lax/m;->g()Lax/r;

    move-result-object v0

    invoke-interface {v0, p1}, Lax/r;->b(Ljava/lang/String;)Lax/E;

    move-result-object v0

    .line 3606
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lax/E;->c()Z

    move-result v1

    if-nez v1, :cond_19

    .line 3618
    :cond_18
    :goto_18
    return-object v0

    .line 3610
    :cond_19
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v1

    invoke-virtual {v1}, Lax/l;->g()Lax/m;

    move-result-object v1

    invoke-interface {v1}, Lax/m;->g()Lax/r;

    move-result-object v1

    invoke-interface {v1, p1}, Lax/r;->b(Ljava/lang/String;)Lax/E;

    move-result-object v1

    .line 3613
    if-eqz v1, :cond_18

    move-object v0, v1

    .line 3616
    goto :goto_18
.end method

.method private r(Z)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x1

    .line 2815
    if-eqz p1, :cond_22

    .line 2817
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->C:Lan/h;

    invoke-interface {v0}, Lan/h;->k()V

    .line 2818
    invoke-static {}, Lcom/google/googlenav/K;->e()V

    .line 2819
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ju;->a(Z)V

    .line 2820
    const-string v0, "a"

    invoke-static {v2, v0}, LaT/k;->a(ILjava/lang/String;)V

    .line 2825
    sget-object v0, Lcom/google/googlenav/z;->d:Lcom/google/googlenav/z;

    invoke-static {v0}, Lcom/google/googlenav/u;->b(Lcom/google/googlenav/z;)V

    .line 2827
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/wizard/ju;->b(Lcom/google/googlenav/ui/v;)V

    .line 2835
    :goto_21
    return-void

    .line 2829
    :cond_22
    const-string v0, "d"

    invoke-static {v2, v0}, LaT/k;->a(ILjava/lang/String;)V

    .line 2832
    invoke-static {}, LaT/k;->a()LaT/k;

    move-result-object v0

    invoke-virtual {v0, v1}, LaT/k;->a(Z)V

    .line 2833
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->W()V

    goto :goto_21
.end method


# virtual methods
.method public A()Z
    .registers 2

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->s()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public B()V
    .registers 2

    .prologue
    .line 2218
    iget-boolean v0, p0, Lcom/google/googlenav/ui/v;->am:Z

    if-eqz v0, :cond_e

    .line 2219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/v;->am:Z

    .line 2220
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0}, Lac/h;->h()V

    .line 2222
    :cond_e
    return-void
.end method

.method public C()Z
    .registers 2

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->S()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v0

    invoke-virtual {v0}, Lag/h;->c()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->v()Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public D()V
    .registers 2

    .prologue
    .line 2268
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->Q()V

    .line 2271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/v;->e:Z

    .line 2272
    return-void
.end method

.method public D_()V
    .registers 4

    .prologue
    .line 5099
    const/4 v0, 0x0

    .line 5100
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->h:Lcom/google/googlenav/android/Y;

    new-instance v2, Lcom/google/googlenav/ui/L;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/L;-><init>(Lcom/google/googlenav/ui/v;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 5106
    return-void
.end method

.method public E()Z
    .registers 2

    .prologue
    .line 2279
    iget-boolean v0, p0, Lcom/google/googlenav/ui/v;->e:Z

    if-eqz v0, :cond_6

    .line 2280
    const/4 v0, 0x0

    .line 2293
    :goto_5
    return v0

    .line 2286
    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->s()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2287
    const/4 v0, 0x1

    goto :goto_5

    .line 2293
    :cond_10
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aH()Z

    move-result v0

    goto :goto_5
.end method

.method public E_()V
    .registers 4

    .prologue
    .line 5124
    const/4 v0, 0x0

    .line 5125
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->h:Lcom/google/googlenav/android/Y;

    new-instance v2, Lcom/google/googlenav/ui/M;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/M;-><init>(Lcom/google/googlenav/ui/v;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 5131
    return-void
.end method

.method public F()I
    .registers 2

    .prologue
    .line 2633
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->s()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2634
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->v()I

    move-result v0

    .line 2636
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->S()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_e

    :cond_19
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public F_()V
    .registers 1

    .prologue
    .line 5136
    return-void
.end method

.method public G()V
    .registers 3

    .prologue
    .line 3376
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->w()LaM/bK;

    move-result-object v0

    .line 3379
    if-eqz v0, :cond_e

    .line 3380
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v1, v0}, LaM/am;->d(LaM/i;)V

    .line 3390
    :goto_d
    return-void

    .line 3383
    :cond_e
    invoke-static {}, Lay/a;->z()Lay/a;

    move-result-object v0

    invoke-virtual {v0}, Lay/a;->j()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3384
    invoke-static {}, Lay/a;->z()Lay/a;

    move-result-object v0

    invoke-virtual {v0}, Lay/a;->d()V

    .line 3385
    invoke-static {}, Lay/a;->z()Lay/a;

    move-result-object v0

    invoke-virtual {v0}, Lay/a;->f()V

    goto :goto_d

    .line 3387
    :cond_27
    invoke-static {}, Lay/a;->z()Lay/a;

    move-result-object v0

    invoke-virtual {v0}, Lay/a;->i()V

    goto :goto_d
.end method

.method public H()V
    .registers 2

    .prologue
    .line 3393
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->w()LaM/bK;

    move-result-object v0

    .line 3394
    if-eqz v0, :cond_d

    .line 3395
    invoke-virtual {v0}, LaM/bK;->e()V

    .line 3397
    :cond_d
    return-void
.end method

.method public I()V
    .registers 2

    .prologue
    .line 3400
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->w()LaM/bK;

    move-result-object v0

    .line 3401
    if-eqz v0, :cond_d

    .line 3402
    invoke-virtual {v0}, LaM/bK;->f()V

    .line 3404
    :cond_d
    return-void
.end method

.method public J()V
    .registers 2

    .prologue
    .line 3407
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->i()V

    .line 3408
    return-void
.end method

.method K()V
    .registers 6

    .prologue
    .line 3450
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->o()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3491
    :goto_a
    return-void

    .line 3455
    :cond_b
    invoke-static {}, Lcom/google/googlenav/friend/ae;->a()Z

    move-result v0

    if-nez v0, :cond_19

    .line 3456
    invoke-static {}, Lcom/google/googlenav/friend/ae;->b()Lcom/google/googlenav/friend/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/bk;->B_()V

    goto :goto_a

    .line 3461
    :cond_19
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaM/am;->g(Z)V

    .line 3464
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->B()LaM/X;

    move-result-object v0

    .line 3465
    if-eqz v0, :cond_49

    .line 3470
    invoke-virtual {v0}, LaM/X;->ax()Z

    move-result v1

    if-nez v1, :cond_32

    .line 3471
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v1, v0}, LaM/am;->d(LaM/i;)V

    .line 3473
    :cond_32
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v1, v0}, LaM/am;->a(LaM/X;)V

    .line 3480
    :goto_37
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v1}, LaM/am;->ab()LaM/a;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/googlenav/ui/v;->h:Lcom/google/googlenav/android/Y;

    new-instance v4, Lcom/google/googlenav/ui/B;

    invoke-direct {v4, p0, v0}, Lcom/google/googlenav/ui/B;-><init>(Lcom/google/googlenav/ui/v;LaM/X;)V

    invoke-virtual {v1, v2, v3, v4}, LaM/a;->a(ILcom/google/googlenav/android/Y;LaM/f;)V

    goto :goto_a

    .line 3476
    :cond_49
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    new-instance v1, Lcom/google/googlenav/aW;

    invoke-direct {v1}, Lcom/google/googlenav/aW;-><init>()V

    invoke-virtual {v0, v1}, LaM/am;->e(Lcom/google/googlenav/aW;)LaM/X;

    move-result-object v0

    goto :goto_37
.end method

.method public L()J
    .registers 3

    .prologue
    .line 3751
    iget-wide v0, p0, Lcom/google/googlenav/ui/v;->Y:J

    return-wide v0
.end method

.method public L_()V
    .registers 1

    .prologue
    .line 5111
    return-void
.end method

.method public M()J
    .registers 3

    .prologue
    .line 3756
    iget-wide v0, p0, Lcom/google/googlenav/ui/v;->Z:J

    return-wide v0
.end method

.method public M_()V
    .registers 1

    .prologue
    .line 5141
    return-void
.end method

.method protected N()V
    .registers 4

    .prologue
    .line 3766
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/v;->Z:J

    .line 3767
    const-string v0, "LastSessionTime"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/j;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/v;->Y:J

    .line 3768
    return-void
.end method

.method public O()Z
    .registers 2

    .prologue
    .line 3822
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v0}, Lat/u;->f()Lat/H;

    move-result-object v0

    invoke-virtual {v0}, Lat/H;->h()Z

    move-result v0

    return v0
.end method

.method public P()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3888
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->d()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/v;->a(ZZ)V

    .line 3889
    return-void

    :cond_c
    move v0, v1

    .line 3888
    goto :goto_8
.end method

.method public Q()V
    .registers 2

    .prologue
    .line 4027
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->b:Lcom/google/googlenav/ui/ap;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->p()V

    .line 4028
    return-void
.end method

.method public R()V
    .registers 1

    .prologue
    .line 4058
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aO()V

    .line 4064
    return-void
.end method

.method public S()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 4071
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/v;->p:LZ/a;

    .line 4072
    iput-boolean v1, p0, Lcom/google/googlenav/ui/v;->m:Z

    .line 4087
    invoke-static {}, Lcom/google/googlenav/friend/ae;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4088
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/v;->k(Z)V

    .line 4090
    :cond_f
    return-void
.end method

.method public T()V
    .registers 12

    .prologue
    const-wide/16 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4166
    iget-boolean v0, p0, Lcom/google/googlenav/ui/v;->m:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/googlenav/ui/v;->j:Z

    if-eqz v0, :cond_d

    .line 4313
    :cond_c
    :goto_c
    return-void

    .line 4170
    :cond_d
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v5

    .line 4173
    iput-boolean v1, p0, Lcom/google/googlenav/ui/v;->U:Z

    .line 4177
    iget-boolean v0, p0, Lcom/google/googlenav/ui/v;->X:Z

    .line 4178
    iput-boolean v1, p0, Lcom/google/googlenav/ui/v;->X:Z

    .line 4181
    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/google/googlenav/ui/v;->N:Z

    if-nez v0, :cond_128

    :cond_25
    move v0, v2

    .line 4183
    :goto_26
    iget-object v3, p0, Lcom/google/googlenav/ui/v;->p:LZ/a;

    if-eqz v3, :cond_140

    iget-wide v3, p0, Lcom/google/googlenav/ui/v;->L:J

    sub-long v3, v5, v3

    const-wide/16 v7, 0x64

    cmp-long v3, v3, v7

    if-lez v3, :cond_140

    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->C()Z

    move-result v3

    if-eqz v3, :cond_140

    iget-boolean v3, p0, Lcom/google/googlenav/ui/v;->q:Z

    if-eqz v3, :cond_140

    .line 4187
    iget-wide v3, p0, Lcom/google/googlenav/ui/v;->K:J

    cmp-long v3, v3, v9

    if-nez v3, :cond_12b

    .line 4188
    const/4 v3, 0x6

    .line 4189
    iput-wide v5, p0, Lcom/google/googlenav/ui/v;->K:J

    .line 4199
    :goto_47
    const/16 v4, 0xc

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4200
    iget-boolean v4, p0, Lcom/google/googlenav/ui/v;->U:Z

    iget-object v7, p0, Lcom/google/googlenav/ui/v;->p:LZ/a;

    invoke-direct {p0, v7, v3}, Lcom/google/googlenav/ui/v;->a(LZ/a;I)Z

    move-result v3

    or-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/google/googlenav/ui/v;->U:Z

    .line 4205
    :goto_58
    iget-wide v3, p0, Lcom/google/googlenav/ui/v;->H:J

    cmp-long v3, v5, v3

    if-lez v3, :cond_164

    .line 4208
    iget-boolean v3, p0, Lcom/google/googlenav/ui/v;->W:Z

    if-nez v3, :cond_6a

    iget-object v3, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/ju;->s()Z

    move-result v3

    if-eqz v3, :cond_144

    :cond_6a
    const-wide/16 v3, 0x5dc

    :goto_6c
    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/googlenav/ui/v;->H:J

    .line 4211
    iget v3, p0, Lcom/google/googlenav/ui/v;->G:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/googlenav/ui/v;->G:I

    .line 4214
    iget-object v3, p0, Lcom/google/googlenav/ui/v;->b:Lcom/google/googlenav/ui/ap;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/ap;->f()Z

    move-result v3

    if-eqz v3, :cond_148

    move v0, v2

    move v3, v2

    .line 4225
    :goto_7f
    iget-object v4, p0, Lcom/google/googlenav/ui/v;->v:Lcom/google/googlenav/ui/bK;

    if-eqz v4, :cond_8f

    iget-object v4, p0, Lcom/google/googlenav/ui/v;->v:Lcom/google/googlenav/ui/bK;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/bK;->d()Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 4227
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aP()V

    move v0, v2

    .line 4230
    :cond_8f
    iget-object v4, p0, Lcom/google/googlenav/ui/v;->S:Lcom/google/googlenav/ui/s;

    if-eqz v4, :cond_9c

    iget-object v4, p0, Lcom/google/googlenav/ui/v;->S:Lcom/google/googlenav/ui/s;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/s;->i()Z

    move-result v4

    if-eqz v4, :cond_9c

    move v0, v2

    .line 4234
    :cond_9c
    iget-object v4, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v4}, LaM/am;->E()V

    .line 4236
    iget-object v4, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v4

    .line 4240
    if-eqz v4, :cond_be

    .line 4243
    iget-boolean v7, p0, Lcom/google/googlenav/ui/v;->U:Z

    invoke-virtual {v4, v3}, Lcom/google/googlenav/ui/wizard/C;->b(Z)Z

    move-result v3

    or-int/2addr v3, v7

    iput-boolean v3, p0, Lcom/google/googlenav/ui/v;->U:Z

    .line 4245
    iget-object v3, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/ju;->n()Z

    move-result v3

    if-eqz v3, :cond_be

    .line 4246
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aK()V

    move v0, v2

    .line 4251
    :cond_be
    iget-object v3, p0, Lcom/google/googlenav/ui/v;->b:Lcom/google/googlenav/ui/ap;

    invoke-virtual {v3, v5, v6}, Lcom/google/googlenav/ui/ap;->a(J)V

    .line 4253
    iget-wide v3, p0, Lcom/google/googlenav/ui/v;->J:J

    const-wide/16 v7, 0x1388

    add-long/2addr v3, v7

    cmp-long v3, v3, v5

    if-gtz v3, :cond_cd

    move v0, v2

    .line 4258
    :cond_cd
    iget-object v3, p0, Lcom/google/googlenav/ui/v;->aa:Lcom/google/googlenav/A;

    invoke-virtual {v3}, Lcom/google/googlenav/A;->b()Z

    move-result v3

    if-nez v3, :cond_d7

    if-eqz v0, :cond_15e

    :cond_d7
    move v0, v2

    .line 4264
    :goto_d8
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->d()Z

    move-result v3

    if-eqz v3, :cond_106

    iget-wide v3, p0, Lcom/google/googlenav/ui/v;->M:J

    const-wide/32 v5, 0x2932e0

    add-long/2addr v3, v5

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_106

    .line 4268
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/googlenav/ui/v;->M:J

    .line 4269
    invoke-virtual {p0, v1, v1}, Lcom/google/googlenav/ui/v;->a(ZZ)V

    move v0, v2

    .line 4285
    :cond_106
    iget-boolean v1, p0, Lcom/google/googlenav/ui/v;->U:Z

    or-int/2addr v0, v1

    .line 4295
    iget-boolean v1, p0, Lcom/google/googlenav/ui/v;->U:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->V()Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/google/googlenav/ui/v;->U:Z

    .line 4298
    if-eqz v0, :cond_117

    .line 4299
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->q()V

    .line 4307
    :cond_117
    iget-boolean v0, p0, Lcom/google/googlenav/ui/v;->c:Z

    if-nez v0, :cond_121

    .line 4308
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->y()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/v;->c:Z

    .line 4312
    :cond_121
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ac:Lax/b;

    invoke-virtual {v0}, Lax/b;->a()V

    goto/16 :goto_c

    :cond_128
    move v0, v1

    .line 4181
    goto/16 :goto_26

    .line 4191
    :cond_12b
    iget-wide v3, p0, Lcom/google/googlenav/ui/v;->K:J

    sub-long v3, v5, v3

    long-to-int v3, v3

    int-to-long v3, v3

    .line 4192
    const-wide/16 v7, 0x6

    mul-long/2addr v3, v7

    long-to-int v4, v3

    .line 4193
    div-int/lit8 v3, v4, 0x64

    .line 4196
    rem-int/lit8 v4, v4, 0x64

    int-to-long v7, v4

    sub-long v7, v5, v7

    iput-wide v7, p0, Lcom/google/googlenav/ui/v;->K:J

    goto/16 :goto_47

    .line 4202
    :cond_140
    iput-wide v9, p0, Lcom/google/googlenav/ui/v;->K:J

    goto/16 :goto_58

    .line 4208
    :cond_144
    const-wide/16 v3, 0x1f4

    goto/16 :goto_6c

    .line 4217
    :cond_148
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v3

    invoke-virtual {v3}, Lac/h;->l()Z

    move-result v3

    if-nez v3, :cond_15a

    iget-object v3, p0, Lcom/google/googlenav/ui/v;->b:Lcom/google/googlenav/ui/ap;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/ap;->b()Z

    move-result v3

    if-eqz v3, :cond_161

    :cond_15a
    move v0, v2

    move v3, v2

    .line 4220
    goto/16 :goto_7f

    :cond_15e
    move v0, v1

    .line 4258
    goto/16 :goto_d8

    :cond_161
    move v3, v2

    goto/16 :goto_7f

    :cond_164
    move v3, v1

    goto/16 :goto_7f
.end method

.method public U()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 4319
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->w()Z

    move-result v1

    if-nez v1, :cond_41

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->H()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 4324
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-nez v1, :cond_38

    .line 4325
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v1}, LaM/am;->I()LaM/i;

    move-result-object v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v1}, LaM/am;->I()LaM/i;

    move-result-object v1

    invoke-virtual {v1}, LaM/i;->L()Z

    move-result v1

    if-eqz v1, :cond_38

    const/4 v0, 0x1

    .line 4329
    :cond_38
    invoke-static {}, Lcom/google/googlenav/ui/aK;->a()Lcom/google/googlenav/ui/aK;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/ui/aK;->a(Lat/p;Z)V

    .line 4331
    :cond_41
    return-void
.end method

.method public V()Z
    .registers 2

    .prologue
    .line 4362
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v0}, Lat/u;->k()Z

    move-result v0

    return v0
.end method

.method public W()V
    .registers 2

    .prologue
    .line 4409
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->r:Lcom/google/googlenav/aA;

    invoke-interface {v0}, Lcom/google/googlenav/aA;->a()V

    .line 4410
    return-void
.end method

.method public X()V
    .registers 2

    .prologue
    .line 4416
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->r:Lcom/google/googlenav/aA;

    invoke-interface {v0}, Lcom/google/googlenav/aA;->c()V

    .line 4417
    return-void
.end method

.method public declared-synchronized Y()V
    .registers 2

    .prologue
    .line 4580
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->C:Lan/h;

    invoke-interface {v0}, Lan/h;->l()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 4581
    monitor-exit p0

    return-void

    .line 4580
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public Z()Z
    .registers 2

    .prologue
    .line 4612
    iget-boolean v0, p0, Lcom/google/googlenav/ui/v;->i:Z

    return v0
.end method

.method public a(Lcom/google/googlenav/bO;)LaM/bH;
    .registers 3
    .parameter

    .prologue
    .line 3859
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0, p1}, LaM/am;->a(Lcom/google/googlenav/bO;)LaM/bH;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/googlenav/Y;)LaM/bU;
    .registers 4
    .parameter

    .prologue
    .line 3854
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, LaM/am;->a(Lcom/google/googlenav/Y;Z)LaM/bU;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/googlenav/aW;Z)LaM/bj;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 3835
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0, p1, p2}, LaM/am;->a(Lcom/google/googlenav/aW;Z)LaM/bj;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;Lcom/google/googlenav/bc;)LaM/bj;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3660
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/v;->c(Ljava/util/List;Lcom/google/googlenav/bc;)Lcom/google/googlenav/aW;

    move-result-object v0

    .line 3661
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v1, v0}, LaM/am;->c(Lcom/google/googlenav/aW;)LaM/bj;

    move-result-object v0

    return-object v0
.end method

.method public a(Lad/y;Lad/y;)Lcom/google/googlenav/aa;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 5691
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    .line 5692
    new-instance v1, Lcom/google/googlenav/aa;

    invoke-static {p1}, Lcom/google/googlenav/ui/bA;->c(Lad/y;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bn;->T()Lcom/google/googlenav/ui/bm;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/google/googlenav/aa;-><init>(Lad/y;Ljava/lang/String;Lcom/google/googlenav/ui/bm;)V

    .line 5695
    if-eqz p2, :cond_1a

    .line 5696
    invoke-virtual {v1, p2}, Lcom/google/googlenav/aa;->a(Lad/y;)V

    .line 5698
    :cond_1a
    invoke-static {}, LaM/bU;->bJ()Lcom/google/googlenav/ab;

    move-result-object v2

    .line 5699
    sget-object v3, LaM/bU;->C:Lcom/google/googlenav/ab;

    invoke-virtual {v3, v2}, Lcom/google/googlenav/ab;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 5700
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/google/googlenav/ab;->a()I

    move-result v2

    aput v2, v3, v4

    invoke-virtual {v1, v3}, Lcom/google/googlenav/aa;->a([I)V

    .line 5702
    :cond_33
    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 5703
    return-object v1
.end method

.method public a(LaM/bG;Lcom/google/googlenav/bV;Z)Lcom/google/googlenav/bX;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5709
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    .line 5710
    new-instance v1, Lcom/google/googlenav/bX;

    invoke-direct {v1, p1, p3}, Lcom/google/googlenav/bX;-><init>(LaM/bG;Z)V

    .line 5712
    invoke-virtual {v1, p2}, Lcom/google/googlenav/bX;->a(Lcom/google/googlenav/bV;)V

    .line 5713
    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 5714
    return-object v1
.end method

.method public a()V
    .registers 2

    .prologue
    .line 3185
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 3186
    return-void
.end method

.method public a(ILan/h;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 4796
    const/4 v0, 0x0

    .line 4797
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->h:Lcom/google/googlenav/android/Y;

    new-instance v2, Lcom/google/googlenav/ui/K;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/ui/K;-><init>(Lcom/google/googlenav/ui/v;I)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 4803
    return-void
.end method

.method public a(I[LaH/f;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 5321
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/wizard/ju;->a(I[LaH/f;)V

    .line 5322
    return-void
.end method

.method public a(LS/e;)V
    .registers 11
    .parameter

    .prologue
    .line 1726
    iget-boolean v0, p0, Lcom/google/googlenav/ui/v;->j:Z

    if-eqz v0, :cond_5

    .line 1758
    :goto_4
    return-void

    .line 1730
    :cond_5
    :try_start_5
    iget v0, p0, Lcom/google/googlenav/ui/v;->I:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 1737
    sget-object v0, Lcom/google/googlenav/z;->c:Lcom/google/googlenav/z;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/google/googlenav/ui/v;->ab:LY/c;

    const-wide/16 v7, 0x0

    invoke-static/range {v0 .. v8}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Landroid/os/Handler;JJLY/c;J)V

    .line 1740
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/google/googlenav/ui/v;->ab:LY/c;

    const-wide/16 v7, 0x0

    invoke-static/range {v0 .. v8}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Landroid/os/Handler;JJLY/c;J)V

    .line 1753
    :cond_26
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/v;->c(LS/e;)V

    .line 1754
    iget v0, p0, Lcom/google/googlenav/ui/v;->I:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/v;->I:I
    :try_end_2f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_2f} :catch_30

    goto :goto_4

    .line 1755
    :catch_30
    move-exception v0

    .line 1756
    invoke-static {}, Lcom/google/googlenav/common/j;->b()V

    goto :goto_4
.end method

.method public a(LZ/b;)V
    .registers 3
    .parameter

    .prologue
    .line 2769
    iget-boolean v0, p0, Lcom/google/googlenav/ui/v;->j:Z

    if-eqz v0, :cond_5

    .line 2784
    :goto_4
    return-void

    .line 2773
    :cond_5
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aI()V

    .line 2775
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/v;->b(LZ/b;)V

    .line 2777
    invoke-virtual {p1}, LZ/b;->c()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/v;->X:Z

    goto :goto_4

    .line 2782
    :cond_15
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->q()V

    goto :goto_4
.end method

.method public a(LaM/aT;)V
    .registers 3
    .parameter

    .prologue
    .line 5041
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0, p0, p1}, LaM/am;->b(Lcom/google/googlenav/J;LaM/aT;)V

    .line 5042
    return-void
.end method

.method public a(LaM/i;)V
    .registers 3
    .parameter

    .prologue
    .line 5073
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0, p1}, LaM/am;->g(LaM/i;)V

    .line 5074
    return-void
.end method

.method public a(Lac/g;)V
    .registers 13
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x7

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 1517
    iget-boolean v1, p0, Lcom/google/googlenav/ui/v;->j:Z

    if-eqz v1, :cond_a

    .line 1663
    :goto_9
    return-void

    .line 1527
    :cond_a
    instance-of v1, p1, Lcom/google/googlenav/aW;

    if-eqz v1, :cond_17c

    .line 1528
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->aL:LaT/h;

    invoke-virtual {v1}, LaT/h;->a()V

    .line 1529
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->f:LaT/h;

    invoke-virtual {v1}, LaT/h;->a()V

    .line 1530
    check-cast p1, Lcom/google/googlenav/aW;

    .line 1534
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->au()Z

    move-result v1

    if-nez v1, :cond_23

    .line 1535
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->a()V

    .line 1542
    :cond_23
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->t()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1543
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->u()I

    move-result v2

    invoke-virtual {v1, v2}, Las/f;->a(I)V

    .line 1546
    :cond_34
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->x()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 1549
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->y()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lad/b;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lad/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/v;->b(Lad/b;)V

    .line 1606
    :cond_45
    :goto_45
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->ax()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1607
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aR()V

    .line 1609
    :cond_4e
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->aL:LaT/h;

    invoke-virtual {v0}, LaT/h;->b()V

    .line 1610
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "s=po"

    aput-object v1, v0, v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->p()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/v;->aL:LaT/h;

    invoke-virtual {v2}, LaT/h;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-static {v0}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1616
    const-string v1, "stat"

    invoke-static {v9, v1, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1662
    :cond_97
    :goto_97
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->q()V

    goto/16 :goto_9

    .line 1550
    :cond_9c
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->m()Lcom/google/googlenav/bc;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/googlenav/bc;->G:Z

    if-eqz v1, :cond_f9

    .line 1554
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->aD()I

    move-result v1

    .line 1556
    if-lez v1, :cond_b9

    .line 1557
    sget-object v2, Lag/b;->k:Lag/c;

    invoke-virtual {v2, v1}, Lag/c;->a(I)V

    .line 1558
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->d:Lcom/google/googlenav/offers/a;

    invoke-virtual {v2, v1}, Lcom/google/googlenav/offers/a;->a(I)V

    .line 1559
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->d:Lcom/google/googlenav/offers/a;

    invoke-virtual {v2, p1}, Lcom/google/googlenav/offers/a;->a(Lcom/google/googlenav/aW;)V

    .line 1563
    :cond_b9
    invoke-static {p1}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/aW;)Ljava/lang/String;

    move-result-object v2

    .line 1564
    const/16 v3, 0x58

    const-string v4, "b"

    new-array v5, v9, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "c="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v10

    if-nez v2, :cond_e5

    :goto_da
    aput-object v0, v5, v8

    invoke-static {v5}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_45

    :cond_e5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_da

    .line 1570
    :cond_f9
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->n()Z

    move-result v1

    if-eqz v1, :cond_12b

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->au()Z

    move-result v1

    if-nez v1, :cond_12b

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->z()I

    move-result v1

    if-ne v1, v4, :cond_111

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->r()Z

    move-result v1

    if-nez v1, :cond_12b

    .line 1572
    :cond_111
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    .line 1576
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->H()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1577
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->aa:Lcom/google/googlenav/A;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->ah()Z

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, LaM/am;->a(Lcom/google/googlenav/aW;Lcom/google/googlenav/A;Z)V

    goto/16 :goto_45

    .line 1580
    :cond_12b
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->aO()Z

    move-result v1

    if-eqz v1, :cond_159

    .line 1581
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->ak()I

    move-result v0

    if-ne v0, v8, :cond_152

    .line 1583
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->O()Lat/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/u;->c(Lat/B;)V

    .line 1584
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->S()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->T()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lat/u;->d(II)V

    .line 1586
    invoke-virtual {p0, v8}, Lcom/google/googlenav/ui/v;->q(Z)V

    goto/16 :goto_45

    .line 1588
    :cond_152
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0, p1, v10}, LaM/am;->a(Lcom/google/googlenav/aW;I)V

    goto/16 :goto_45

    .line 1593
    :cond_159
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    iget-object v2, p0, Lcom/google/googlenav/ui/v;->aa:Lcom/google/googlenav/A;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->ah()Z

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, LaM/am;->a(Lcom/google/googlenav/aW;Lcom/google/googlenav/A;Z)V

    .line 1596
    invoke-static {p1}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/aW;)V

    .line 1599
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->z()I

    move-result v1

    if-eq v1, v4, :cond_45

    .line 1601
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->aD:Lcom/google/googlenav/ui/aB;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aB;->g()LaD/k;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->O()Lat/B;

    move-result-object v2

    invoke-interface {v1, v2, v9, v0}, LaD/k;->a(Lat/B;ILjava/lang/String;)V

    goto/16 :goto_45

    .line 1618
    :cond_17c
    instance-of v0, p1, Lad/b;

    if-eqz v0, :cond_18a

    .line 1620
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->a()V

    .line 1621
    check-cast p1, Lad/b;

    .line 1622
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/v;->b(Lad/b;)V

    goto/16 :goto_97

    .line 1623
    :cond_18a
    instance-of v0, p1, Lcom/google/googlenav/aa;

    if-eqz v0, :cond_1c0

    .line 1625
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->a()V

    .line 1627
    check-cast p1, Lcom/google/googlenav/aa;

    .line 1629
    invoke-virtual {p1}, Lcom/google/googlenav/aa;->k()Z

    move-result v0

    if-nez v0, :cond_97

    .line 1630
    invoke-virtual {p1}, Lcom/google/googlenav/aa;->l()Lcom/google/googlenav/Y;

    move-result-object v0

    .line 1631
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v1}, LaM/am;->x()LaM/bU;

    move-result-object v1

    .line 1633
    if-eqz v1, :cond_1b5

    .line 1634
    invoke-virtual {v1}, LaM/bU;->ax()Z

    move-result v0

    if-nez v0, :cond_1b0

    .line 1635
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0, v1}, LaM/am;->d(LaM/i;)V

    .line 1637
    :cond_1b0
    invoke-virtual {v1, p1}, LaM/bU;->a(Lcom/google/googlenav/aa;)V

    goto/16 :goto_97

    .line 1639
    :cond_1b5
    invoke-virtual {p1}, Lcom/google/googlenav/aa;->i()Z

    move-result v1

    if-nez v1, :cond_97

    .line 1640
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/Y;)LaM/bU;

    goto/16 :goto_97

    .line 1644
    :cond_1c0
    instance-of v0, p1, Lcom/google/googlenav/bX;

    if-eqz v0, :cond_1e1

    .line 1646
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->a()V

    .line 1647
    check-cast p1, Lcom/google/googlenav/bX;

    .line 1648
    invoke-virtual {p1}, Lcom/google/googlenav/bX;->i()Lcom/google/googlenav/bO;

    move-result-object v0

    .line 1649
    invoke-virtual {v0}, Lcom/google/googlenav/bO;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1dc

    .line 1650
    invoke-virtual {p1}, Lcom/google/googlenav/bX;->k()V

    goto/16 :goto_97

    .line 1652
    :cond_1dc
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/bO;)LaM/bH;

    goto/16 :goto_97

    .line 1654
    :cond_1e1
    instance-of v0, p1, Lcom/google/googlenav/ch;

    if-eqz v0, :cond_97

    .line 1655
    check-cast p1, Lcom/google/googlenav/ch;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/ch;)V

    goto/16 :goto_97
.end method

.method public a(Lad/b;)V
    .registers 5
    .parameter

    .prologue
    .line 2939
    invoke-virtual {p1}, Lad/b;->aq()Lad/y;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual {p1}, Lad/b;->as()Lad/y;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 2940
    invoke-virtual {p1}, Lad/b;->aq()Lad/y;

    move-result-object v0

    invoke-virtual {v0}, Lad/y;->f()Lat/B;

    move-result-object v0

    .line 2941
    invoke-virtual {p1}, Lad/b;->as()Lad/y;

    move-result-object v1

    invoke-virtual {v1}, Lad/y;->f()Lat/B;

    move-result-object v1

    .line 2942
    if-eqz v0, :cond_40

    if-eqz v1, :cond_40

    invoke-virtual {v0, v1}, Lat/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2943
    new-instance v0, Lat/B;

    invoke-virtual {v1}, Lat/B;->c()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {v1}, Lat/B;->e()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lat/B;-><init>(II)V

    .line 2944
    invoke-virtual {p1}, Lad/b;->as()Lad/y;

    move-result-object v1

    .line 2945
    invoke-virtual {v1, v0}, Lad/y;->a(Lat/B;)Lad/y;

    move-result-object v0

    invoke-virtual {p1, v0}, Lad/b;->b(Lad/y;)V

    .line 2949
    :cond_40
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/v;->c(Lad/k;)V

    .line 2950
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/v;->d(Lad/k;)V

    .line 2953
    invoke-virtual {p1}, Lad/b;->E()Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v0, 0x0

    .line 2957
    :goto_4d
    if-eqz v0, :cond_66

    .line 2961
    invoke-virtual {p1}, Lad/b;->aO()I

    move-result v1

    invoke-virtual {v0, v1}, Lad/b;->v(I)V

    .line 2962
    invoke-virtual {p1}, Lad/b;->aS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lad/b;->b(Ljava/lang/String;)V

    .line 2963
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/v;->b(Lad/b;)V

    .line 2971
    :cond_60
    :goto_60
    return-void

    .line 2953
    :cond_61
    invoke-static {p1}, LaM/O;->a(Lad/b;)Lad/b;

    move-result-object v0

    goto :goto_4d

    .line 2966
    :cond_66
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lac/h;->c(Lac/g;)V

    .line 2968
    invoke-virtual {p1}, Lad/b;->E()Z

    move-result v0

    if-nez v0, :cond_60

    .line 2969
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/v;->j(Lad/b;)V

    goto :goto_60
.end method

.method public a(Lad/b;B)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 4982
    invoke-virtual {p1, p2}, Lad/b;->a(B)V

    .line 4983
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0, p1}, LaM/am;->a(Lad/b;)LaM/O;

    .line 4984
    return-void
.end method

.method public a(Lad/b;Ljava/util/List;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 5343
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v1}, Lat/u;->f()Lat/H;

    move-result-object v2

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v1}, Lat/u;->a()I

    move-result v3

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v1}, Lat/u;->b()I

    move-result v4

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/wizard/ju;->a(Lad/b;Lat/H;IILjava/util/List;)V

    .line 5346
    return-void
.end method

.method public a(Lad/k;)V
    .registers 3
    .parameter

    .prologue
    .line 5422
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->ai()Lcom/google/googlenav/A;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/A;->a(Lad/k;)V

    .line 5423
    return-void
.end method

.method public a(Lad/w;)V
    .registers 3
    .parameter

    .prologue
    .line 5394
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/v;->p(Z)V

    .line 5395
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0, p1}, LaM/am;->a(Lad/w;)LaM/bK;

    .line 5396
    return-void
.end method

.method public a(Lad/y;I[Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5384
    invoke-static {p3}, Lo/b;->a([Lcom/google/googlenav/common/io/protocol/ProtoBuf;)[Lo/b;

    move-result-object v0

    invoke-static {p1, p2, v0, p4}, Lcom/google/android/maps/driveabout/app/bj;->a(Lad/y;I[Lo/b;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5386
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->r:Lcom/google/googlenav/aA;

    invoke-interface {v1, v0}, Lcom/google/googlenav/aA;->b(Ljava/lang/String;)V

    .line 5387
    return-void
.end method

.method public a(Lad/y;Lad/y;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5276
    new-instance v0, Lad/j;

    invoke-direct {v0, p1, p2, p3}, Lad/j;-><init>(Lad/y;Lad/y;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 5278
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/ju;->a(Lad/j;)V

    .line 5279
    return-void
.end method

.method public a(Lan/h;Lat/B;ZLjava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ab:LY/c;

    invoke-static {p1, p2, p3, p4, v0}, Lan/d;->a(Lan/h;Lat/B;ZLjava/lang/String;LY/c;)V

    .line 1398
    return-void
.end method

.method public a(Lat/B;)V
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2839
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v1}, Lat/u;->c()Lat/B;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v2}, Lat/u;->d()Lat/Y;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lat/u;->e(Lat/B;Lat/Y;)V

    .line 2840
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    invoke-virtual {v1, p1}, Lat/p;->a(Lat/B;)Ln/B;

    move-result-object v2

    const/4 v4, 0x1

    move-object v1, p1

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, LaM/am;->a(Lat/B;Ln/B;Ljava/lang/String;Z[Ljava/lang/String;)LaM/C;

    .line 2841
    return-void
.end method

.method public a(Lat/B;Lan/h;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 4778
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lac/h;->a(Z)V

    .line 4783
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aQ()V

    .line 4785
    const/4 v0, 0x0

    .line 4786
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->h:Lcom/google/googlenav/android/Y;

    new-instance v2, Lcom/google/googlenav/ui/J;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/ui/J;-><init>(Lcom/google/googlenav/ui/v;Lat/B;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 4792
    return-void
.end method

.method public a(Lat/B;Ln/B;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5330
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v1}, Lat/u;->f()Lat/H;

    move-result-object v5

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v1}, Lat/u;->a()I

    move-result v6

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v1}, Lat/u;->b()I

    move-result v7

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/google/googlenav/ui/wizard/ju;->a(Lat/B;Ln/B;Ljava/lang/String;Ljava/lang/String;Lat/H;IILcom/google/googlenav/ui/wizard/C;Z)V

    .line 5333
    return-void
.end method

.method public a(Lcom/google/android/maps/A;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1185
    iget-boolean v0, p0, Lcom/google/googlenav/ui/v;->aE:Z

    if-eqz v0, :cond_44

    .line 1187
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aS()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1322
    :cond_b
    :goto_b
    return-void

    .line 1198
    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 1199
    if-eqz v0, :cond_32

    invoke-virtual {v0}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 1200
    invoke-virtual {v0}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v1

    .line 1204
    invoke-interface {v1}, Lcom/google/googlenav/F;->d()B

    move-result v2

    .line 1205
    invoke-interface {v1}, Lcom/google/googlenav/F;->c()I

    move-result v3

    .line 1206
    invoke-virtual {v0}, LaM/i;->aX()V

    .line 1209
    invoke-virtual {v0, v2}, LaM/i;->b(B)V

    .line 1210
    invoke-interface {v1, v3}, Lcom/google/googlenav/F;->a(I)V

    .line 1211
    invoke-virtual {v0}, LaM/i;->aW()V

    .line 1216
    :cond_32
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    .line 1217
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->p()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1218
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->T_()V

    goto :goto_b

    .line 1229
    :cond_44
    iput v1, p0, Lcom/google/googlenav/ui/v;->I:I

    .line 1230
    sget-object v0, Lcom/google/googlenav/z;->c:Lcom/google/googlenav/z;

    invoke-static {v0}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;)V

    .line 1231
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    invoke-static {v0}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;)V

    .line 1235
    const/4 v0, 0x1

    .line 1236
    const/4 v1, 0x0

    .line 1237
    const/4 v2, 0x1

    .line 1238
    :try_start_53
    iget-object v3, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v3, v0, v1, v2}, LaM/am;->a(ZZZ)V

    .line 1243
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/googlenav/ui/S;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/S;-><init>(Lcom/google/googlenav/ui/v;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    .line 1254
    sget-object v0, Lcom/google/android/maps/A;->b:Lcom/google/android/maps/A;

    if-eq p1, v0, :cond_7a

    .line 1259
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/googlenav/ui/T;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/T;-><init>(Lcom/google/googlenav/ui/v;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    .line 1266
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/googlenav/ui/U;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/U;-><init>(Lcom/google/googlenav/ui/v;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    .line 1277
    :cond_7a
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/googlenav/ui/V;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/V;-><init>(Lcom/google/googlenav/ui/v;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    .line 1284
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/googlenav/ui/x;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/x;-><init>(Lcom/google/googlenav/ui/v;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    .line 1307
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aS()Z

    .line 1308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/v;->aE:Z
    :try_end_94
    .catch Ljava/lang/RuntimeException; {:try_start_53 .. :try_end_94} :catch_96

    goto/16 :goto_b

    .line 1309
    :catch_96
    move-exception v0

    .line 1315
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/google/googlenav/common/io/j;->c(Ljava/lang/String;)V

    .line 1317
    const-string v1, "GmmController-loadSavedState"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1320
    throw v0
.end method

.method public a(Lcom/google/googlenav/aW;IZ)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 3213
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/v;->b(Lcom/google/googlenav/aW;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/v;->c(Lcom/google/googlenav/aW;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3287
    :cond_11
    :goto_11
    return-void

    .line 3217
    :cond_12
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->aK:LaT/h;

    invoke-virtual {v0}, LaT/h;->a()V

    .line 3218
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->z()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v2}, Lat/u;->c()Lat/B;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v3}, Lat/u;->d()Lat/Y;

    move-result-object v3

    invoke-virtual {v3}, Lat/Y;->a()I

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/ui/v;->ab:LY/c;

    invoke-static {v0, v1, v2, v3, v4}, Lan/d;->a(Ljava/lang/String;ILat/B;ILY/c;)V

    .line 3221
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lac/h;->c(Lac/g;)V

    .line 3222
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->aK:LaT/h;

    invoke-virtual {v0}, LaT/h;->b()V

    .line 3225
    if-eqz p3, :cond_145

    const-string v0, "a"

    .line 3227
    :goto_44
    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "s=pr"

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/v;->aK:LaT/h;

    invoke-virtual {v2}, LaT/h;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-static {v1}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3233
    const-string v1, "stat"

    invoke-static {v7, v1, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 3238
    if-eqz p3, :cond_13c

    .line 3239
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->C()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/google/googlenav/ui/wizard/A;

    invoke-direct {v3, p2, v6}, Lcom/google/googlenav/ui/wizard/A;-><init>(ILjava/lang/Object;)V

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;J)V

    .line 3243
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->O()Lat/B;

    move-result-object v0

    invoke-virtual {v0}, Lat/B;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3245
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->X()Ljava/lang/String;

    move-result-object v0

    .line 3246
    const-string v2, "19"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 3252
    const-string v1, ""

    .line 3257
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/jB;->J()Lcom/google/googlenav/ui/wizard/gj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/gj;->B()I

    move-result v2

    if-ne v2, v7, :cond_bd

    .line 3259
    const-string v0, "26"

    .line 3263
    :cond_bd
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->aJ()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_149

    const-string v2, "rf"

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->aJ()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/googlenav/aW;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    .line 3266
    :goto_d1
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->aK()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_e1

    const-string v3, "ro"

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->aK()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/googlenav/aW;->b(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    .line 3270
    :cond_e1
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "q="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->B()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->z()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    const-string v0, "c="

    aput-object v0, v3, v10

    const/4 v0, 0x4

    aput-object v2, v3, v0

    const/4 v0, 0x5

    aput-object v6, v3, v0

    invoke-static {v3}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3276
    invoke-static {v7, v1, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 3280
    :cond_13c
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->aa:Lcom/google/googlenav/A;

    invoke-virtual {v0}, Lcom/google/googlenav/A;->c()V

    .line 3286
    iput-boolean v8, p0, Lcom/google/googlenav/ui/v;->ap:Z

    goto/16 :goto_11

    .line 3225
    :cond_145
    const-string v0, "p"

    goto/16 :goto_44

    :cond_149
    move-object v2, v6

    .line 3263
    goto :goto_d1
.end method

.method public a(Lcom/google/googlenav/ai;)V
    .registers 3
    .parameter

    .prologue
    .line 3174
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ai;)V

    .line 3175
    return-void
.end method

.method public a(Lcom/google/googlenav/ai;BZ)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3521
    const/4 v2, 0x1

    .line 3522
    const/4 v4, 0x0

    .line 3523
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    move-object v1, p1

    move v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, LaM/am;->a(Lcom/google/googlenav/ai;ZBZZ)LaM/ak;

    .line 3525
    return-void
.end method

.method public a(Lcom/google/googlenav/ai;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 3558
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v0

    .line 3559
    if-eqz v0, :cond_b

    .line 3560
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v1, v0}, Lat/u;->c(Lat/B;)V

    .line 3562
    :cond_b
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlenav/ai;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/v;->c(Ljava/util/List;Lcom/google/googlenav/bc;)Lcom/google/googlenav/aW;

    move-result-object v0

    .line 3563
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/A;

    iget-object v3, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v3}, LaM/am;->I()LaM/i;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Lcom/google/googlenav/ui/wizard/A;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 3565
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v1, v0}, LaM/am;->b(Lcom/google/googlenav/aW;)LaM/x;

    .line 3566
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LaM/i;->a(B)V

    .line 3568
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->aa:Lcom/google/googlenav/A;

    invoke-virtual {v0}, Lcom/google/googlenav/A;->d()V

    .line 3569
    return-void
.end method

.method public a(Lcom/google/googlenav/ai;ILjava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3704
    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/ai;I)V

    .line 3707
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->aa:Lcom/google/googlenav/A;

    invoke-virtual {v0}, Lcom/google/googlenav/A;->d()V

    .line 3708
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ai;LaM/am;ZLjava/lang/String;)V

    .line 3709
    return-void
.end method

.method public a(Lcom/google/googlenav/bc;)V
    .registers 5
    .parameter

    .prologue
    .line 3190
    new-instance v0, Lcom/google/googlenav/bd;

    invoke-direct {v0, p1}, Lcom/google/googlenav/bd;-><init>(Lcom/google/googlenav/bc;)V

    .line 3191
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->b:Lcom/google/googlenav/ui/ap;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/ap;->h()Lat/B;

    move-result-object v1

    .line 3192
    if-eqz v1, :cond_10

    .line 3193
    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->a(Lat/B;)Lcom/google/googlenav/bd;

    .line 3196
    :cond_10
    new-instance v1, Lcom/google/googlenav/aW;

    invoke-virtual {v0}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/aW;-><init>(Lcom/google/googlenav/bc;Lat/u;)V

    .line 3197
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/aA;->e()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aW;->c(Z)V

    .line 3198
    iget v0, p1, Lcom/google/googlenav/bc;->j:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/aW;IZ)V

    .line 3199
    return-void
.end method

.method public a(Lcom/google/googlenav/h;Lcom/google/googlenav/ui/wizard/R;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 1404
    const/4 v3, 0x0

    .line 1405
    const/4 v4, 0x0

    .line 1408
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    move-object v1, p0

    move-object v2, p1

    move v6, v5

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/v;Lcom/google/googlenav/h;Ljava/lang/String;ZZZLcom/google/googlenav/ui/wizard/R;)V

    .line 1410
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/av;)V
    .registers 2
    .parameter

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/google/googlenav/ui/v;->t:Lcom/google/googlenav/ui/av;

    .line 1076
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/c;)V
    .registers 2
    .parameter

    .prologue
    .line 5603
    iput-object p1, p0, Lcom/google/googlenav/ui/v;->ax:Lcom/google/googlenav/ui/c;

    .line 5604
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 4892
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/v;->b(Ljava/lang/Object;B)V

    .line 4893
    return-void
.end method

.method public a(Ljava/lang/Object;B)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 5019
    check-cast p1, Lcom/google/googlenav/Y;

    .line 5020
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LaM/am;->a(Lcom/google/googlenav/Y;Z)LaM/bU;

    move-result-object v0

    .line 5021
    invoke-virtual {p1}, Lcom/google/googlenav/Y;->a()I

    move-result v1

    invoke-virtual {v0, v1}, LaM/bU;->b(I)V

    .line 5022
    invoke-virtual {v0, p2}, LaM/bU;->a(B)V

    .line 5023
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 5160
    iget-boolean v0, p0, Lcom/google/googlenav/ui/v;->az:Z

    if-eqz v0, :cond_9

    .line 5161
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->w:Lcom/google/googlenav/ui/aC;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/aC;->b(Ljava/lang/String;)V

    .line 5163
    :cond_9
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 5314
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;I)V

    .line 5315
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3726
    new-instance v0, Lcom/google/googlenav/ui/E;

    invoke-direct {v0, p0, p4, p2, p3}, Lcom/google/googlenav/ui/E;-><init>(Lcom/google/googlenav/ui/v;ZILjava/lang/String;)V

    .line 3740
    new-instance v2, Lcom/google/googlenav/f;

    invoke-direct {v2, v0, p1}, Lcom/google/googlenav/f;-><init>(Lcom/google/googlenav/g;Ljava/lang/String;)V

    .line 3741
    const/16 v0, 0x1bd

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;J)V

    .line 3743
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lac/h;->c(Lac/g;)V

    .line 3744
    return-void
.end method

.method public a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;J)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3180
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    .line 3181
    return-void
.end method

.method public a(Ljava/lang/String;Lat/B;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 5306
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lat/B;)V

    .line 5307
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/ai;)V
    .registers 14
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 2861
    :try_start_2
    new-instance v0, Lcom/google/googlenav/H;

    invoke-direct {v0, p0}, Lcom/google/googlenav/H;-><init>(Lcom/google/googlenav/ui/v;)V

    .line 2862
    invoke-static {p1}, Lcom/google/googlenav/H;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2864
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/googlenav/H;->a(Ljava/lang/String;Z)V

    .line 2896
    :goto_11
    return-void

    .line 2867
    :cond_12
    if-eqz p2, :cond_91

    invoke-virtual {p2}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v0

    .line 2868
    :goto_18
    invoke-static {p2}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v4

    .line 2869
    const-string v5, "http:"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2c

    const-string v5, "https:"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 2871
    :cond_2c
    const/16 v5, 0x37

    const-string v6, "u"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_93

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_61
    aput-object v0, v7, v8

    const/4 v1, 0x2

    if-eqz v4, :cond_96

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_79
    aput-object v0, v7, v1

    invoke-static {v7}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2890
    :goto_82
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->r:Lcom/google/googlenav/aA;

    invoke-interface {v0, p1}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_87} :catch_88

    goto :goto_11

    .line 2892
    :catch_88
    move-exception v0

    .line 2894
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    goto :goto_11

    :cond_91
    move-wide v0, v2

    .line 2867
    goto :goto_18

    .line 2871
    :cond_93
    :try_start_93
    const-string v0, ""

    goto :goto_61

    :cond_96
    const-string v0, ""

    goto :goto_79

    .line 2881
    :cond_99
    const/16 v5, 0x37

    const-string v6, "x"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_f0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_ce
    aput-object v0, v7, v8

    const/4 v1, 0x2

    if-eqz v4, :cond_f3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e6
    aput-object v0, v7, v1

    invoke-static {v7}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_82

    :cond_f0
    const-string v0, ""

    goto :goto_ce

    :cond_f3
    const-string v0, ""
    :try_end_f5
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_f5} :catch_88

    goto :goto_e6
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3291
    new-instance v0, Lcom/google/googlenav/bd;

    invoke-direct {v0}, Lcom/google/googlenav/bd;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->a(I)Lcom/google/googlenav/bd;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bd;->e(I)Lcom/google/googlenav/bd;

    move-result-object v0

    const/16 v1, 0x265

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->c(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/bc;)V

    .line 3299
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lat/B;Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3503
    new-instance v1, Lcom/google/googlenav/W;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/googlenav/W;-><init>(Ljava/lang/String;Ljava/lang/String;Lat/B;Ljava/lang/String;)V

    .line 3506
    const/4 v4, 0x1

    .line 3507
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    const/4 v3, 0x2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, LaM/am;->a(Lcom/google/googlenav/ai;ZBZZ)LaM/ak;

    .line 3509
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2899
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2900
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5249
    if-eqz p4, :cond_9

    .line 5250
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->a()V

    .line 5252
    :cond_9
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5256
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/e;->e()Z

    .line 5260
    :goto_1a
    return-void

    .line 5258
    :cond_1b
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/v;Ljava/lang/String;Z)V

    .line 1385
    return-void
.end method

.method public a(Ljava/lang/String;ZI)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3534
    new-instance v0, Lcom/google/googlenav/ui/C;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/googlenav/ui/C;-><init>(Lcom/google/googlenav/ui/v;ZI)V

    .line 3550
    new-instance v2, Lcom/google/googlenav/f;

    invoke-direct {v2, v0, p1}, Lcom/google/googlenav/f;-><init>(Lcom/google/googlenav/g;Ljava/lang/String;)V

    .line 3551
    const/16 v0, 0x1bd

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;J)V

    .line 3553
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lac/h;->c(Lac/g;)V

    .line 3554
    return-void
.end method

.method public a(Z)V
    .registers 6
    .parameter

    .prologue
    .line 4371
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v1

    .line 4374
    if-eqz v1, :cond_27

    .line 4375
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GmmController.handleOutOfMemory("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4376
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aT()V

    .line 4382
    :cond_27
    if-eqz p1, :cond_2a

    .line 4403
    :goto_29
    return-void

    .line 4386
    :cond_2a
    const/16 v0, 0x372

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 4388
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->d()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 4389
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->P()V

    .line 4390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5c3

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4402
    :cond_56
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    goto :goto_29

    .line 4392
    :cond_5a
    if-nez v1, :cond_56

    goto :goto_29
.end method

.method public a(ZI)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 3412
    if-eqz p1, :cond_e

    sget-object v0, Lcom/google/googlenav/ui/v;->aI:LaT/h;

    .line 3414
    :goto_4
    invoke-virtual {v0}, LaT/h;->a()V

    .line 3415
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/v;->c(I)V

    .line 3416
    invoke-virtual {v0}, LaT/h;->b()V

    .line 3417
    return-void

    .line 3412
    :cond_e
    sget-object v0, Lcom/google/googlenav/ui/v;->aJ:LaT/h;

    goto :goto_4
.end method

.method public a(ZZ)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/16 v9, 0xd

    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 3901
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->x()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3958
    :goto_e
    return-void

    .line 3907
    :cond_f
    iput-boolean p1, p0, Lcom/google/googlenav/ui/v;->P:Z

    .line 3909
    if-eqz p1, :cond_a9

    .line 3911
    if-eqz p2, :cond_89

    .line 3920
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v1}, LaM/am;->I()LaM/i;

    move-result-object v1

    if-eqz v1, :cond_b0

    .line 3921
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    invoke-virtual {v0, v8}, LaM/i;->c(Z)I

    move-result v1

    .line 3922
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    invoke-virtual {v0}, LaM/i;->q()I

    move-result v0

    .line 3924
    :goto_31
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v2}, Lat/u;->c()Lat/B;

    move-result-object v2

    .line 3925
    iget-object v3, p0, Lcom/google/googlenav/ui/v;->b:Lcom/google/googlenav/ui/ap;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/ap;->h()Lat/B;

    move-result-object v3

    .line 3926
    if-eqz v3, :cond_89

    .line 3929
    iget-object v4, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v3}, Lat/B;->c()I

    move-result v5

    invoke-virtual {v2}, Lat/B;->c()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v3}, Lat/B;->e()I

    move-result v6

    invoke-virtual {v2}, Lat/B;->e()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v4, v5, v6, v1, v0}, Lat/u;->a(IIII)Lat/Y;

    move-result-object v0

    .line 3933
    invoke-virtual {v0}, Lat/Y;->a()I

    move-result v1

    if-le v1, v9, :cond_69

    .line 3934
    invoke-static {v9}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    .line 3938
    :cond_69
    new-instance v1, Lat/B;

    invoke-virtual {v2}, Lat/B;->c()I

    move-result v4

    invoke-virtual {v3}, Lat/B;->c()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Lat/B;->e()I

    move-result v2

    invoke-virtual {v3}, Lat/B;->e()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v4, v2}, Lat/B;-><init>(II)V

    .line 3942
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v2, v1, v0}, Lat/u;->e(Lat/B;Lat/Y;)V

    .line 3945
    :cond_89
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->q()LaM/bD;

    .line 3950
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v0}, Lat/u;->d()Lat/Y;

    move-result-object v0

    invoke-virtual {v0}, Lat/Y;->a()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_a5

    .line 3952
    const/16 v0, 0x2cb

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    .line 3954
    :cond_a5
    iput-boolean v8, p0, Lcom/google/googlenav/ui/v;->ap:Z

    goto/16 :goto_e

    .line 3956
    :cond_a9
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->r()V

    goto/16 :goto_e

    :cond_b0
    move v1, v0

    goto :goto_31
.end method

.method public a(I)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3777
    packed-switch p1, :pswitch_data_28

    .line 3790
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->b()I

    move-result v2

    if-nez v2, :cond_12

    .line 3803
    :cond_b
    :goto_b
    return v0

    .line 3779
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->b()I

    move-result v2

    if-eq v2, v1, :cond_b

    .line 3796
    :cond_12
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v0, p1}, Lat/u;->a(I)V

    .line 3800
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->U()V

    .line 3801
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aP()V

    move v0, v1

    .line 3803
    goto :goto_b

    .line 3784
    :pswitch_1f
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->b()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    goto :goto_b

    .line 3777
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_c
        :pswitch_1f
    .end packed-switch
.end method

.method public a(ILZ/a;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2586
    packed-switch p1, :pswitch_data_4c

    .line 2617
    :pswitch_5
    if-eqz p2, :cond_a

    .line 2619
    packed-switch p1, :pswitch_data_5e

    .line 2625
    :cond_a
    :goto_a
    :pswitch_a
    return v0

    :pswitch_b
    move v0, v1

    .line 2592
    goto :goto_a

    .line 2594
    :pswitch_d
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aK()V

    move v0, v1

    .line 2595
    goto :goto_a

    .line 2597
    :pswitch_12
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->p()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v0

    .line 2598
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aP()V

    .line 2602
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2c

    .line 2603
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, LaM/i;->a(B)V

    :cond_2c
    move v0, v1

    .line 2605
    goto :goto_a

    .line 2607
    :pswitch_2e
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/ju;->p()Lcom/google/googlenav/ui/wizard/A;

    .line 2608
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v3, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/ui/wizard/ju;->a(LaM/am;Z)V

    move v0, v1

    .line 2609
    goto :goto_a

    .line 2612
    :pswitch_3c
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->p()Lcom/google/googlenav/ui/wizard/A;

    .line 2613
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->X()V

    move v0, v1

    .line 2614
    goto :goto_a

    .line 2621
    :pswitch_46
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/v;->c(LZ/a;)Z

    move v0, v1

    .line 2622
    goto :goto_a

    .line 2586
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_d
        :pswitch_12
        :pswitch_b
        :pswitch_a
        :pswitch_5
        :pswitch_2e
        :pswitch_3c
    .end packed-switch

    .line 2619
    :pswitch_data_5e
    .packed-switch 0x5
        :pswitch_46
    .end packed-switch
.end method

.method public a(LZ/a;)Z
    .registers 4
    .parameter

    .prologue
    .line 2353
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/v;->d(LZ/a;)Z

    move-result v0

    .line 2354
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/v;->p:LZ/a;

    .line 2357
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->q()V

    .line 2358
    return v0
.end method

.method public a(Laj/t;)Z
    .registers 3
    .parameter

    .prologue
    .line 2741
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aJ()V

    .line 2742
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->S:Lcom/google/googlenav/ui/s;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/s;->a(Laj/t;)Z

    move-result v0

    return v0
.end method

.method public aA()Lab/a;
    .registers 2

    .prologue
    .line 5964
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ag:Lab/a;

    return-object v0
.end method

.method public aB()Z
    .registers 2

    .prologue
    .line 6014
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->aN:Lcom/google/googlenav/ui/android/r;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/v;->aN:Lcom/google/googlenav/ui/android/r;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/r;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public aa()Lcom/google/googlenav/android/Y;
    .registers 2

    .prologue
    .line 4840
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->h:Lcom/google/googlenav/android/Y;

    return-object v0
.end method

.method public ab()Lcom/google/googlenav/mylocationnotifier/k;
    .registers 2

    .prologue
    .line 4849
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ai:Lcom/google/googlenav/mylocationnotifier/k;

    return-object v0
.end method

.method public ac()Lcom/google/googlenav/aA;
    .registers 2

    .prologue
    .line 4853
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->r:Lcom/google/googlenav/aA;

    return-object v0
.end method

.method public ad()Lcom/google/googlenav/j;
    .registers 2

    .prologue
    .line 4857
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->F:Lcom/google/googlenav/j;

    return-object v0
.end method

.method public ae()Lcom/google/googlenav/ui/s;
    .registers 2

    .prologue
    .line 4877
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->S:Lcom/google/googlenav/ui/s;

    return-object v0
.end method

.method public af()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 4987
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->af:Lcom/google/googlenav/ui/wizard/z;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/z;->c()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v3

    .line 4988
    const/4 v2, 0x0

    .line 4989
    const/4 v1, 0x0

    .line 4991
    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v3

    sparse-switch v3, :sswitch_data_5a

    move v0, v1

    move-object v1, v2

    .line 5013
    :cond_12
    :goto_12
    if-eqz v1, :cond_17

    .line 5014
    invoke-virtual {v1, v0}, LaM/i;->a(B)V

    .line 5016
    :cond_17
    return-void

    .line 4993
    :sswitch_18
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->af:Lcom/google/googlenav/ui/wizard/z;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/z;->d()Lcom/google/googlenav/ui/wizard/A;

    .line 4994
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v1}, LaM/am;->v()LaM/O;

    move-result-object v1

    .line 4996
    if-eqz v1, :cond_12

    .line 4998
    invoke-virtual {v1}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v2

    invoke-virtual {v1}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/F;->f()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Lcom/google/googlenav/F;->a(I)V

    goto :goto_12

    .line 5002
    :sswitch_37
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->af:Lcom/google/googlenav/ui/wizard/z;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/z;->d()Lcom/google/googlenav/ui/wizard/A;

    .line 5003
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v2}, LaM/am;->w()LaM/bK;

    move-result-object v2

    .line 5005
    if-eqz v2, :cond_57

    .line 5008
    invoke-virtual {v2}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v1

    invoke-virtual {v2}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/F;->f()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Lcom/google/googlenav/F;->a(I)V

    move-object v1, v2

    goto :goto_12

    :cond_57
    move v0, v1

    move-object v1, v2

    goto :goto_12

    .line 4991
    :sswitch_data_5a
    .sparse-switch
        0x4 -> :sswitch_18
        0x1b -> :sswitch_37
    .end sparse-switch
.end method

.method public ag()Lcom/google/googlenav/ui/wizard/C;
    .registers 2

    .prologue
    .line 5145
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    return-object v0
.end method

.method public ah()Z
    .registers 2

    .prologue
    .line 5152
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->t()Z

    move-result v0

    return v0
.end method

.method public ai()Lcom/google/googlenav/A;
    .registers 2

    .prologue
    .line 5417
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->aa:Lcom/google/googlenav/A;

    return-object v0
.end method

.method public aj()LY/c;
    .registers 2

    .prologue
    .line 5426
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ab:LY/c;

    return-object v0
.end method

.method public ak()LaM/am;
    .registers 2

    .prologue
    .line 5430
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    return-object v0
.end method

.method public al()Lax/m;
    .registers 2

    .prologue
    .line 5442
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    invoke-virtual {v0}, Lax/l;->f()Lax/m;

    move-result-object v0

    return-object v0
.end method

.method public am()Lax/m;
    .registers 2

    .prologue
    .line 5446
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    invoke-virtual {v0}, Lax/l;->g()Lax/m;

    move-result-object v0

    return-object v0
.end method

.method public an()Lcom/google/googlenav/ui/W;
    .registers 2

    .prologue
    .line 5450
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->an:Lcom/google/googlenav/ui/W;

    return-object v0
.end method

.method public ao()Lcom/google/googlenav/ui/wizard/z;
    .registers 2

    .prologue
    .line 5454
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->af:Lcom/google/googlenav/ui/wizard/z;

    return-object v0
.end method

.method public ap()Lcom/google/googlenav/ui/bJ;
    .registers 2

    .prologue
    .line 5462
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->u:Lcom/google/googlenav/ui/bJ;

    return-object v0
.end method

.method public aq()V
    .registers 3

    .prologue
    .line 5475
    invoke-static {}, Lcom/google/googlenav/common/Config;->e()Ljava/lang/String;

    move-result-object v0

    .line 5477
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->au:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->au:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 5478
    :cond_10
    invoke-static {}, Lcom/google/googlenav/ui/o;->a()V

    .line 5479
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->d()V

    .line 5480
    invoke-static {}, Lad/o;->b()V

    .line 5481
    invoke-static {}, Lcom/google/googlenav/ui/wizard/gj;->C()V

    .line 5482
    iput-object v0, p0, Lcom/google/googlenav/ui/v;->au:Ljava/lang/String;

    .line 5484
    :cond_22
    return-void
.end method

.method public ar()Z
    .registers 5

    .prologue
    .line 5505
    iget-wide v0, p0, Lcom/google/googlenav/ui/v;->Y:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    iget-wide v0, p0, Lcom/google/googlenav/ui/v;->Y:J

    const-wide/32 v2, 0x6ddd00

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/googlenav/ui/v;->Z:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public as()V
    .registers 4

    .prologue
    .line 5531
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->at()V

    .line 5535
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    invoke-virtual {v0}, LaM/i;->av()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    .line 5537
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/A;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 5540
    :cond_2a
    return-void
.end method

.method public at()V
    .registers 2

    .prologue
    .line 5543
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/v;->p(Z)V

    .line 5544
    return-void
.end method

.method public au()Lcom/google/googlenav/ui/wizard/ju;
    .registers 2

    .prologue
    .line 5584
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    return-object v0
.end method

.method public av()Lcom/google/googlenav/friend/j;
    .registers 2

    .prologue
    .line 5915
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->A:Lcom/google/googlenav/friend/j;

    return-object v0
.end method

.method public aw()Z
    .registers 2

    .prologue
    .line 5934
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->aA:Ljava/lang/Boolean;

    if-nez v0, :cond_12

    .line 5935
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/aA;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/v;->aA:Ljava/lang/Boolean;

    .line 5937
    :cond_12
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->aA:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ax()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 5941
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v0}, Lat/u;->c()Lat/B;

    move-result-object v0

    invoke-static {v0, v2}, Lad/y;->a(Lat/B;Ln/B;)Lad/y;

    move-result-object v0

    .line 5942
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v1}, LaM/am;->x()LaM/bU;

    move-result-object v1

    .line 5943
    if-eqz v1, :cond_22

    .line 5944
    invoke-virtual {v1}, LaM/bU;->ax()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 5945
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0, v1}, LaM/am;->d(LaM/i;)V

    .line 5947
    :cond_1e
    invoke-virtual {v1}, LaM/bU;->e()V

    .line 5953
    :goto_21
    return-void

    .line 5949
    :cond_22
    invoke-virtual {p0, v0, v2}, Lcom/google/googlenav/ui/v;->a(Lad/y;Lad/y;)Lcom/google/googlenav/aa;

    move-result-object v2

    .line 5950
    const/16 v0, 0x4ca

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;J)V

    goto :goto_21
.end method

.method public ay()Z
    .registers 2

    .prologue
    .line 5956
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->P()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->O()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public az()Lcom/google/googlenav/offers/a;
    .registers 2

    .prologue
    .line 5960
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->d:Lcom/google/googlenav/offers/a;

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 3772
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v0}, Lat/u;->f()Lat/H;

    move-result-object v0

    invoke-virtual {v0}, Lat/H;->c()I

    move-result v0

    return v0
.end method

.method public b(Ljava/util/List;Lcom/google/googlenav/bc;)LaM/aI;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3688
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/v;->c(Ljava/util/List;Lcom/google/googlenav/bc;)Lcom/google/googlenav/aW;

    move-result-object v0

    .line 3689
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v1, v0}, LaM/am;->d(Lcom/google/googlenav/aW;)LaM/aI;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .registers 4
    .parameter

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/wizard/ju;->a(LaM/am;I)V

    .line 1391
    return-void
.end method

.method public b(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 4338
    :try_start_0
    iput p1, p0, Lcom/google/googlenav/ui/v;->n:I

    .line 4339
    iput p2, p0, Lcom/google/googlenav/ui/v;->o:I

    .line 4340
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    iget v1, p0, Lcom/google/googlenav/ui/v;->n:I

    iget v2, p0, Lcom/google/googlenav/ui/v;->o:I

    invoke-virtual {v0, v1, v2}, Lat/p;->d(II)V

    .line 4341
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    iget v1, p0, Lcom/google/googlenav/ui/v;->n:I

    iget v2, p0, Lcom/google/googlenav/ui/v;->o:I

    invoke-virtual {v0, v1, v2}, Lat/u;->c(II)V

    .line 4342
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/v;->n:I

    iget v2, p0, Lcom/google/googlenav/ui/v;->o:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/bn;->b(II)V

    .line 4343
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->U()V

    .line 4344
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aP()V

    .line 4353
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->S:Lcom/google/googlenav/ui/s;

    if-eqz v0, :cond_30

    .line 4354
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->S:Lcom/google/googlenav/ui/s;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/s;->c(II)V
    :try_end_30
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_30} :catch_31

    .line 4359
    :cond_30
    :goto_30
    return-void

    .line 4356
    :catch_31
    move-exception v0

    .line 4357
    invoke-static {}, Lcom/google/googlenav/common/j;->b()V

    goto :goto_30
.end method

.method public b(LaM/aT;)V
    .registers 3
    .parameter

    .prologue
    .line 5049
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0, p1}, LaM/am;->a(LaM/aT;)V

    .line 5050
    return-void
.end method

.method public b(Lac/g;)V
    .registers 2
    .parameter

    .prologue
    .line 1719
    invoke-interface {p1}, Lac/g;->m_()V

    .line 1720
    return-void
.end method

.method public b(Lad/b;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 2977
    const/4 v0, 0x4

    const-string v1, "rs"

    invoke-virtual {p1}, Lad/b;->y()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2983
    invoke-static {}, Lad/o;->a()Lad/o;

    move-result-object v0

    invoke-virtual {p1}, Lad/b;->aF()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lad/o;->a([I)V

    .line 2987
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/v;->i(Lad/b;)V

    .line 2989
    invoke-virtual {p1}, Lad/b;->y()I

    move-result v0

    if-ne v0, v3, :cond_44

    .line 2990
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->ac()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2991
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->i()Lcom/google/googlenav/ui/wizard/bZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bZ;->a()V

    .line 2993
    :cond_3e
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0, p1}, LaM/am;->c(Lad/b;)V

    .line 3052
    :goto_43
    return-void

    .line 2994
    :cond_44
    invoke-virtual {p1}, Lad/b;->z()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 2995
    invoke-virtual {p1}, Lad/b;->k()I

    move-result v0

    invoke-virtual {p1, v0}, Lad/b;->u(I)V

    .line 2999
    invoke-virtual {p1}, Lad/b;->A()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-static {}, LaM/O;->bp()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 3000
    invoke-virtual {p1}, Lad/b;->aR()Lad/b;

    move-result-object v0

    .line 3004
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/jB;->ab()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 3005
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/jB;->h()Lcom/google/googlenav/ui/wizard/bM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/bM;->a()V

    .line 3010
    :cond_7a
    const/16 v1, 0x5c2

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lad/b;->aT()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lad/b;->aT()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lad/b;->b(Ljava/lang/String;)V

    .line 3013
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/v;->a(Lad/b;)V

    goto :goto_43

    .line 3015
    :cond_9b
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/v;->c(Lad/b;)V

    goto :goto_43

    .line 3019
    :cond_9f
    invoke-virtual {p1}, Lad/b;->m()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 3024
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->i()V

    .line 3025
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/ju;->a(Lad/b;)V

    .line 3047
    :cond_af
    :goto_af
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->aD:Lcom/google/googlenav/ui/aB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aB;->g()LaD/k;

    move-result-object v0

    invoke-virtual {p1}, Lad/b;->aw()Lat/B;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, LaD/k;->a(Lat/B;ILjava/lang/String;)V

    .line 3049
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->aD:Lcom/google/googlenav/ui/aB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aB;->g()LaD/k;

    move-result-object v0

    invoke-virtual {p1}, Lad/b;->aC()Lat/B;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, LaD/k;->a(Lat/B;ILjava/lang/String;)V

    goto/16 :goto_43

    .line 3029
    :cond_cb
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->ac()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 3030
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->i()Lcom/google/googlenav/ui/wizard/bZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bZ;->a()V

    .line 3032
    :cond_e4
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->aa()Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 3033
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->e()Lcom/google/googlenav/ui/wizard/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bu;->a()V

    .line 3036
    :cond_fd
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/v;->e(Lad/b;)LaM/O;

    move-result-object v0

    .line 3040
    if-eqz v0, :cond_af

    .line 3041
    invoke-virtual {v0, p1}, LaM/O;->c(Lcom/google/googlenav/F;)V

    goto :goto_af
.end method

.method public b(Lad/k;)V
    .registers 3
    .parameter

    .prologue
    .line 5212
    instance-of v0, p1, Lad/b;

    if-eqz v0, :cond_c

    .line 5213
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    check-cast p1, Lad/b;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/ju;->c(Lad/b;)V

    .line 5218
    :goto_b
    return-void

    .line 5215
    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    check-cast p1, Lad/j;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/ju;->a(Lad/j;)V

    goto :goto_b
.end method

.method public b(Lat/B;)V
    .registers 3
    .parameter

    .prologue
    .line 4131
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->b:Lcom/google/googlenav/ui/ap;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->d()V

    .line 4132
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->aa:Lcom/google/googlenav/A;

    invoke-virtual {v0}, Lcom/google/googlenav/A;->b()Z

    .line 4133
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->F()V

    .line 4134
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->q()V

    .line 4135
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 4901
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/v;->b(Ljava/lang/Object;B)V

    .line 4902
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 5170
    iget-boolean v0, p0, Lcom/google/googlenav/ui/v;->az:Z

    if-eqz v0, :cond_9

    .line 5171
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->w:Lcom/google/googlenav/ui/aC;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/aC;->a(Ljava/lang/String;)V

    .line 5173
    :cond_9
    return-void
.end method

.method public b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 3969
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->i()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3978
    :goto_a
    return-void

    .line 3973
    :cond_b
    if-eqz p1, :cond_11

    .line 3974
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->K()V

    goto :goto_a

    .line 3976
    :cond_11
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->B()LaM/X;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/v;->a(LaM/i;)V

    goto :goto_a
.end method

.method public b(LZ/a;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2412
    iget-boolean v1, p0, Lcom/google/googlenav/ui/v;->j:Z

    if-eqz v1, :cond_6

    .line 2450
    :cond_5
    :goto_5
    return v0

    .line 2416
    :cond_6
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aI()V

    .line 2418
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->C()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p1}, LZ/a;->d()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2424
    :cond_15
    invoke-virtual {p1}, LZ/a;->d()Z

    move-result v0

    if-nez v0, :cond_20

    .line 2427
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->Q:Lcom/google/googlenav/ui/ab;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/ab;->a(LZ/a;)V

    .line 2430
    :cond_20
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/v;->e(LZ/a;)V

    .line 2432
    const/4 v0, 0x0

    .line 2435
    :try_start_24
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/v;->f(LZ/a;)Z

    move-result v0

    .line 2437
    invoke-virtual {p1}, LZ/a;->d()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 2440
    iput-object p1, p0, Lcom/google/googlenav/ui/v;->p:LZ/a;

    .line 2441
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlenav/ui/v;->L:J

    .line 2445
    :cond_3e
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->q()V
    :try_end_41
    .catch Ljava/lang/OutOfMemoryError; {:try_start_24 .. :try_end_41} :catch_42

    goto :goto_5

    .line 2446
    :catch_42
    move-exception v1

    .line 2447
    invoke-static {}, Lcom/google/googlenav/common/j;->b()V

    goto :goto_5
.end method

.method public b_(Z)V
    .registers 4
    .parameter

    .prologue
    .line 3813
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v0}, Lat/u;->f()Lat/H;

    move-result-object v0

    invoke-virtual {v0}, Lat/H;->g()Z

    move-result v0

    if-ne p1, v0, :cond_d

    .line 3818
    :goto_c
    return-void

    .line 3817
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    invoke-virtual {v1}, Lat/p;->b()Lat/H;

    move-result-object v1

    invoke-virtual {v1, p1}, Lat/H;->a(Z)Lat/H;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/p;->a(Lat/H;)V

    goto :goto_c
.end method

.method public c(I)V
    .registers 3
    .parameter

    .prologue
    .line 3420
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0, p1}, LaM/am;->e(I)V

    .line 3421
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->K()V

    .line 3422
    return-void
.end method

.method public c(LaM/aT;)V
    .registers 4
    .parameter

    .prologue
    .line 5057
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0, v1, p1}, LaM/am;->a(Lcom/google/googlenav/ui/wizard/ju;LaM/aT;)V

    .line 5059
    return-void
.end method

.method public c(Lad/b;)V
    .registers 3
    .parameter

    .prologue
    .line 5579
    invoke-virtual {p1}, Lad/b;->t()V

    .line 5580
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/ju;->e(Lad/b;)V

    .line 5581
    return-void
.end method

.method public c(Lat/B;)V
    .registers 3
    .parameter

    .prologue
    .line 5298
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/ju;->a(Lat/B;)V

    .line 5299
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .registers 6
    .parameter

    .prologue
    .line 4957
    check-cast p1, Lcom/google/googlenav/bi;

    .line 4958
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, LaM/am;->a(Lcom/google/googlenav/bi;BZ[Ljava/lang/String;)LaM/C;

    .line 4959
    return-void
.end method

.method public c(Z)V
    .registers 3
    .parameter

    .prologue
    .line 5929
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ac:Lax/b;

    invoke-virtual {v0, p1}, Lax/b;->a(Z)V

    .line 5930
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 3808
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v0}, Lat/u;->f()Lat/H;

    move-result-object v0

    invoke-virtual {v0}, Lat/H;->g()Z

    move-result v0

    return v0
.end method

.method c(LZ/a;)Z
    .registers 3
    .parameter

    .prologue
    .line 2567
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/v;->g(LZ/a;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2568
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/v;->h(LZ/a;)Z

    move-result v0

    .line 2570
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public c(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 3983
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0, p1}, LaM/am;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Lcom/google/googlenav/ag;
    .registers 4
    .parameter

    .prologue
    .line 3628
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/v;->m(Ljava/lang/String;)Lax/E;

    move-result-object v0

    .line 3629
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/v;->a(Lax/E;)Lcom/google/googlenav/ai;

    move-result-object v1

    .line 3633
    if-nez v1, :cond_15

    .line 3634
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/v;->l(Ljava/lang/String;)V

    .line 3636
    if-nez v0, :cond_12

    sget-object v0, Lcom/google/googlenav/ag;->a:Lcom/google/googlenav/ag;

    .line 3640
    :goto_11
    return-object v0

    .line 3636
    :cond_12
    sget-object v0, Lcom/google/googlenav/ag;->b:Lcom/google/googlenav/ag;

    goto :goto_11

    .line 3638
    :cond_15
    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/v;->b(Lcom/google/googlenav/ai;)V

    .line 3640
    sget-object v0, Lcom/google/googlenav/ag;->c:Lcom/google/googlenav/ag;

    goto :goto_11
.end method

.method public d(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 4093
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->C:Lan/h;

    invoke-interface {v0}, Lan/h;->g()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4128
    :goto_9
    return-void

    .line 4098
    :cond_a
    const/4 v0, 0x0

    .line 4099
    packed-switch p1, :pswitch_data_44

    goto :goto_9

    .line 4115
    :pswitch_f
    iget-boolean v1, p0, Lcom/google/googlenav/ui/v;->ar:Z

    if-eqz v1, :cond_1b

    .line 4116
    iput-boolean v2, p0, Lcom/google/googlenav/ui/v;->ar:Z

    .line 4117
    const/16 v0, 0x5f4

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 4123
    :cond_1b
    :goto_1b
    if-eqz v0, :cond_20

    .line 4124
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    .line 4126
    :cond_20
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->F()V

    .line 4127
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->q()V

    goto :goto_9

    .line 4101
    :pswitch_29
    iget-boolean v1, p0, Lcom/google/googlenav/ui/v;->as:Z

    if-eqz v1, :cond_1b

    .line 4102
    iput-boolean v2, p0, Lcom/google/googlenav/ui/v;->as:Z

    .line 4103
    const/16 v0, 0x3e4

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 4107
    :pswitch_36
    iget-boolean v1, p0, Lcom/google/googlenav/ui/v;->at:Z

    if-eqz v1, :cond_1b

    .line 4108
    iput-boolean v2, p0, Lcom/google/googlenav/ui/v;->at:Z

    .line 4109
    const/16 v0, 0x503

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 4099
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_f
        :pswitch_29
        :pswitch_36
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public d(Lad/b;)V
    .registers 3
    .parameter

    .prologue
    .line 5225
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0, p1}, LaM/am;->c(Lad/b;)V

    .line 5226
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 4967
    check-cast p1, Ljava/lang/String;

    .line 4968
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    const/16 v1, 0x14a

    invoke-virtual {v0, v1, p1}, LaM/am;->a(ILjava/lang/Object;)V

    .line 4969
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->K()V

    .line 4970
    return-void
.end method

.method public d(Z)V
    .registers 2
    .parameter

    .prologue
    .line 1173
    iput-boolean p1, p0, Lcom/google/googlenav/ui/v;->aE:Z

    .line 1174
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 3881
    iget-boolean v0, p0, Lcom/google/googlenav/ui/v;->P:Z

    return v0
.end method

.method public e(Lad/b;)LaM/O;
    .registers 3
    .parameter

    .prologue
    .line 3844
    invoke-static {}, LaM/O;->bp()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3845
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0, p1}, LaM/am;->b(Lad/b;)LaM/O;

    move-result-object v0

    .line 3847
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0, p1}, LaM/am;->a(Lad/b;)LaM/O;

    move-result-object v0

    goto :goto_c
.end method

.method public e(Ljava/lang/String;)Lcom/google/googlenav/ai;
    .registers 3
    .parameter

    .prologue
    .line 3623
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/v;->m(Ljava/lang/String;)Lax/E;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/v;->a(Lax/E;)Lcom/google/googlenav/ai;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 4973
    check-cast p1, Ljava/lang/String;

    .line 4974
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->y()LaM/bx;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, LaM/bx;->a(Ljava/lang/String;Z)V

    .line 4975
    return-void
.end method

.method public e(Z)V
    .registers 3
    .parameter

    .prologue
    .line 3365
    invoke-static {}, Lay/a;->z()Lay/a;

    move-result-object v0

    invoke-virtual {v0}, Lay/a;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3369
    :goto_a
    return-void

    .line 3368
    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->aG:Lcom/google/googlenav/ui/ah;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/ah;->a(Z)V

    goto :goto_a
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 3963
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->B()LaM/X;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public f()V
    .registers 2

    .prologue
    .line 3871
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->V()V

    .line 3872
    return-void
.end method

.method public f(Lad/b;)V
    .registers 3
    .parameter

    .prologue
    .line 4978
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/ju;->d(Lad/b;)V

    .line 4979
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 3055
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    .line 3056
    new-instance v1, Lcom/google/googlenav/ch;

    invoke-direct {v1, p1}, Lcom/google/googlenav/ch;-><init>(Ljava/lang/String;)V

    .line 3057
    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 3058
    return-void
.end method

.method public f(Z)V
    .registers 5
    .parameter

    .prologue
    .line 3431
    if-eqz p1, :cond_15

    .line 3432
    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v0

    const-string v1, "LayerTransit"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/f;->c(Ljava/lang/String;)Lcom/google/googlenav/layer/m;

    move-result-object v0

    .line 3433
    if-eqz v0, :cond_14

    .line 3434
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, LaM/am;->b(Lcom/google/googlenav/layer/m;Z)LaM/y;

    .line 3439
    :cond_14
    :goto_14
    return-void

    .line 3437
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    const-string v2, "LayerTransit"

    invoke-virtual {v1, v2}, LaM/am;->e(Ljava/lang/String;)LaM/i;

    move-result-object v1

    invoke-virtual {v0, v1}, LaM/am;->g(LaM/i;)V

    goto :goto_14
.end method

.method public g()Lcom/google/googlenav/common/util/l;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 5662
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 5665
    const/4 v0, 0x6

    new-array v3, v0, [Lcom/google/googlenav/common/util/n;

    iget-object v0, p0, Lcom/google/googlenav/ui/v;->S:Lcom/google/googlenav/ui/s;

    aput-object v0, v3, v1

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    invoke-virtual {v0}, Lat/p;->a()Lat/D;

    move-result-object v0

    :goto_17
    aput-object v0, v3, v4

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    aput-object v4, v3, v0

    const/4 v0, 0x3

    invoke-static {}, Lcom/google/googlenav/aC;->a()Lcom/google/googlenav/aC;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x5

    iget-object v4, p0, Lcom/google/googlenav/ui/v;->aF:Lah/o;

    aput-object v4, v3, v0

    move v0, v1

    .line 5667
    :goto_32
    array-length v4, v3

    if-ge v0, v4, :cond_45

    .line 5668
    aget-object v4, v3, v0

    .line 5671
    if-eqz v4, :cond_40

    .line 5672
    invoke-interface {v4}, Lcom/google/googlenav/common/util/n;->g()Lcom/google/googlenav/common/util/l;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5667
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 5665
    :cond_43
    const/4 v0, 0x0

    goto :goto_17

    .line 5677
    :cond_45
    new-instance v0, Lcom/google/googlenav/common/util/l;

    const-string v3, "GMM memory usage"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;ILjava/util/List;)V

    return-object v0
.end method

.method public g(Lad/b;)V
    .registers 3
    .parameter

    .prologue
    .line 5027
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/ju;->b(Lad/b;)V

    .line 5028
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 3426
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/v;Ljava/lang/String;Z)V

    .line 3427
    return-void
.end method

.method public g(Z)V
    .registers 4
    .parameter

    .prologue
    .line 3827
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->O()Z

    move-result v0

    if-ne p1, v0, :cond_7

    .line 3831
    :goto_6
    return-void

    .line 3830
    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    invoke-virtual {v1}, Lat/p;->b()Lat/H;

    move-result-object v1

    invoke-virtual {v1, p1}, Lat/H;->b(Z)Lat/H;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/p;->a(Lat/H;)V

    goto :goto_6
.end method

.method public h()Lcom/google/googlenav/E;
    .registers 2

    .prologue
    .line 3876
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->W()Lcom/google/googlenav/E;

    move-result-object v0

    return-object v0
.end method

.method public h(Lad/b;)V
    .registers 3
    .parameter

    .prologue
    .line 5032
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->g()Lcom/google/googlenav/ui/wizard/bH;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/bH;->a(Lad/b;)V

    .line 5033
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 4769
    new-instance v0, Lcom/google/googlenav/aW;

    new-instance v1, Lcom/google/googlenav/bd;

    invoke-direct {v1}, Lcom/google/googlenav/bd;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/aW;-><init>(Lcom/google/googlenav/bc;Lat/u;)V

    .line 4773
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 4774
    return-void
.end method

.method public h(Z)V
    .registers 3
    .parameter

    .prologue
    .line 4036
    const-string v0, "GmmController.showNotify"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 4037
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/v;->p:LZ/a;

    .line 4040
    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, p0, Lcom/google/googlenav/ui/v;->m:Z

    .line 4041
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/v;->l(Z)V

    .line 4045
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->T()V
    :try_end_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_11} :catch_17

    .line 4049
    :goto_11
    const-string v0, "GmmController.showNotify"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 4050
    return-void

    .line 4046
    :catch_17
    move-exception v0

    .line 4047
    invoke-static {}, Lcom/google/googlenav/common/j;->b()V

    goto :goto_11
.end method

.method public i()V
    .registers 6

    .prologue
    .line 1341
    new-instance v0, Lcom/google/googlenav/layer/k;

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v1}, Lat/u;->f()Lat/H;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v2}, Lat/u;->a()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v3}, Lat/u;->b()I

    move-result v3

    const-string v4, "__LAYERS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/layer/k;-><init>(Lat/H;IILjava/lang/String;)V

    .line 1344
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 1347
    new-instance v1, Lcom/google/googlenav/ui/z;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/z;-><init>(Lcom/google/googlenav/ui/v;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/k;->a(Lcom/google/googlenav/layer/l;)V

    .line 1354
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 5233
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->a()V

    .line 5234
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;)V

    .line 5235
    return-void
.end method

.method public i(Z)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 4424
    iget-boolean v0, p0, Lcom/google/googlenav/ui/v;->j:Z

    if-eqz v0, :cond_6

    .line 4479
    :goto_5
    return-void

    .line 4428
    :cond_6
    iput-boolean v1, p0, Lcom/google/googlenav/ui/v;->j:Z

    .line 4430
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->aj()LY/c;

    move-result-object v0

    invoke-virtual {v0}, LY/c;->e()V

    .line 4431
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->v:Lcom/google/googlenav/ui/bK;

    if-eqz v0, :cond_18

    .line 4432
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->v:Lcom/google/googlenav/ui/bK;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bK;->e()V

    .line 4434
    :cond_18
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->R()V

    .line 4435
    if-eqz p1, :cond_20

    .line 4436
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/v;->j(Z)V

    .line 4457
    :cond_20
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->O:Lcom/google/googlenav/ui/ac;

    invoke-interface {v0}, Lcom/google/googlenav/ui/ac;->c()V

    .line 4458
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    invoke-virtual {v0, p1}, Lat/p;->a(Z)V

    .line 4459
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->c()V

    .line 4460
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->D:Lat/V;

    invoke-virtual {v0}, Lat/V;->a()V

    .line 4461
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->E:Lat/k;

    invoke-virtual {v0}, Lat/k;->d()V

    .line 4465
    invoke-static {}, Lcom/google/googlenav/friend/E;->j()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 4466
    invoke-static {}, Lcom/google/googlenav/friend/E;->i()Lcom/google/googlenav/friend/E;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/friend/E;->b(Las/h;)V

    .line 4468
    :cond_46
    invoke-static {}, Lcom/google/googlenav/friend/au;->j()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 4469
    invoke-static {}, Lcom/google/googlenav/friend/au;->i()Lcom/google/googlenav/friend/au;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/friend/au;->b(Las/h;)V

    .line 4471
    :cond_53
    invoke-static {}, Lcom/google/googlenav/friend/Y;->j()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 4472
    invoke-static {}, Lcom/google/googlenav/friend/Y;->i()Lcom/google/googlenav/friend/Y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/friend/Y;->b(Las/h;)V

    .line 4474
    :cond_60
    invoke-static {}, Lcom/google/googlenav/bj;->b()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 4475
    invoke-static {}, Lcom/google/googlenav/bj;->a()Lcom/google/googlenav/bj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/bj;->b(Las/h;)V

    .line 4478
    :cond_6d
    invoke-static {p0}, Lcom/google/googlenav/common/j;->c(Lcom/google/googlenav/common/h;)V

    goto :goto_5
.end method

.method public j()LaM/bx;
    .registers 2

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->y()LaM/bx;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 5898
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->j()LaM/bx;

    move-result-object v0

    invoke-virtual {v0, p1}, LaM/bx;->c(Ljava/lang/String;)V

    .line 5899
    return-void
.end method

.method public j(Z)V
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4489
    if-eqz p1, :cond_1a

    .line 4493
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bn;->S()Lcom/google/googlenav/ui/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/p;->h()V

    .line 4494
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bn;->T()Lcom/google/googlenav/ui/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bm;->h()V

    .line 4497
    :cond_1a
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v2}, LaM/am;->M()V

    .line 4502
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    iget-object v3, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    invoke-virtual {v3}, Lat/u;->f()Lat/H;

    move-result-object v3

    invoke-virtual {v2, v3}, Lat/p;->a(Lat/H;)V

    .line 4503
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    invoke-virtual {v2}, Lat/p;->f()V

    .line 4505
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 4506
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v2

    invoke-virtual {v2}, Lax/l;->m()V

    .line 4509
    :cond_3c
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->aD:Lcom/google/googlenav/ui/aB;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aB;->g()LaD/k;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 4510
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->aD:Lcom/google/googlenav/ui/aB;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aB;->g()LaD/k;

    move-result-object v2

    invoke-interface {v2}, LaD/k;->b()V

    .line 4514
    :cond_4d
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->s:Lcom/google/googlenav/common/io/j;

    const-string v3, "TRAFFIC_ON"

    new-array v4, v0, [B

    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->d()Z

    move-result v5

    if-eqz v5, :cond_6d

    :goto_59
    int-to-byte v0, v0

    aput-byte v0, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 4517
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->s:Lcom/google/googlenav/common/io/j;

    invoke-static {v0}, LaM/bU;->a(Lcom/google/googlenav/common/io/j;)V

    .line 4518
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->s:Lcom/google/googlenav/common/io/j;

    invoke-interface {v0}, Lcom/google/googlenav/common/io/j;->a()V

    .line 4520
    invoke-static {}, LaT/k;->d()V

    .line 4521
    return-void

    :cond_6d
    move v0, v1

    .line 4514
    goto :goto_59
.end method

.method public k()Lah/o;
    .registers 4

    .prologue
    .line 5435
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->aF:Lah/o;

    if-nez v0, :cond_f

    .line 5436
    new-instance v0, Lah/o;

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->h:Lcom/google/googlenav/android/Y;

    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ab:LY/c;

    invoke-direct {v0, v1, v2}, Lah/o;-><init>(Lcom/google/googlenav/android/Y;LY/c;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/v;->aF:Lah/o;

    .line 5438
    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->aF:Lah/o;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 5907
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->j()LaM/bx;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LaM/bx;->a(Ljava/lang/String;Z)V

    .line 5908
    return-void
.end method

.method public declared-synchronized k(Z)V
    .registers 3
    .parameter

    .prologue
    .line 4536
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/googlenav/ui/v;->j:Z

    if-nez v0, :cond_43

    iget-boolean v0, p0, Lcom/google/googlenav/ui/v;->i:Z

    if-nez v0, :cond_43

    .line 4537
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aD()V

    .line 4539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/v;->i:Z

    .line 4540
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->D:Lat/V;

    if-eqz v0, :cond_18

    .line 4541
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->D:Lat/V;

    invoke-virtual {v0}, Lat/V;->d()V

    .line 4543
    :cond_18
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->x()V

    .line 4546
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 4547
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->q()V

    .line 4549
    :cond_2a
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    invoke-virtual {v0}, Lat/p;->h()V

    .line 4551
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aO()V

    .line 4562
    if-eqz p1, :cond_37

    .line 4563
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->at()V

    .line 4566
    :cond_37
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aM()V

    .line 4568
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->d:Lcom/google/googlenav/offers/a;

    if-eqz v0, :cond_43

    .line 4569
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->d:Lcom/google/googlenav/offers/a;

    invoke-virtual {v0}, Lcom/google/googlenav/offers/a;->b()V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    .line 4572
    :cond_43
    monitor-exit p0

    return-void

    .line 4536
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public l()Lcom/google/googlenav/L;
    .registers 2

    .prologue
    .line 4845
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ah:Lcom/google/googlenav/L;

    return-object v0
.end method

.method public declared-synchronized l(Z)V
    .registers 6
    .parameter

    .prologue
    .line 4672
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/googlenav/ui/v;->aA:Ljava/lang/Boolean;

    .line 4673
    iget-boolean v0, p0, Lcom/google/googlenav/ui/v;->i:Z

    if-eqz v0, :cond_96

    .line 4674
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->N()V

    .line 4682
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/v;->I:I

    .line 4683
    sget-object v0, Lcom/google/googlenav/z;->c:Lcom/google/googlenav/z;

    invoke-static {v0}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;)V

    .line 4684
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    invoke-static {v0}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;)V

    .line 4686
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->b:Lcom/google/googlenav/ui/ap;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->w()V

    .line 4688
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aI()V

    .line 4689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/v;->m:Z

    .line 4690
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/v;->i:Z

    .line 4691
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->D:Lat/V;

    if-eqz v0, :cond_2f

    .line 4692
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->D:Lat/V;

    invoke-virtual {v0}, Lat/V;->c()V

    .line 4696
    :cond_2f
    if-nez p1, :cond_3c

    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->z()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 4697
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->C:Lan/h;

    invoke-interface {v0}, Lan/h;->k()V

    .line 4701
    :cond_3c
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 4702
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->r()V

    .line 4705
    :cond_49
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->B:Lat/p;

    invoke-virtual {v0}, Lat/p;->i()V

    .line 4708
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aO()V

    .line 4709
    const/4 v0, 0x0

    .line 4710
    new-instance v1, Lcom/google/googlenav/ui/F;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/v;->h:Lcom/google/googlenav/android/Y;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/googlenav/ui/F;-><init>(Lcom/google/googlenav/ui/v;LY/c;Lcom/google/googlenav/android/Y;Z)V

    iput-object v1, p0, Lcom/google/googlenav/ui/v;->k:LY/d;

    .line 4717
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->k:LY/d;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, LY/d;->c(J)V

    .line 4718
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->k:LY/d;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, LY/d;->a(J)V

    .line 4719
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/googlenav/ui/G;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/G;-><init>(Lcom/google/googlenav/ui/v;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    .line 4734
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->y()V

    .line 4736
    const/4 v0, 0x0

    .line 4737
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->h:Lcom/google/googlenav/android/Y;

    new-instance v2, Lcom/google/googlenav/ui/H;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/H;-><init>(Lcom/google/googlenav/ui/v;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 4745
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aS()Z

    .line 4747
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aL()V

    .line 4749
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->d:Lcom/google/googlenav/offers/a;

    if-eqz v0, :cond_96

    .line 4750
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->d:Lcom/google/googlenav/offers/a;

    invoke-virtual {v0}, Lcom/google/googlenav/offers/a;->a()V

    .line 4755
    :cond_96
    sget-object v0, Lcom/google/googlenav/z;->e:Lcom/google/googlenav/z;

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ab:LY/c;

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;LY/c;)V
    :try_end_9d
    .catchall {:try_start_2 .. :try_end_9d} :catchall_9f

    .line 4756
    monitor-exit p0

    return-void

    .line 4672
    :catchall_9f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public m()LaM/a;
    .registers 2

    .prologue
    .line 5924
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->ab()LaM/a;

    move-result-object v0

    return-object v0
.end method

.method public m(Z)V
    .registers 3
    .parameter

    .prologue
    .line 5083
    if-nez p1, :cond_b

    .line 5084
    const/16 v0, 0x2ac

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    .line 5086
    :cond_b
    return-void
.end method

.method public n()Lcom/google/googlenav/ui/av;
    .registers 2

    .prologue
    .line 3357
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->t:Lcom/google/googlenav/ui/av;

    return-object v0
.end method

.method public n(Z)V
    .registers 4
    .parameter

    .prologue
    .line 5406
    if-eqz p1, :cond_7

    .line 5411
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->M()V

    .line 5413
    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->r:Lcom/google/googlenav/aA;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/app/bj;->a(Z)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/aA;->b(Ljava/lang/String;)V

    .line 5414
    return-void
.end method

.method public o()LaM/i;
    .registers 2

    .prologue
    .line 6019
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    return-object v0
.end method

.method public o(Z)V
    .registers 10
    .parameter

    .prologue
    const-wide/16 v6, 0x1f4

    .line 5493
    iput-boolean p1, p0, Lcom/google/googlenav/ui/v;->W:Z

    .line 5494
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    .line 5495
    if-eqz p1, :cond_18

    .line 5496
    const-wide/16 v2, 0x5dc

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/googlenav/ui/v;->H:J

    .line 5502
    :cond_17
    :goto_17
    return-void

    .line 5498
    :cond_18
    iget-wide v2, p0, Lcom/google/googlenav/ui/v;->H:J

    add-long v4, v0, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_17

    .line 5499
    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/google/googlenav/ui/v;->H:J

    goto :goto_17
.end method

.method public p()Lcom/google/googlenav/ui/ap;
    .registers 2

    .prologue
    .line 5458
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->b:Lcom/google/googlenav/ui/ap;

    return-object v0
.end method

.method public p(Z)V
    .registers 3
    .parameter

    .prologue
    .line 5555
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->a()V

    .line 5558
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 5559
    if-eqz v0, :cond_e

    .line 5560
    invoke-virtual {v0}, LaM/i;->Z()V

    .line 5564
    :cond_e
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    .line 5565
    if-eqz v0, :cond_19

    .line 5566
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->a()V

    .line 5570
    :cond_19
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->r:Lcom/google/googlenav/aA;

    invoke-interface {v0}, Lcom/google/googlenav/aA;->f()V

    .line 5572
    if-eqz p1, :cond_27

    .line 5573
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->a()V

    .line 5575
    :cond_27
    return-void
.end method

.method public q()V
    .registers 3

    .prologue
    .line 4813
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->w()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 4819
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    invoke-static {v0}, Lcom/google/googlenav/u;->c(Lcom/google/googlenav/z;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4837
    :goto_12
    return-void

    .line 4825
    :cond_13
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aG()V

    .line 4828
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 4829
    invoke-direct {p0}, Lcom/google/googlenav/ui/v;->aF()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v1

    if-nez v1, :cond_3e

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, LaM/i;->aa()Z

    move-result v1

    if-nez v1, :cond_39

    invoke-virtual {v0}, LaM/i;->av()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3e

    .line 4831
    :cond_39
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->G()Z

    .line 4833
    :cond_3e
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v0}, LaM/am;->H()V

    goto :goto_12

    .line 4835
    :cond_44
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->g:Lcom/google/googlenav/ui/android/L;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/L;->q()V

    goto :goto_12
.end method

.method public q(Z)V
    .registers 6
    .parameter

    .prologue
    .line 5973
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->ag()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 5974
    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->ag()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->a()V

    .line 5976
    :cond_d
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    .line 5978
    new-instance v1, Lcom/google/googlenav/ui/N;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/ui/N;-><init>(Lcom/google/googlenav/ui/v;Z)V

    new-instance v2, Lcom/google/googlenav/ui/O;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/ui/O;-><init>(Lcom/google/googlenav/ui/v;Lcom/google/android/maps/MapsActivity;)V

    new-instance v3, Laz/h;

    invoke-direct {v3}, Laz/h;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/MapsActivity;->activateAreaSelector(Lcom/google/googlenav/ui/android/B;Lcom/google/googlenav/ui/android/A;Lcom/google/googlenav/ui/android/x;)Lcom/google/googlenav/ui/android/r;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/v;->aN:Lcom/google/googlenav/ui/android/r;

    .line 6011
    return-void
.end method

.method public r()Lcom/google/googlenav/friend/ai;
    .registers 2

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->z:Lcom/google/googlenav/friend/ai;

    return-object v0
.end method

.method public s()V
    .registers 5

    .prologue
    .line 1090
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aA()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1140
    :goto_a
    return-void

    .line 1093
    :cond_b
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    .line 1095
    new-instance v1, Lcom/google/googlenav/ui/W;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/W;-><init>(Lcom/google/googlenav/ui/v;Lcom/google/googlenav/ui/w;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/v;->an:Lcom/google/googlenav/ui/W;

    .line 1096
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->an:Lcom/google/googlenav/ui/W;

    invoke-virtual {v0, v1}, Las/f;->e(Las/g;)V

    .line 1098
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->i()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 1099
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->h:Lcom/google/googlenav/android/Y;

    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-static {v1, v2, p0}, Lcom/google/googlenav/friend/E;->a(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)Lcom/google/googlenav/friend/E;

    move-result-object v1

    .line 1104
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ae:LaM/am;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/E;->a(LaM/am;)V

    .line 1106
    invoke-virtual {v0, v1}, Las/f;->e(Las/g;)V

    .line 1107
    invoke-virtual {v1, p0}, Lcom/google/googlenav/friend/E;->a(Las/h;)V

    .line 1108
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->aM:Lcom/google/googlenav/friend/a;

    new-instance v3, Lcom/google/googlenav/friend/s;

    invoke-direct {v3, v1}, Lcom/google/googlenav/friend/s;-><init>(Lcom/google/googlenav/friend/bk;)V

    invoke-virtual {v2, v3}, Lcom/google/googlenav/friend/a;->a(Lcom/google/googlenav/friend/b;)V

    .line 1110
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->y:Lcom/google/googlenav/friend/p;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/E;->a(Las/h;)V

    .line 1113
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->A:Lcom/google/googlenav/friend/j;

    if-eqz v2, :cond_51

    .line 1114
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->A:Lcom/google/googlenav/friend/j;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/E;->a(Las/h;)V

    .line 1117
    :cond_51
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->h:Lcom/google/googlenav/android/Y;

    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-static {v1, v2, p0}, Lcom/google/googlenav/friend/au;->a(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)Lcom/google/googlenav/friend/au;

    move-result-object v1

    .line 1119
    invoke-virtual {v0, v1}, Las/f;->e(Las/g;)V

    .line 1120
    invoke-virtual {v1, p0}, Lcom/google/googlenav/friend/au;->a(Las/h;)V

    .line 1121
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->aM:Lcom/google/googlenav/friend/a;

    new-instance v3, Lcom/google/googlenav/friend/at;

    invoke-direct {v3, v1}, Lcom/google/googlenav/friend/at;-><init>(Lcom/google/googlenav/friend/bk;)V

    invoke-virtual {v2, v3}, Lcom/google/googlenav/friend/a;->a(Lcom/google/googlenav/friend/b;)V

    .line 1126
    :cond_69
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->j()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 1127
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->h:Lcom/google/googlenav/android/Y;

    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-static {v1, v2, p0}, Lcom/google/googlenav/friend/Y;->a(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)Lcom/google/googlenav/friend/Y;

    move-result-object v1

    .line 1129
    invoke-virtual {v0, v1}, Las/f;->e(Las/g;)V

    .line 1130
    invoke-virtual {v1, p0}, Lcom/google/googlenav/friend/Y;->a(Las/h;)V

    .line 1131
    iget-object v2, p0, Lcom/google/googlenav/ui/v;->aM:Lcom/google/googlenav/friend/a;

    new-instance v3, Lcom/google/googlenav/friend/X;

    invoke-direct {v3, v1}, Lcom/google/googlenav/friend/X;-><init>(Lcom/google/googlenav/friend/bk;)V

    invoke-virtual {v2, v3}, Lcom/google/googlenav/friend/a;->a(Lcom/google/googlenav/friend/b;)V

    .line 1135
    :cond_8b
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->h:Lcom/google/googlenav/android/Y;

    iget-object v2, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-static {v1, v2, p0}, Lcom/google/googlenav/bj;->a(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)Lcom/google/googlenav/bj;

    move-result-object v1

    .line 1137
    invoke-virtual {v0, v1}, Las/f;->e(Las/g;)V

    .line 1138
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->aM:Lcom/google/googlenav/friend/a;

    new-instance v2, Lcom/google/googlenav/friend/bw;

    invoke-direct {v2, v1}, Lcom/google/googlenav/friend/bw;-><init>(Lcom/google/googlenav/bj;)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/friend/a;->a(Lcom/google/googlenav/friend/b;)V

    goto/16 :goto_a
.end method

.method public t()Lat/u;
    .registers 2

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ay:Lat/u;

    return-object v0
.end method

.method public u()V
    .registers 2

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->ad:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/v;)V

    .line 1166
    return-void
.end method

.method public v()Z
    .registers 2

    .prologue
    .line 1177
    iget-boolean v0, p0, Lcom/google/googlenav/ui/v;->aE:Z

    return v0
.end method

.method public w()V
    .registers 3

    .prologue
    .line 1330
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    .line 1335
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->F:Lcom/google/googlenav/j;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/j;->a([I)V

    .line 1336
    return-void

    .line 1330
    :array_c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public x()LaD/i;
    .registers 2

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->aD:Lcom/google/googlenav/ui/aB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aB;->h()LaD/i;

    move-result-object v0

    return-object v0
.end method

.method public y()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1426
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->aA()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1433
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    invoke-virtual {v1}, Las/f;->k()Z

    move-result v1

    .line 1438
    if-nez v1, :cond_1d

    invoke-virtual {p0}, Lcom/google/googlenav/ui/v;->z()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1439
    const/4 v0, 0x0

    .line 1447
    :cond_1c
    :goto_1c
    return v0

    .line 1442
    :cond_1d
    if-eqz v1, :cond_27

    .line 1443
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    invoke-virtual {v1}, Las/f;->s()V

    goto :goto_1c

    .line 1445
    :cond_27
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    invoke-virtual {v1}, Las/f;->g()V

    goto :goto_1c
.end method

.method public z()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1490
    iget-boolean v1, p0, Lcom/google/googlenav/ui/v;->av:Z

    if-eqz v1, :cond_6

    .line 1497
    :goto_5
    return v0

    .line 1493
    :cond_6
    iget-object v1, p0, Lcom/google/googlenav/ui/v;->s:Lcom/google/googlenav/common/io/j;

    const-string v2, "T_AND_C_ACCEPT"

    invoke-interface {v1, v2}, Lcom/google/googlenav/common/io/j;->a_(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_13

    .line 1494
    iput-boolean v0, p0, Lcom/google/googlenav/ui/v;->av:Z

    goto :goto_5

    .line 1497
    :cond_13
    const/4 v0, 0x0

    goto :goto_5
.end method
