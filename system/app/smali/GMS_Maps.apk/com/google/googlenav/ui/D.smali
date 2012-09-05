.class public Lcom/google/googlenav/ui/D;
.super Ljava/lang/Object;

# interfaces
.implements LaE/m;
.implements Laf/j;
.implements Lar/m;
.implements Lcom/google/googlenav/L;
.implements Lcom/google/googlenav/login/i;
.implements Lcom/google/googlenav/ui/p;


# static fields
.field private static aG:Lar/u;

.field private static aH:Lar/u;

.field private static af:Ljava/lang/String;


# instance fields
.field private final A:LaE/h;

.field private final B:LaJ/V;

.field private final C:LaJ/k;

.field private final D:Lcom/google/googlenav/j;

.field private E:I

.field private F:J

.field private G:I

.field private H:J

.field private I:J

.field private J:J

.field private K:J

.field private L:Z

.field private final M:Lcom/google/googlenav/ui/af;

.field private N:Z

.field private final O:Lcom/google/googlenav/ui/ac;

.field private P:LaJ/B;

.field private Q:Lcom/google/googlenav/ui/A;

.field private R:I

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private final W:Lcom/google/googlenav/ui/at;

.field private X:J

.field private Y:J

.field private final Z:Lcom/google/googlenav/A;

.field a:Z

.field private aA:Z

.field private aB:Lay/p;

.field private final aC:Lcom/google/googlenav/ui/f;

.field private aD:Z

.field private final aE:Lcom/google/googlenav/ui/ak;

.field private final aF:Lcom/google/googlenav/ui/Y;

.field private final aI:Lar/u;

.field private final aJ:Lar/u;

.field private final aa:Lap/c;

.field private final ab:LaM/a;

.field private final ac:Lcom/google/googlenav/ui/wizard/hM;

.field private ad:LaY/Y;

.field private final ae:Lcom/google/googlenav/ui/wizard/x;

.field private ag:LaJ/B;

.field private final ah:Landroid/graphics/Point;

.field private ai:Z

.field private aj:Lcom/google/googlenav/ui/X;

.field private final ak:Laq/d;

.field private al:Z

.field private am:Z

.field private an:Z

.field private ao:Z

.field private ap:Z

.field private aq:Ljava/lang/String;

.field private ar:Z

.field private as:Lcom/google/googlenav/ui/C;

.field private at:Lcom/google/googlenav/ui/c;

.field private au:LaJ/u;

.field private av:Z

.field private aw:Ljava/lang/Boolean;

.field private final ax:LaJ/v;

.field private ay:Z

.field private final az:Lcom/google/googlenav/ui/aL;

.field volatile b:Z

.field protected final c:LaO/a;

.field protected volatile d:Z

.field public final e:Lar/u;

.field private final f:Lcom/google/googlenav/ui/android/z;

.field private final g:Lcom/google/googlenav/android/ac;

.field private h:Z

.field private i:Z

.field private j:Lap/d;

.field private k:I

.field private l:Z

.field private m:I

.field private n:I

.field private o:Laq/b;

.field private p:Z

.field private final q:Lcom/google/googlenav/ay;

.field private final r:Lak/m;

.field private final s:Lcom/google/googlenav/ui/av;

.field private final t:Lcom/google/googlenav/ui/bP;

.field private u:Lcom/google/googlenav/ui/bQ;

.field private final v:Lcom/google/googlenav/ui/aM;

.field private final w:Lax/bD;

.field private final x:Lax/r;

.field private final y:Lax/k;

.field private z:LaJ/p;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v3, 0x16

    const-string v0, ""

    sput-object v0, Lcom/google/googlenav/ui/D;->af:Ljava/lang/String;

    new-instance v0, Lar/u;

    const-string v1, "latitude join"

    const-string v2, "lj"

    invoke-direct {v0, v1, v2, v3}, Lar/u;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/D;->aG:Lar/u;

    new-instance v0, Lar/u;

    const-string v1, "latitude show"

    const-string v2, "ls"

    invoke-direct {v0, v1, v2, v3}, Lar/u;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/D;->aH:Lar/u;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/aL;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/bQ;Lcom/google/googlenav/ui/A;LaE/h;LaY/ab;)V
    .registers 19

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/googlenav/ui/D;->h:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/googlenav/ui/D;->i:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->o:Laq/b;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/googlenav/ui/D;->p:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/googlenav/ui/D;->G:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/googlenav/ui/D;->I:J

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->c()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlenav/ui/D;->J:J

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->c()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlenav/ui/D;->K:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/googlenav/ui/D;->L:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/googlenav/ui/D;->R:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/googlenav/ui/D;->S:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/googlenav/ui/D;->T:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/googlenav/ui/D;->U:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/googlenav/ui/D;->V:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/googlenav/ui/D;->X:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/googlenav/ui/D;->Y:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/googlenav/ui/D;->b:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->ag:LaJ/B;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->ah:Landroid/graphics/Point;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/googlenav/ui/D;->ai:Z

    new-instance v1, Laq/d;

    invoke-direct {v1}, Laq/d;-><init>()V

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->ak:Laq/d;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/googlenav/ui/D;->am:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/googlenav/ui/D;->an:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/googlenav/ui/D;->ao:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/googlenav/ui/D;->ap:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/googlenav/ui/D;->ar:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/googlenav/ui/D;->d:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/googlenav/ui/D;->av:Z

    new-instance v1, Lcom/google/googlenav/ui/E;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/E;-><init>(Lcom/google/googlenav/ui/D;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->ax:LaJ/v;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/googlenav/ui/D;->aD:Z

    new-instance v1, Lar/u;

    const-string v2, "searchprenetworkrequest"

    invoke-direct {v1, v2}, Lar/u;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->aI:Lar/u;

    new-instance v1, Lar/u;

    const-string v2, "searchpostnetworkrequest"

    invoke-direct {v1, v2}, Lar/u;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->aJ:Lar/u;

    new-instance v1, Lar/u;

    const-string v2, "search-bubble"

    invoke-direct {v1, v2}, Lar/u;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->e:Lar/u;

    iput-object p1, p0, Lcom/google/googlenav/ui/D;->az:Lcom/google/googlenav/ui/aL;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aL;->a()Lcom/google/googlenav/ay;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->q:Lcom/google/googlenav/ay;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aL;->e()Lcom/google/googlenav/android/ac;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->g:Lcom/google/googlenav/android/ac;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aL;->d()Lcom/google/googlenav/ui/android/z;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->f:Lcom/google/googlenav/ui/android/z;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aL;->b()Lcom/google/googlenav/ui/aM;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->v:Lcom/google/googlenav/ui/aM;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aL;->i()Lap/c;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->aa:Lap/c;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->R()V

    iput-object p2, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    iput-object p4, p0, Lcom/google/googlenav/ui/D;->u:Lcom/google/googlenav/ui/bQ;

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/googlenav/ui/D;->Q:Lcom/google/googlenav/ui/A;

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/googlenav/ui/D;->A:LaE/h;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->n()Lak/m;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->r:Lak/m;

    invoke-virtual {p0, p3}, Lcom/google/googlenav/ui/D;->a(LaJ/u;)V

    new-instance v1, Lcom/google/googlenav/ui/wizard/x;

    invoke-direct {v1}, Lcom/google/googlenav/ui/wizard/x;-><init>()V

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->ae:Lcom/google/googlenav/ui/wizard/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Lcom/google/googlenav/ui/bw;->z:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lah/p;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/google/googlenav/ui/ac;

    invoke-direct {v1}, Lcom/google/googlenav/ui/ac;-><init>()V

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->O:Lcom/google/googlenav/ui/ac;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->f:Lcom/google/googlenav/ui/android/z;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/z;->b()I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/D;->m:I

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->f:Lcom/google/googlenav/ui/android/z;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/z;->a()I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/D;->n:I

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    iget v2, p0, Lcom/google/googlenav/ui/D;->m:I

    iget v3, p0, Lcom/google/googlenav/ui/D;->n:I

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/ui/bw;->b(II)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->s()V

    iget v1, p0, Lcom/google/googlenav/ui/D;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/D;->n:I

    invoke-static {v1, v2}, LaJ/Y;->b(II)V

    invoke-virtual {p2}, LaJ/p;->c()LaJ/Y;

    move-result-object v1

    invoke-static {v1}, LaJ/Y;->c(LaJ/Y;)LaJ/Y;

    move-result-object v1

    invoke-virtual {p3, v1}, LaJ/u;->a(LaJ/Y;)V

    new-instance v1, Lcom/google/googlenav/ui/at;

    move-object/from16 v0, p6

    invoke-direct {v1, v0, p0, p3, p2}, Lcom/google/googlenav/ui/at;-><init>(LaE/h;Lcom/google/googlenav/ui/D;LaJ/u;LaJ/p;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->W:Lcom/google/googlenav/ui/at;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->q:Lcom/google/googlenav/ay;

    invoke-interface {v1}, Lcom/google/googlenav/ay;->d()V

    iget v1, p0, Lcom/google/googlenav/ui/D;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/D;->n:I

    invoke-virtual {p2, v1, v2}, LaJ/p;->d(II)V

    iget v1, p0, Lcom/google/googlenav/ui/D;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/D;->n:I

    invoke-virtual {p3, v1, v2}, LaJ/u;->c(II)V

    invoke-static {p0}, Laf/l;->b(Laf/j;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->q:Lcom/google/googlenav/ay;

    invoke-interface {v1}, Lcom/google/googlenav/ay;->d()V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v10

    new-instance v1, Lcom/google/googlenav/ui/Y;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/Y;-><init>(Lcom/google/googlenav/ui/D;Lcom/google/googlenav/ui/E;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->aF:Lcom/google/googlenav/ui/Y;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->aF:Lcom/google/googlenav/ui/Y;

    invoke-virtual {v10, v1}, Lat/h;->a(Lat/p;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->q:Lcom/google/googlenav/ay;

    invoke-interface {v1}, Lcom/google/googlenav/ay;->d()V

    new-instance v1, LaJ/V;

    const-wide/32 v2, 0x1d4c0

    iget-object v4, p0, Lcom/google/googlenav/ui/D;->aa:Lap/c;

    invoke-direct {v1, v2, v3, v4}, LaJ/V;-><init>(JLap/c;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->B:LaJ/V;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aL;->c()Lcom/google/googlenav/ui/af;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->M:Lcom/google/googlenav/ui/af;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->M:Lcom/google/googlenav/ui/af;

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->B:LaJ/V;

    invoke-interface {v1, v2}, Lcom/google/googlenav/ui/af;->a(LaJ/V;)V

    new-instance v1, LaJ/k;

    invoke-direct {v1}, LaJ/k;-><init>()V

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->C:LaJ/k;

    new-instance v1, Lcom/google/googlenav/j;

    invoke-direct {v1}, Lcom/google/googlenav/j;-><init>()V

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->D:Lcom/google/googlenav/j;

    sget-object v1, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v2, Lcom/google/googlenav/ui/O;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/O;-><init>(Lcom/google/googlenav/ui/D;)V

    invoke-static {v1, v2}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->t()V

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->M:Lcom/google/googlenav/ui/af;

    invoke-virtual {p2, v1}, LaJ/p;->a(LaJ/Q;)V

    new-instance v1, Lcom/google/googlenav/ui/P;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/P;-><init>(Lcom/google/googlenav/ui/D;)V

    invoke-virtual {p2, v1}, LaJ/p;->a(LaJ/q;)V

    new-instance v1, Lcom/google/googlenav/A;

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->W:Lcom/google/googlenav/ui/at;

    move-object/from16 v0, p6

    invoke-direct {v1, v0, p3, v2, p0}, Lcom/google/googlenav/A;-><init>(LaE/h;LaJ/u;Lcom/google/googlenav/ui/at;Lcom/google/googlenav/L;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->Z:Lcom/google/googlenav/A;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->i()Z

    move-result v1

    if-eqz v1, :cond_312

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->j()Z

    move-result v1

    if-eqz v1, :cond_312

    new-instance v1, Lax/k;

    invoke-direct {v1}, Lax/k;-><init>()V

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->y:Lax/k;

    :goto_1d0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->B()Z

    move-result v5

    iget-object v6, p0, Lcom/google/googlenav/ui/D;->ae:Lcom/google/googlenav/ui/wizard/x;

    iget-object v8, p0, Lcom/google/googlenav/ui/D;->W:Lcom/google/googlenav/ui/at;

    iget-object v9, p0, Lcom/google/googlenav/ui/D;->y:Lax/k;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p6

    move-object v7, p0

    invoke-virtual/range {v1 .. v9}, Lcom/google/googlenav/ui/aL;->a(LaJ/p;LaJ/u;LaE/h;ZLcom/google/googlenav/ui/wizard/x;Lcom/google/googlenav/L;Lcom/google/googlenav/ui/at;Lax/k;)Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    new-instance v1, Lcom/google/googlenav/ui/ak;

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->W:Lcom/google/googlenav/ui/at;

    iget-object v3, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v4, p0, Lcom/google/googlenav/ui/D;->q:Lcom/google/googlenav/ay;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/googlenav/ui/ak;-><init>(Lcom/google/googlenav/ui/at;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/ay;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->aE:Lcom/google/googlenav/ui/ak;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->i()Z

    move-result v1

    if-eqz v1, :cond_317

    new-instance v1, Lax/bD;

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->g:Lcom/google/googlenav/android/ac;

    iget-object v3, p0, Lcom/google/googlenav/ui/D;->aa:Lap/c;

    invoke-direct {v1, v2, v3}, Lax/bD;-><init>(Lcom/google/googlenav/android/ac;Lap/c;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->w:Lax/bD;

    new-instance v1, Lax/r;

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->w:Lax/bD;

    iget-object v3, p0, Lcom/google/googlenav/ui/D;->aa:Lap/c;

    invoke-direct {v1, v2, v3, p0}, Lax/r;-><init>(Lax/bD;Lap/c;Lcom/google/googlenav/ui/D;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->x:Lax/r;

    :goto_213
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->aw()Z

    move-result v1

    if-eqz v1, :cond_22a

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/ab;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/googlenav/ui/ab;-><init>(Lcom/google/googlenav/ui/D;Lcom/google/googlenav/ui/E;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/login/g;->a(Lcom/google/googlenav/login/i;)V

    :cond_22a
    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-static {v1}, LaM/e;->a(Lcom/google/googlenav/ui/wizard/hM;)LaM/e;

    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v1

    invoke-virtual {v1}, LaM/e;->c()LaM/f;

    move-result-object v2

    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v1

    invoke-virtual {v1}, LaM/e;->d()LaM/f;

    move-result-object v3

    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v1

    invoke-virtual {v1}, LaM/e;->e()LaM/o;

    move-result-object v6

    new-instance v1, LaM/a;

    iget-object v5, p0, Lcom/google/googlenav/ui/D;->W:Lcom/google/googlenav/ui/at;

    move-object v4, v10

    invoke-direct/range {v1 .. v6}, LaM/a;-><init>(LaM/f;LaM/f;Lat/h;Lcom/google/googlenav/ui/at;LaM/o;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->ab:LaM/a;

    invoke-interface {v2}, LaM/f;->g()LaM/i;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->ab:LaM/a;

    invoke-interface {v1, v2}, LaM/i;->a(LaM/l;)V

    invoke-interface {v3}, LaM/f;->g()LaM/i;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->ab:LaM/a;

    invoke-interface {v1, v2}, LaM/i;->a(LaM/l;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ab:LaM/a;

    invoke-virtual {v1}, LaM/a;->b()V

    move-object/from16 v0, p7

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/D;->a(LaY/ab;)V

    const/4 v1, 0x0

    check-cast v1, LaO/a;

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->c:LaO/a;

    new-instance v1, Lcom/google/googlenav/ui/bP;

    invoke-direct {v1, p3}, Lcom/google/googlenav/ui/bP;-><init>(LaJ/u;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->t:Lcom/google/googlenav/ui/bP;

    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v1

    invoke-virtual {v1}, LaM/e;->c()LaM/f;

    move-result-object v1

    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v2

    invoke-virtual {v2}, LaM/e;->d()LaM/f;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/D;->g:Lcom/google/googlenav/android/ac;

    move-object/from16 v0, p6

    invoke-static {p3, v0, v1, v2, v3}, LaV/n;->a(LaJ/u;LaE/h;LaM/f;LaM/f;Lcom/google/googlenav/android/ac;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->q:Lcom/google/googlenav/ay;

    invoke-interface {v1}, Lcom/google/googlenav/ay;->d()V

    new-instance v1, Lcom/google/googlenav/ui/av;

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    iget-object v3, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {v1, p0, v2, v3}, Lcom/google/googlenav/ui/av;-><init>(Lcom/google/googlenav/ui/D;LaY/Y;Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/av;->b()V

    new-instance v1, Lcom/google/googlenav/ui/f;

    sget-object v2, Lcom/google/googlenav/android/D;->a:Lcom/google/googlenav/android/D;

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/f;-><init>(Lcom/google/googlenav/ui/D;Lcom/google/googlenav/android/D;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->aC:Lcom/google/googlenav/ui/f;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->am()Z

    move-result v1

    if-eqz v1, :cond_2c0

    new-instance v1, Lcom/google/googlenav/ui/aB;

    invoke-direct {v1, p2}, Lcom/google/googlenav/ui/aB;-><init>(LaJ/p;)V

    invoke-virtual {p2, v1}, LaJ/p;->a(LaJ/w;)V

    :cond_2c0
    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aK()V

    new-instance v1, Law/q;

    invoke-direct {v1, p0}, Law/q;-><init>(Lcom/google/googlenav/ui/D;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->g:Lcom/google/googlenav/android/ac;

    invoke-static {v1, v2}, Law/g;->a(Law/e;Lcom/google/googlenav/android/ac;)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->aw()Z

    move-result v1

    if-eqz v1, :cond_311

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->i()Z

    move-result v1

    if-eqz v1, :cond_2e8

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->g:Lcom/google/googlenav/android/ac;

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-static {v1, v2, p0}, Lax/aa;->a(Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)Lax/aa;

    :cond_2e8
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->j()Z

    move-result v1

    if-eqz v1, :cond_2f9

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->g:Lcom/google/googlenav/android/ac;

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-static {v1, v2, p0}, Lax/au;->a(Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)Lax/au;

    :cond_2f9
    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->g:Lcom/google/googlenav/android/ac;

    iget-object v3, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-static {v2, v3, p0}, Lcom/google/googlenav/bw;->a(Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;)Lcom/google/googlenav/bw;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/login/g;->c(Lcom/google/googlenav/login/h;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->q()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->A()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/googlenav/ui/D;->b:Z

    :cond_311
    return-void

    :cond_312
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->y:Lax/k;

    goto/16 :goto_1d0

    :cond_317
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->w:Lax/bD;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->x:Lax/r;

    goto/16 :goto_213
.end method

.method private a(Ljava/util/List;Lcom/google/googlenav/bb;)Lcom/google/googlenav/aV;
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->f()LaJ/H;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/ah;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/ah;

    if-eqz p2, :cond_1c

    iget-object v2, p2, Lcom/google/googlenav/bb;->a:Ljava/lang/String;

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_1c
    iget-object v2, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v2, v1}, LaJ/u;->a(LaJ/H;)I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v3, v1}, LaJ/u;->b(LaJ/H;)I

    move-result v3

    invoke-static {v0, v1, v2, v3, p2}, Lcom/google/googlenav/aV;->a([Lcom/google/googlenav/ah;LaJ/H;IILcom/google/googlenav/bb;)Lcom/google/googlenav/aV;

    move-result-object v0

    :goto_2c
    return-object v0

    :cond_2d
    iget-object v1, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-static {v0, p2, v1}, Lcom/google/googlenav/aV;->a([Lcom/google/googlenav/ah;Lcom/google/googlenav/bb;LaJ/u;)Lcom/google/googlenav/aV;

    move-result-object v0

    goto :goto_2c
.end method

.method static a(II)V
    .registers 4

    invoke-static {p0}, Lcom/google/googlenav/ui/A;->b(I)I

    move-result v0

    invoke-static {v0}, LaJ/p;->a(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/googlenav/ui/A;->b(I)I

    move-result v1

    invoke-static {v1}, LaJ/p;->a(I)I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {v0}, LaJ/P;->a(I)V

    return-void
.end method

.method private static a(IILjava/lang/String;)V
    .registers 9

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

    invoke-static {v2}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private a(Lah/e;I)V
    .registers 10

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0}, Lat/h;->r()I

    move-result v1

    invoke-virtual {v0}, Lat/h;->q()I

    move-result v2

    invoke-virtual {v0}, Lat/h;->p()I

    move-result v0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/googlenav/ui/D;->o:Laq/b;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  Z: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v6}, LaJ/u;->d()LaJ/Y;

    move-result-object v6

    invoke-virtual {v6}, LaJ/Y;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  C: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/google/googlenav/ui/D;->G:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  S: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Lcom/google/googlenav/ui/D;->e(I)Ljava/lang/String;

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

    invoke-static {}, Lar/j;->c()I

    move-result v6

    invoke-static {v6}, Lar/j;->a(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lar/j;->b()I

    move-result v6

    invoke-static {v6}, Lar/j;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lar/j;->d()I

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

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->az:Lcom/google/googlenav/ui/aL;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aL;->j()[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->P()I

    move-result v1

    sget-object v2, Lcom/google/googlenav/ui/D;->af:Ljava/lang/String;

    invoke-static {p1, v1, v3, v0, v2}, Lcom/google/googlenav/ui/bf;->a(Lah/e;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static a(Lcom/google/googlenav/aV;)V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->M()LaJ/B;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->S()LaJ/H;

    move-result-object v1

    invoke-virtual {v1}, LaJ/H;->b()LaJ/Y;

    move-result-object v1

    new-instance v2, LaJ/H;

    invoke-direct {v2, v0, v1, v4}, LaJ/H;-><init>(LaJ/B;LaJ/Y;I)V

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->S()LaJ/H;

    move-result-object v0

    invoke-static {v0, v2}, LaJ/u;->a(LaJ/H;LaJ/H;)I

    move-result v0

    if-gez v0, :cond_1f

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    invoke-static {v0}, LaJ/u;->b(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->T()LaJ/H;

    move-result-object v1

    if-eqz v1, :cond_73

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->T()LaJ/H;

    move-result-object v1

    invoke-static {v1, v2}, LaJ/u;->a(LaJ/H;LaJ/H;)I

    move-result v1

    if-ltz v1, :cond_1e

    invoke-static {v1}, LaJ/u;->b(I)I

    move-result v1

    sub-int/2addr v1, v0

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

    invoke-static {v2}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6d
    const-string v1, "stat"

    invoke-static {v5, v1, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_1e

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

    invoke-static {v1}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6d
.end method

.method private a(Lcom/google/googlenav/ui/C;)V
    .registers 5

    const/4 v1, 0x1

    if-nez p1, :cond_a

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LaY/Y;->b(Lcom/google/googlenav/ui/C;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->at:Lcom/google/googlenav/ui/c;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->at:Lcom/google/googlenav/ui/c;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/c;->a(Lcom/google/googlenav/ui/C;)V

    :cond_13
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/D;->b(Lcom/google/googlenav/ui/C;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->at:Lcom/google/googlenav/ui/c;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->at:Lcom/google/googlenav/ui/c;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/c;->b(Lcom/google/googlenav/ui/C;)V

    :cond_1f
    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->g()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->h()V

    :cond_28
    iget v0, p0, Lcom/google/googlenav/ui/D;->G:I

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->W:Lcom/google/googlenav/ui/at;

    iget v2, p0, Lcom/google/googlenav/ui/D;->E:I

    invoke-virtual {v0, p1, v2, v1}, Lcom/google/googlenav/ui/at;->a(Lcom/google/googlenav/ui/C;IZ)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->n()V

    goto :goto_9

    :cond_37
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->R()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->W:Lcom/google/googlenav/ui/at;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/at;->a(Lcom/google/googlenav/ui/C;)V

    :cond_44
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->I()LaY/i;

    move-result-object v2

    if-eqz v2, :cond_7d

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->m()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    if-nez v0, :cond_8e

    :cond_5e
    move v0, v1

    :goto_5f
    invoke-virtual {v2}, LaY/i;->ab()Z

    move-result v2

    if-nez v2, :cond_73

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    invoke-virtual {v0}, LaY/i;->aa()Z

    move-result v0

    if-eqz v0, :cond_7d

    :cond_73
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->G()Z

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0, p1}, LaY/Y;->a(Lcom/google/googlenav/ui/C;)V

    :cond_7d
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->W:Lcom/google/googlenav/ui/at;

    iget v2, p0, Lcom/google/googlenav/ui/D;->E:I

    invoke-virtual {v0, p1, v2, v1}, Lcom/google/googlenav/ui/at;->a(Lcom/google/googlenav/ui/C;IZ)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/D;->c(Lcom/google/googlenav/ui/C;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0, p1}, LaY/Y;->b(Lcom/google/googlenav/ui/C;)V

    goto/16 :goto_9

    :cond_8e
    const/4 v0, 0x0

    goto :goto_5f
.end method

.method private a(Lcom/google/googlenav/ui/C;Lah/e;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aT()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->E()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/google/googlenav/ui/aV;->a()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->a()Lah/e;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    invoke-virtual {v2}, LaJ/p;->n()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/aV;->a(Lah/e;Z)V

    :cond_1d
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/hM;->b(Lcom/google/googlenav/ui/C;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->v:Lcom/google/googlenav/ui/aM;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/aM;->a(Lcom/google/googlenav/ui/C;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->H()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->t:Lcom/google/googlenav/ui/bP;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/bP;->a(Lcom/google/googlenav/ui/C;)V

    :cond_34
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->aC:Lcom/google/googlenav/ui/f;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/f;->a(Lcom/google/googlenav/ui/C;)V

    :cond_3d
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/D;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aZ()V

    return-void
.end method

.method private a(Laq/b;I)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v2

    invoke-virtual {p1}, Laq/b;->d()Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    if-eq v2, v1, :cond_18

    const/4 v3, 0x2

    if-eq v2, v3, :cond_18

    const/4 v3, 0x3

    if-eq v2, v3, :cond_18

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    :cond_18
    packed-switch v2, :pswitch_data_42

    move p2, v0

    :goto_1c
    :pswitch_1c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->T()V

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    iget-object v3, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v3}, LaJ/u;->c()LaJ/B;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v4}, LaJ/u;->d()LaJ/Y;

    move-result-object v4

    invoke-virtual {v3, v0, p2, v4}, LaJ/B;->a(IILaJ/Y;)LaJ/B;

    move-result-object v0

    invoke-virtual {v2, v0}, LaJ/u;->c(LaJ/B;)V

    move v0, v1

    goto :goto_c

    :pswitch_36
    neg-int p2, p2

    goto :goto_1c

    :pswitch_38
    move v5, v0

    move v0, p2

    move p2, v5

    goto :goto_1c

    :pswitch_3c
    neg-int p2, p2

    move v5, v0

    move v0, p2

    move p2, v5

    goto :goto_1c

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_36
        :pswitch_1c
        :pswitch_3c
        :pswitch_38
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/googlenav/ui/D;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/D;->S:Z

    return p1
.end method

.method private aK()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->A:LaE/h;

    invoke-virtual {v0, p0}, LaE/h;->b(LaE/m;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->w:Lax/bD;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->A:LaE/h;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->w:Lax/bD;

    invoke-virtual {v0, v1}, LaE/h;->a(LaE/m;)V

    :cond_10
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/googlenav/ui/U;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/U;-><init>(Lcom/google/googlenav/ui/D;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    return-void
.end method

.method private aL()V
    .registers 4

    const-string v0, "LastSessionTime"

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Laf/l;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private aM()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->r:Lak/m;

    const-string v1, "TRAFFIC_ON"

    invoke-interface {v0, v1}, Lak/m;->a_(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_16

    array-length v1, v0

    if-ne v1, v2, :cond_16

    aget-byte v0, v0, v3

    if-ne v0, v2, :cond_16

    invoke-virtual {p0, v2, v3}, Lcom/google/googlenav/ui/D;->a(ZZ)V

    :cond_16
    return-void
.end method

.method private aN()Z
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hM;->m()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/z;->y()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/z;->t()Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_16
    :goto_16
    return v0

    :cond_17
    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/z;->q()Z

    move-result v2

    if-eqz v2, :cond_16

    move v0, v1

    goto :goto_16

    :cond_1f
    iget-object v2, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v2}, LaY/Y;->I()LaY/i;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v2}, LaY/i;->bb()Z

    move-result v2

    if-eqz v2, :cond_16

    move v0, v1

    goto :goto_16
.end method

.method private aO()V
    .registers 3

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/D;->H:J

    return-void
.end method

.method private aP()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->ae()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->ag()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private aQ()V
    .registers 3

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/D;->K:J

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->j()V

    return-void
.end method

.method private aR()V
    .registers 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->ay:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0, v1}, LaY/Y;->d(Z)V

    iput-boolean v1, p0, Lcom/google/googlenav/ui/D;->ay:Z

    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ak:Laq/d;

    invoke-virtual {v0}, Laq/d;->a()V

    return-void
.end method

.method private aS()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->q()I

    move-result v0

    sparse-switch v0, :sswitch_data_36

    :goto_9
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->b()V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v1}, LaY/Y;->I()LaY/i;

    move-result-object v1

    invoke-virtual {v0, v1}, LaY/Y;->c(LaY/i;)V

    :goto_19
    return-void

    :sswitch_1a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/D;->s(Z)V

    goto :goto_19

    :sswitch_1f
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/D;->s(Z)V

    goto :goto_9

    :sswitch_24
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->i()Lcom/google/googlenav/ui/wizard/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bu;->l()V

    goto :goto_9

    :sswitch_32
    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->Z()V

    goto :goto_19

    :sswitch_data_36
    .sparse-switch
        0x1 -> :sswitch_1f
        0x2 -> :sswitch_1a
        0x8 -> :sswitch_24
        0xa -> :sswitch_32
    .end sparse-switch
.end method

.method private aT()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->t()Z

    move-result v0

    if-nez v0, :cond_2a

    sget-object v0, LaB/g;->a:LaB/g;

    invoke-virtual {v0}, LaB/g;->e()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->aD:Z

    if-nez v0, :cond_2a

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->y()Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private aU()V
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aW()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, LaN/b;->z()LaN/b;

    move-result-object v0

    invoke-virtual {v0}, LaN/b;->e()V

    :cond_d
    return-void
.end method

.method private aV()V
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aW()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, LaN/b;->z()LaN/b;

    move-result-object v0

    invoke-virtual {v0}, LaN/b;->f()V

    :cond_d
    return-void
.end method

.method private aW()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->w()LaY/bh;

    move-result-object v0

    if-eqz v0, :cond_12

    check-cast v0, LaY/bh;

    invoke-virtual {v0}, LaY/bh;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private aX()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->j:Lap/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->j:Lap/d;

    invoke-virtual {v0}, Lap/d;->c()I

    :cond_9
    return-void
.end method

.method private aY()V
    .registers 4

    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/googlenav/ui/I;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/I;-><init>(Lcom/google/googlenav/ui/D;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;I)V

    return-void
.end method

.method private aZ()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->S()V

    :cond_9
    return-void
.end method

.method private b(Lah/e;)Lcom/google/googlenav/ui/C;
    .registers 9

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->m()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->O()I

    move-result v1

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bw;->P()I

    move-result v2

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->q()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->t()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->u()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->v()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->w()I

    move-result v5

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->x()I

    move-result v6

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/googlenav/ui/C;->a(Lah/e;IIIIII)Lcom/google/googlenav/ui/C;

    move-result-object v0

    :goto_39
    return-object v0

    :cond_3a
    invoke-static {p1, v1, v2}, Lcom/google/googlenav/ui/C;->a(Lah/e;II)Lcom/google/googlenav/ui/C;

    move-result-object v0

    goto :goto_39
.end method

.method static synthetic b(Lcom/google/googlenav/ui/D;)Lcom/google/googlenav/ui/bP;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->t:Lcom/google/googlenav/ui/bP;

    return-object v0
.end method

.method private b(Laq/c;)V
    .registers 7

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->ay:Z

    iget-boolean v1, p0, Lcom/google/googlenav/ui/D;->ay:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v1, v4}, LaY/Y;->d(Z)V

    iput-boolean v4, p0, Lcom/google/googlenav/ui/D;->ay:Z

    :cond_e
    iget-object v1, p0, Lcom/google/googlenav/ui/D;->v:Lcom/google/googlenav/ui/aM;

    invoke-interface {v1}, Lcom/google/googlenav/ui/aM;->b()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->H()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->t:Lcom/google/googlenav/ui/bP;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/bP;->a(Laq/c;)Z

    move-result v1

    if-eqz v1, :cond_24

    :cond_23
    :goto_23
    return-void

    :cond_24
    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->s()Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/wizard/hM;->a(Laq/c;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/googlenav/ui/D;->a(ILaq/b;)Z

    move-result v1

    if-nez v1, :cond_23

    :cond_39
    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v1, p1}, LaY/Y;->a(Laq/c;)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->E()Z

    move-result v1

    if-eqz v1, :cond_e9

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/D;->c(Laq/c;)Z

    move-result v1

    if-eqz v1, :cond_5f

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    invoke-virtual {p1}, Laq/c;->k()I

    move-result v1

    invoke-virtual {p1}, Laq/c;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, LaJ/p;->b(II)LaJ/B;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/D;->a(LaJ/B;)V

    goto :goto_23

    :cond_5f
    invoke-virtual {p1}, Laq/c;->d()Z

    move-result v1

    if-eqz v1, :cond_83

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->c()LaJ/B;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v3}, LaJ/u;->d()LaJ/Y;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, LaJ/u;->e(LaJ/B;LaJ/Y;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ak:Laq/d;

    invoke-virtual {v1}, Laq/d;->a()V

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ak:Laq/d;

    invoke-virtual {v1, p1}, Laq/d;->a(Laq/c;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/googlenav/ui/D;->T:Z

    :cond_83
    invoke-static {}, Lcom/google/googlenav/ui/A;->c()Z

    move-result v1

    if-eqz v1, :cond_8e

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->Q:Lcom/google/googlenav/ui/A;

    invoke-virtual {v1, p1, v0}, Lcom/google/googlenav/ui/A;->a(Laq/c;Z)V

    :cond_8e
    invoke-virtual {p1}, Laq/c;->c()Z

    move-result v0

    if-eqz v0, :cond_c6

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->P:LaJ/B;

    if-eqz v0, :cond_c6

    invoke-virtual {p1}, Laq/c;->m()Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ak:Laq/d;

    invoke-virtual {v1, p1}, Laq/d;->a(Laq/c;)V

    invoke-static {}, Lcom/google/googlenav/ui/A;->c()Z

    move-result v1

    if-nez v1, :cond_23

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/A;->d(II)Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    iget-object v3, p0, Lcom/google/googlenav/ui/D;->P:LaJ/B;

    iget-object v4, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v4}, LaJ/u;->d()LaJ/Y;

    move-result-object v4

    invoke-virtual {v3, v1, v0, v4}, LaJ/B;->a(IILaJ/Y;)LaJ/B;

    move-result-object v0

    invoke-virtual {v2, v0}, LaJ/u;->c(LaJ/B;)V

    goto/16 :goto_23

    :cond_c6
    invoke-virtual {p1}, Laq/c;->e()Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ak:Laq/d;

    invoke-virtual {v0, p1}, Laq/d;->a(Laq/c;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ak:Laq/d;

    invoke-virtual {v0}, Laq/d;->d()V

    iput-boolean v4, p0, Lcom/google/googlenav/ui/D;->T:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ak:Laq/d;

    invoke-virtual {v1}, Laq/d;->b()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->ak:Laq/d;

    invoke-virtual {v2}, Laq/d;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, LaJ/u;->a(II)V

    :cond_e9
    invoke-static {}, Lcom/google/googlenav/ui/A;->c()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->c()LaJ/B;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/D;->P:LaJ/B;

    goto/16 :goto_23
.end method

.method private b(Lcom/google/googlenav/ui/C;)V
    .registers 11

    const/4 v2, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v7

    invoke-virtual {v7}, Lat/h;->f()V

    :try_start_e
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->e()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->f()I

    move-result v3

    iget v4, p0, Lcom/google/googlenav/ui/D;->m:I

    iget v5, p0, Lcom/google/googlenav/ui/D;->n:I

    invoke-virtual {v0, v1, v3, v4, v5}, LaJ/p;->a(IIII)V

    iget-object v8, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    monitor-enter v8
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_6c

    :try_start_22
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    check-cast v0, LaJ/h;

    invoke-virtual {v0}, LaJ/h;->g()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->Y()Z

    move-result v0

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->u:Lcom/google/googlenav/ui/bQ;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bQ;->f()Z

    move-result v0

    if-nez v0, :cond_67

    invoke-virtual {v7}, Lat/h;->l()Z

    move-result v0

    if-eqz v0, :cond_67

    :goto_3d
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->u:Lcom/google/googlenav/ui/bQ;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bQ;->g()Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->b()Lah/e;

    move-result-object v1

    iget-object v3, p0, Lcom/google/googlenav/ui/D;->A:LaE/h;

    invoke-virtual {v3}, LaE/h;->m()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, LaJ/p;->a(Lah/e;ZZZZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/D;->L:Z

    :cond_59
    monitor-exit v8
    :try_end_5a
    .catchall {:try_start_22 .. :try_end_5a} :catchall_69

    invoke-virtual {v7}, Lat/h;->g()V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->ai:Z

    if-eqz v0, :cond_6

    iput-boolean v6, p0, Lcom/google/googlenav/ui/D;->ai:Z

    invoke-virtual {v7}, Lat/h;->g()V

    goto :goto_6

    :cond_67
    move v2, v6

    goto :goto_3d

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

    :catchall_6c
    move-exception v0

    invoke-virtual {v7}, Lat/h;->g()V

    iget-boolean v1, p0, Lcom/google/googlenav/ui/D;->ai:Z

    if-eqz v1, :cond_79

    iput-boolean v6, p0, Lcom/google/googlenav/ui/D;->ai:Z

    invoke-virtual {v7}, Lat/h;->g()V

    :cond_79
    throw v0
.end method

.method private b(Lcom/google/googlenav/aV;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->ax()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    invoke-virtual {p1}, Lcom/google/googlenav/aV;->z()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    const-string v3, "##exp "

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_c

    const-string v0, "##exp "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :try_start_25
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lav/d;->a()Lav/d;

    move-result-object v3

    if-eqz v3, :cond_59

    if-gez v0, :cond_5b

    neg-int v4, v0

    invoke-virtual {v3, v4}, Lav/d;->b(I)V

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

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    :cond_59
    move v0, v1

    goto :goto_c

    :cond_5b
    invoke-virtual {v3, v0}, Lav/d;->a(I)V
    :try_end_5e
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_5e} :catch_5f

    goto :goto_35

    :catch_5f
    move-exception v0

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

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_c

    :cond_7e
    :try_start_7e
    const-string v0, "enabled"
    :try_end_80
    .catch Ljava/lang/NumberFormatException; {:try_start_7e .. :try_end_80} :catch_5f

    goto :goto_4e
.end method

.method private ba()V
    .registers 3

    invoke-static {}, LaF/b;->c()I

    move-result v0

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/h;->b(I)V

    return-void
.end method

.method private bb()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    invoke-virtual {v0}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/E;->e()Lcom/google/googlenav/D;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, LaY/i;->at()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LaY/i;->a(B)V

    :cond_1c
    return-void
.end method

.method private bc()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->az()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ae:Lcom/google/googlenav/ui/wizard/x;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->U()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->aB()V

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private bd()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->g()Lar/k;

    move-result-object v0

    invoke-virtual {v0}, Lar/k;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c

    :cond_1e
    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/D;)Lap/c;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->aa:Lap/c;

    return-object v0
.end method

.method private c(Lat/g;)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x404

    instance-of v1, p1, Lau/r;

    if-eqz v1, :cond_d

    const/16 v0, 0x1a9

    :cond_8
    :goto_8
    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    instance-of v1, p1, Lau/v;

    if-eqz v1, :cond_14

    const/16 v0, 0x1b1

    goto :goto_8

    :cond_14
    instance-of v1, p1, Lau/w;

    if-eqz v1, :cond_1b

    const/16 v0, 0x1b2

    goto :goto_8

    :cond_1b
    instance-of v1, p1, Lau/i;

    if-eqz v1, :cond_8

    const/16 v0, 0x1a8

    goto :goto_8
.end method

.method private c(Lah/e;)V
    .registers 12

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aO()V

    iput-boolean v0, p0, Lcom/google/googlenav/ui/D;->L:Z

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/D;->b(Lah/e;)Lcom/google/googlenav/ui/C;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlenav/ui/D;->as:Lcom/google/googlenav/ui/C;

    const/4 v3, -0x1

    :try_start_10
    iget-object v2, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hM;->u()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2, v7}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/C;)V

    :cond_1d
    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aN()Z

    move-result v2

    if-nez v2, :cond_a9

    move v3, v5

    :goto_24
    if-nez v3, :cond_d2

    move v4, v0

    :goto_27
    if-ne v3, v0, :cond_d5

    iget v2, p0, Lcom/google/googlenav/ui/D;->R:I

    if-eq v2, v6, :cond_31

    iget v2, p0, Lcom/google/googlenav/ui/D;->R:I

    if-ne v2, v5, :cond_d5

    :cond_31
    move v2, v0

    :goto_32
    or-int/2addr v4, v2

    if-ne v3, v0, :cond_3d

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->Q:Lcom/google/googlenav/ui/A;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/A;->d()Z

    move-result v2

    if-nez v2, :cond_45

    :cond_3d
    iget-object v2, p0, Lcom/google/googlenav/ui/D;->Q:Lcom/google/googlenav/ui/A;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/A;->e()Z

    move-result v2

    if-eqz v2, :cond_d8

    :cond_45
    move v2, v0

    :goto_46
    or-int/2addr v2, v4

    iput v3, p0, Lcom/google/googlenav/ui/D;->R:I

    if-eqz v2, :cond_58

    iget-object v4, p0, Lcom/google/googlenav/ui/D;->Q:Lcom/google/googlenav/ui/A;

    iget v8, p0, Lcom/google/googlenav/ui/D;->m:I

    iget v9, p0, Lcom/google/googlenav/ui/D;->n:I

    invoke-virtual {v4, v8, v9}, Lcom/google/googlenav/ui/A;->a(II)Lcom/google/googlenav/ui/C;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/ui/C;)V

    :cond_58
    if-ne v3, v6, :cond_db

    invoke-direct {p0, v7}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/ui/C;)V

    :cond_5d
    :goto_5d
    invoke-static {}, Lcom/google/googlenav/ui/A;->c()Z

    move-result v2

    if-eqz v2, :cond_65

    if-nez v3, :cond_72

    :cond_65
    iget-object v2, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v2}, LaY/Y;->R()Z

    move-result v2

    if-eqz v2, :cond_72

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->W:Lcom/google/googlenav/ui/at;

    invoke-virtual {v2, v7}, Lcom/google/googlenav/ui/at;->b(Lcom/google/googlenav/ui/C;)V

    :cond_72
    invoke-direct {p0, v7, p1}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/ui/C;Lah/e;)V
    :try_end_75
    .catchall {:try_start_10 .. :try_end_75} :catchall_fa

    iget-boolean v2, p0, Lcom/google/googlenav/ui/D;->a:Z

    if-eqz v2, :cond_7c

    invoke-direct {p0, p1, v3}, Lcom/google/googlenav/ui/D;->a(Lah/e;I)V

    :cond_7c
    iget-object v2, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    invoke-virtual {v2}, LaJ/p;->a()LaJ/D;

    move-result-object v2

    invoke-virtual {v2}, LaJ/D;->m()Z

    move-result v2

    if-eqz v2, :cond_12f

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    invoke-virtual {v2}, LaJ/p;->a()LaJ/D;

    move-result-object v2

    invoke-virtual {v2}, LaJ/D;->n()Z

    move-result v2

    if-nez v2, :cond_12f

    :goto_94
    invoke-static {}, Lax/r;->c()Z

    move-result v1

    if-nez v0, :cond_9c

    if-eqz v1, :cond_9f

    :cond_9c
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/D;->d(Lah/e;)V

    :cond_9f
    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->Y()Z

    move-result v0

    if-eqz v0, :cond_a8

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->n()V

    :cond_a8
    return-void

    :cond_a9
    :try_start_a9
    invoke-static {}, Lcom/google/googlenav/ui/A;->c()Z

    move-result v2

    if-eqz v2, :cond_ba

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->Q:Lcom/google/googlenav/ui/A;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/A;->f()Z

    move-result v2

    if-eqz v2, :cond_ba

    move v3, v0

    goto/16 :goto_24

    :cond_ba
    invoke-static {}, Lcom/google/googlenav/ui/A;->c()Z

    move-result v2

    if-eqz v2, :cond_cc

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->u:Lcom/google/googlenav/ui/bQ;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bQ;->d()Z

    move-result v2

    if-nez v2, :cond_cc

    iget v2, p0, Lcom/google/googlenav/ui/D;->G:I

    if-nez v2, :cond_cf

    :cond_cc
    move v3, v6

    goto/16 :goto_24

    :cond_cf
    move v3, v1

    goto/16 :goto_24

    :cond_d2
    move v4, v1

    goto/16 :goto_27

    :cond_d5
    move v2, v1

    goto/16 :goto_32

    :cond_d8
    move v2, v1

    goto/16 :goto_46

    :cond_db
    if-eq v3, v5, :cond_5d

    iget-object v4, p0, Lcom/google/googlenav/ui/D;->Q:Lcom/google/googlenav/ui/A;

    invoke-virtual {v4, v7}, Lcom/google/googlenav/ui/A;->a(Lcom/google/googlenav/ui/C;)V

    iget-object v4, p0, Lcom/google/googlenav/ui/D;->Q:Lcom/google/googlenav/ui/A;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/A;->j()Z

    move-result v4

    if-eqz v4, :cond_ed

    invoke-direct {p0, v7}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/ui/C;)V

    :cond_ed
    iget-object v4, p0, Lcom/google/googlenav/ui/D;->Q:Lcom/google/googlenav/ui/A;

    invoke-virtual {v4, v7}, Lcom/google/googlenav/ui/A;->b(Lcom/google/googlenav/ui/C;)V

    if-nez v2, :cond_5d

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/ui/C;)V
    :try_end_f8
    .catchall {:try_start_a9 .. :try_end_f8} :catchall_fa

    goto/16 :goto_5d

    :catchall_fa
    move-exception v2

    iget-boolean v4, p0, Lcom/google/googlenav/ui/D;->a:Z

    if-eqz v4, :cond_102

    invoke-direct {p0, p1, v3}, Lcom/google/googlenav/ui/D;->a(Lah/e;I)V

    :cond_102
    iget-object v3, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    invoke-virtual {v3}, LaJ/p;->a()LaJ/D;

    move-result-object v3

    invoke-virtual {v3}, LaJ/D;->m()Z

    move-result v3

    if-eqz v3, :cond_132

    iget-object v3, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    invoke-virtual {v3}, LaJ/p;->a()LaJ/D;

    move-result-object v3

    invoke-virtual {v3}, LaJ/D;->n()Z

    move-result v3

    if-nez v3, :cond_132

    :goto_11a
    invoke-static {}, Lax/r;->c()Z

    move-result v1

    if-nez v0, :cond_122

    if-eqz v1, :cond_125

    :cond_122
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/D;->d(Lah/e;)V

    :cond_125
    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->Y()Z

    move-result v0

    if-eqz v0, :cond_12e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->n()V

    :cond_12e
    throw v2

    :cond_12f
    move v0, v1

    goto/16 :goto_94

    :cond_132
    move v0, v1

    goto :goto_11a
.end method

.method private c(Lau/k;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->A:LaE/h;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->A:LaE/h;

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->A:LaE/h;

    invoke-virtual {v0}, LaE/h;->q()LaJ/B;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->A:LaE/h;

    invoke-virtual {v0}, LaE/h;->A()Lt/y;

    move-result-object v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    invoke-virtual {v0, v1}, LaJ/p;->a(LaJ/B;)Lt/y;

    move-result-object v0

    :cond_21
    invoke-static {v1, v0}, Lau/x;->b(LaJ/B;Lt/y;)Lau/x;

    move-result-object v0

    invoke-interface {p1}, Lau/k;->as()Lau/x;

    move-result-object v1

    invoke-virtual {v1}, Lau/x;->q()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p1, v0}, Lau/k;->a(Lau/x;)V

    goto :goto_c

    :cond_33
    invoke-interface {p1}, Lau/k;->au()Lau/x;

    move-result-object v1

    invoke-virtual {v1}, Lau/x;->q()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1, v0}, Lau/k;->b(Lau/x;)V

    goto :goto_c
.end method

.method private c(Lcom/google/googlenav/ui/C;)V
    .registers 5

    const/4 v2, 0x0

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0}, Lat/h;->k()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->am:Z

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x284

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/google/googlenav/ui/D;->am:Z

    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->d()Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->d()LaJ/Y;

    move-result-object v0

    invoke-virtual {v0}, LaJ/Y;->a()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_64

    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->al:Z

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->M:Lcom/google/googlenav/ui/af;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/af;->a(LaJ/p;)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->M:Lcom/google/googlenav/ui/af;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/af;->b(LaJ/p;)Z

    move-result v0

    if-eqz v0, :cond_62

    const/16 v0, 0x293

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    :cond_62
    iput-boolean v2, p0, Lcom/google/googlenav/ui/D;->al:Z

    :cond_64
    return-void

    :cond_65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/D;->am:Z

    goto :goto_2d
.end method

.method private c(Laq/c;)Z
    .registers 3

    invoke-virtual {p1}, Laq/c;->j()Z

    move-result v0

    return v0
.end method

.method private c(Lcom/google/googlenav/aV;)Z
    .registers 4

    invoke-static {}, Laf/d;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->z()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    const-string v1, "##dumpmem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->bd()V

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method static synthetic d(Lcom/google/googlenav/ui/D;)LaY/Y;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    return-object v0
.end method

.method private d(Lah/e;)V
    .registers 5

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->I()Lah/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bw;->x:C

    invoke-interface {v0, v1}, Lah/g;->c(C)I

    move-result v0

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    iget v2, p0, Lcom/google/googlenav/ui/D;->m:I

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, -0x3

    const/4 v2, 0x6

    invoke-virtual {v1, p1, v0, v2}, Lcom/google/googlenav/ui/bw;->a(Lah/e;II)V

    return-void
.end method

.method private d(Laq/b;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->s()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/hM;->c(Laq/b;)I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    :cond_11
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0, p1}, LaY/Y;->b(Laq/b;)Z

    :goto_16
    return-void

    :pswitch_17
    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aS()V

    goto :goto_16

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_17
    .end packed-switch
.end method

.method private d(Lau/k;)V
    .registers 5

    invoke-interface {p1}, Lau/k;->as()Lau/x;

    move-result-object v0

    invoke-virtual {v0}, Lau/x;->f()LaJ/B;

    invoke-interface {p1}, Lau/k;->au()Lau/x;

    move-result-object v0

    invoke-virtual {v0}, Lau/x;->f()LaJ/B;

    invoke-interface {p1}, Lau/k;->as()Lau/x;

    move-result-object v0

    invoke-virtual {v0}, Lau/x;->e()Ljava/lang/String;

    invoke-interface {p1}, Lau/k;->au()Lau/x;

    move-result-object v0

    invoke-virtual {v0}, Lau/x;->e()Ljava/lang/String;

    const-string v0, "0"

    const-string v1, "driving"

    instance-of v1, p1, Lau/v;

    if-eqz v1, :cond_47

    const-string v0, "1"

    const-string v1, "transit"

    :cond_28
    :goto_28
    const/4 v1, 0x0

    invoke-interface {p1}, Lau/k;->as()Lau/x;

    move-result-object v2

    invoke-virtual {v2}, Lau/x;->d()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/ui/D;->a(IILjava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {p1}, Lau/k;->au()Lau/x;

    move-result-object v2

    invoke-virtual {v2}, Lau/x;->d()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/ui/D;->a(IILjava/lang/String;)V

    const/4 v1, 0x4

    const-string v2, "m"

    invoke-static {v1, v2, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_47
    instance-of v1, p1, Lau/w;

    if-eqz v1, :cond_50

    const-string v0, "2"

    const-string v1, "walking"

    goto :goto_28

    :cond_50
    instance-of v1, p1, Lau/i;

    if-eqz v1, :cond_28

    const-string v0, "3"

    const-string v1, "bicycling"

    goto :goto_28
.end method

.method private static e(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    const-string v0, "?"

    :goto_5
    return-object v0

    :pswitch_6
    const-string v0, "Map->Buf->Scr"

    goto :goto_5

    :pswitch_9
    const-string v0, "Buf->Scr"

    goto :goto_5

    :pswitch_c
    const-string v0, "Map->Scr"

    goto :goto_5

    :pswitch_f
    const-string v0, "No map"

    goto :goto_5

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method private e(Laq/b;)V
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Laq/b;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    const-string v0, "8596494"

    iget v2, p0, Lcom/google/googlenav/ui/D;->k:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1}, Laq/b;->e()C

    move-result v2

    if-ne v0, v2, :cond_32

    iget v0, p0, Lcom/google/googlenav/ui/D;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/D;->k:I

    iget v0, p0, Lcom/google/googlenav/ui/D;->k:I

    const-string v2, "8596494"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_7

    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->a:Z

    if-nez v0, :cond_30

    const/4 v0, 0x1

    :goto_2b
    iput-boolean v0, p0, Lcom/google/googlenav/ui/D;->a:Z

    iput v1, p0, Lcom/google/googlenav/ui/D;->k:I

    goto :goto_7

    :cond_30
    move v0, v1

    goto :goto_2b

    :cond_32
    iput v1, p0, Lcom/google/googlenav/ui/D;->k:I

    goto :goto_7
.end method

.method static synthetic e(Lcom/google/googlenav/ui/D;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aM()V

    return-void
.end method

.method static synthetic f(Lcom/google/googlenav/ui/D;)Lcom/google/googlenav/android/ac;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->g:Lcom/google/googlenav/android/ac;

    return-object v0
.end method

.method private f(Laq/b;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/D;->p:Z

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->v:Lcom/google/googlenav/ui/aM;

    invoke-interface {v2}, Lcom/google/googlenav/ui/aM;->b()V

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hM;->s()Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v2, p1}, LaY/Y;->a(Laq/b;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_19
    :goto_19
    return v1

    :cond_1a
    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->E()Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2, p1}, Lcom/google/googlenav/ui/wizard/hM;->a(Laq/b;)Z

    move-result v2

    if-nez v2, :cond_38

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/D;->c(Laq/b;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/googlenav/ui/D;->p:Z

    iget-boolean v2, p0, Lcom/google/googlenav/ui/D;->p:Z

    if-eqz v2, :cond_4c

    sget-object v0, Lcom/google/googlenav/android/D;->a:Lcom/google/googlenav/android/D;

    invoke-virtual {v0}, Lcom/google/googlenav/android/D;->h()V

    goto :goto_19

    :cond_38
    iget-object v2, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hM;->s()Z

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2, p1}, Lcom/google/googlenav/ui/wizard/hM;->b(Laq/b;)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/google/googlenav/ui/D;->a(ILaq/b;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_4c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->E()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->z()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-virtual {p1}, Laq/b;->e()C

    move-result v2

    const/16 v3, 0x37

    if-ne v2, v3, :cond_68

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->S()V

    goto :goto_19

    :cond_68
    invoke-virtual {p1}, Laq/b;->e()C

    move-result v2

    const/16 v3, 0x35

    if-ne v2, v3, :cond_7c

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->b()I

    move-result v2

    if-eqz v2, :cond_7a

    :goto_76
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/D;->a(I)Z

    goto :goto_19

    :cond_7a
    move v0, v1

    goto :goto_76

    :cond_7c
    invoke-virtual {p1}, Laq/b;->c()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_9d

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->ae:Lcom/google/googlenav/ui/wizard/x;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/x;->c()Lcom/google/googlenav/ui/wizard/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/y;->a()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_9d

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ae:Lcom/google/googlenav/ui/wizard/x;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->d()Lcom/google/googlenav/ui/wizard/y;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/D;->b(I)V

    goto/16 :goto_19

    :cond_9d
    move v1, v0

    goto/16 :goto_19
.end method

.method static synthetic g(Lcom/google/googlenav/ui/D;)LaE/h;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->A:LaE/h;

    return-object v0
.end method

.method private g(Laq/b;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->O:Lcom/google/googlenav/ui/ac;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->E()Z

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/google/googlenav/ui/ac;->a(Laq/b;Z)I

    move-result v2

    if-eqz v2, :cond_17

    iget-object v3, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    if-gez v2, :cond_13

    move v0, v1

    :cond_13
    invoke-virtual {v3, v0}, LaJ/u;->a(Z)Z

    :goto_16
    return v1

    :cond_17
    move v1, v0

    goto :goto_16
.end method

.method static synthetic h(Lcom/google/googlenav/ui/D;)Lax/bD;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->w:Lax/bD;

    return-object v0
.end method

.method private h(Laq/b;)Z
    .registers 7

    const/16 v0, 0x19

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->o:Laq/b;

    if-nez v1, :cond_1d

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->c()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/googlenav/ui/D;->J:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xfa

    cmp-long v1, v1, v3

    if-gez v1, :cond_1d

    const/16 v0, 0xc

    :cond_1d
    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/D;->a(Laq/b;I)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->W:Lcom/google/googlenav/ui/at;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/at;->a(Laq/b;)Z

    move-result v0

    goto :goto_24
.end method

.method private i(Lau/b;)V
    .registers 5

    const-string v0, "locationMemory"

    invoke-static {v0}, Lau/y;->b(Ljava/lang/String;)Lau/y;

    move-result-object v0

    invoke-virtual {p1}, Lau/b;->as()Lau/x;

    move-result-object v1

    invoke-virtual {p1}, Lau/b;->at()Lau/x;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lau/y;->a(Lau/x;Lau/x;)V

    invoke-virtual {p1}, Lau/b;->au()Lau/x;

    move-result-object v1

    invoke-virtual {p1}, Lau/b;->av()Lau/x;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lau/y;->a(Lau/x;Lau/x;)V

    return-void
.end method

.method static synthetic i(Lcom/google/googlenav/ui/D;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->h:Z

    return v0
.end method

.method static synthetic j(Lcom/google/googlenav/ui/D;)Lap/d;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->j:Lap/d;

    return-object v0
.end method

.method private j(Ljava/lang/String;)Lcom/google/googlenav/ah;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v1

    invoke-virtual {v1}, LaM/e;->d()LaM/f;

    move-result-object v1

    invoke-interface {v1}, LaM/f;->g()LaM/i;

    move-result-object v1

    invoke-interface {v1, p1}, LaM/i;->b(Ljava/lang/String;)LaM/n;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, LaM/n;->b()Lam/b;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, LaM/n;->b()Lam/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ah;->a(Lam/b;)Lcom/google/googlenav/ah;

    move-result-object v0

    goto :goto_3
.end method

.method private j(Lau/b;)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/D;->c(Lat/g;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/x;->a:Lcom/google/googlenav/ui/wizard/y;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;J)V

    return-void
.end method

.method static synthetic k(Lcom/google/googlenav/ui/D;)Lcom/google/googlenav/ui/wizard/hM;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    return-object v0
.end method

.method static synthetic l(Lcom/google/googlenav/ui/D;)Lcom/google/googlenav/ui/av;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    return-object v0
.end method

.method private s(Z)V
    .registers 5

    const/16 v2, 0xa

    const/4 v1, 0x1

    if-eqz p1, :cond_22

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->A:LaE/h;

    invoke-virtual {v0}, LaE/h;->n()V

    invoke-static {}, Lcom/google/googlenav/M;->e()V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/hM;->a(Z)V

    const-string v0, "a"

    invoke-static {v2, v0}, Laf/m;->a(ILjava/lang/String;)Z

    sget-object v0, Lcom/google/googlenav/z;->b:Lcom/google/googlenav/z;

    invoke-static {v0}, Lcom/google/googlenav/u;->b(Lcom/google/googlenav/z;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/wizard/hM;->c(Lcom/google/googlenav/ui/D;)V

    :goto_21
    return-void

    :cond_22
    const-string v0, "d"

    invoke-static {v2, v0}, Laf/m;->a(ILjava/lang/String;)Z

    invoke-static {}, Laf/m;->a()Laf/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Laf/m;->a(Z)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->Z()V

    goto :goto_21
.end method


# virtual methods
.method public A()Z
    .registers 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->aw()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/login/g;->k()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->B()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-static {}, Lcom/google/googlenav/ui/wizard/hI;->f()Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_21
    const/4 v0, 0x0

    :cond_22
    :goto_22
    return v0

    :cond_23
    if-eqz v1, :cond_2d

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/login/g;->s()V

    goto :goto_22

    :cond_2d
    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/login/g;->g()V

    goto :goto_22
.end method

.method public B()Z
    .registers 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/googlenav/ui/D;->ar:Z

    if-eqz v1, :cond_6

    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/google/googlenav/ui/D;->r:Lak/m;

    const-string v2, "T_AND_C_ACCEPT"

    invoke-interface {v1, v2}, Lak/m;->a_(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_13

    iput-boolean v0, p0, Lcom/google/googlenav/ui/D;->ar:Z

    goto :goto_5

    :cond_13
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public B_()V
    .registers 1

    return-void
.end method

.method public C()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->s()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public C_()V
    .registers 1

    return-void
.end method

.method public D()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->ai:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/D;->ai:Z

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0}, Lat/h;->g()V

    :cond_e
    return-void
.end method

.method public D_()V
    .registers 6

    new-instance v0, Lcom/google/googlenav/layer/k;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v1}, LaJ/u;->f()LaJ/H;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->a()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v3}, LaJ/u;->b()I

    move-result v3

    const-string v4, "__LAYERS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/layer/k;-><init>(LaJ/H;IILjava/lang/String;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V

    new-instance v1, Lcom/google/googlenav/ui/T;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/T;-><init>(Lcom/google/googlenav/ui/D;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/k;->a(Lcom/google/googlenav/layer/l;)V

    return-void
.end method

.method public E()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->T()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->m()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->m()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->y()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public E_()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->g:Lcom/google/googlenav/android/ac;

    new-instance v2, Lcom/google/googlenav/ui/L;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/L;-><init>(Lcom/google/googlenav/ui/D;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public F()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->T()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/D;->d:Z

    return-void
.end method

.method public F_()V
    .registers 1

    return-void
.end method

.method public G()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->d:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->s()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_5

    :cond_10
    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aP()Z

    move-result v0

    goto :goto_5
.end method

.method public H()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->s()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->v()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->T()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_e

    :cond_19
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public I()Lcom/google/googlenav/ui/av;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    return-object v0
.end method

.method public J()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->w()LaY/bh;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v1, v0}, LaY/Y;->c(LaY/i;)V

    :goto_d
    return-void

    :cond_e
    invoke-static {}, LaN/b;->z()LaN/b;

    move-result-object v0

    invoke-virtual {v0}, LaN/b;->j()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, LaN/b;->z()LaN/b;

    move-result-object v0

    invoke-virtual {v0}, LaN/b;->d()V

    invoke-static {}, LaN/b;->z()LaN/b;

    move-result-object v0

    invoke-virtual {v0}, LaN/b;->f()V

    goto :goto_d

    :cond_27
    invoke-static {}, LaN/b;->z()LaN/b;

    move-result-object v0

    invoke-virtual {v0}, LaN/b;->i()V

    goto :goto_d
.end method

.method public K()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0}, LaY/Y;->w()LaY/bh;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, LaY/bh;->e()V

    :cond_d
    return-void
.end method

.method L()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0}, LaY/Y;->w()LaY/bh;

    move-result-object v0

    invoke-virtual {v0}, LaY/bh;->i()V

    return-void
.end method

.method M()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->i()V

    return-void
.end method

.method public N()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->y()LaY/aT;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LaY/aT;->e(ILjava/lang/Object;)V

    return-void
.end method

.method O()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->o()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-static {}, Lax/aa;->l()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {}, Lax/aa;->h()Lax/aa;

    move-result-object v0

    invoke-virtual {v0}, Lax/aa;->c()V

    goto :goto_a

    :cond_19
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaY/Y;->g(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->B()LaY/K;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, LaY/K;->az()Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v1, v0}, LaY/Y;->c(LaY/i;)V

    :cond_32
    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v1, v0}, LaY/Y;->a(LaY/K;)V

    goto :goto_a

    :cond_38
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    new-instance v1, Lcom/google/googlenav/aV;

    invoke-direct {v1}, Lcom/google/googlenav/aV;-><init>()V

    invoke-virtual {v0, v1}, LaY/Y;->c(Lcom/google/googlenav/aV;)LaY/K;

    goto :goto_a
.end method

.method public P()J
    .registers 3

    iget-wide v0, p0, Lcom/google/googlenav/ui/D;->X:J

    return-wide v0
.end method

.method public Q()J
    .registers 3

    iget-wide v0, p0, Lcom/google/googlenav/ui/D;->Y:J

    return-wide v0
.end method

.method protected R()V
    .registers 4

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/D;->Y:J

    const-string v0, "LastSessionTime"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Laf/l;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/D;->X:J

    return-void
.end method

.method S()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->d()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/D;->a(ZZ)V

    return-void

    :cond_c
    move v0, v1

    goto :goto_8
.end method

.method public T()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->W:Lcom/google/googlenav/ui/at;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/at;->v()V

    return-void
.end method

.method public U()V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aX()V

    return-void
.end method

.method public V()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/D;->o:Laq/b;

    iput-boolean v1, p0, Lcom/google/googlenav/ui/D;->l:Z

    invoke-static {}, Lax/aa;->l()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/D;->k(Z)V

    :cond_f
    return-void
.end method

.method public W()V
    .registers 12

    const-wide/16 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->l:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->i:Z

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v5

    iput-boolean v1, p0, Lcom/google/googlenav/ui/D;->S:Z

    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->V:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/D;->V:Z

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->L:Z

    if-nez v0, :cond_13d

    :cond_25
    move v0, v2

    :goto_26
    iget-object v3, p0, Lcom/google/googlenav/ui/D;->o:Laq/b;

    if-eqz v3, :cond_155

    iget-wide v3, p0, Lcom/google/googlenav/ui/D;->J:J

    sub-long v3, v5, v3

    const-wide/16 v7, 0x64

    cmp-long v3, v3, v7

    if-lez v3, :cond_155

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->E()Z

    move-result v3

    if-eqz v3, :cond_155

    iget-boolean v3, p0, Lcom/google/googlenav/ui/D;->p:Z

    if-eqz v3, :cond_155

    iget-wide v3, p0, Lcom/google/googlenav/ui/D;->I:J

    cmp-long v3, v3, v9

    if-nez v3, :cond_140

    const/4 v3, 0x6

    iput-wide v5, p0, Lcom/google/googlenav/ui/D;->I:J

    :goto_47
    const/16 v4, 0xc

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-boolean v4, p0, Lcom/google/googlenav/ui/D;->S:Z

    iget-object v7, p0, Lcom/google/googlenav/ui/D;->o:Laq/b;

    invoke-direct {p0, v7, v3}, Lcom/google/googlenav/ui/D;->a(Laq/b;I)Z

    move-result v3

    or-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/google/googlenav/ui/D;->S:Z

    :goto_58
    iget-wide v3, p0, Lcom/google/googlenav/ui/D;->F:J

    cmp-long v3, v5, v3

    if-lez v3, :cond_179

    iget-boolean v3, p0, Lcom/google/googlenav/ui/D;->U:Z

    if-nez v3, :cond_6a

    iget-object v3, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/hM;->s()Z

    move-result v3

    if-eqz v3, :cond_159

    :cond_6a
    const-wide/16 v3, 0x5dc

    :goto_6c
    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/googlenav/ui/D;->F:J

    iget v3, p0, Lcom/google/googlenav/ui/D;->E:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/googlenav/ui/D;->E:I

    iget-object v3, p0, Lcom/google/googlenav/ui/D;->W:Lcom/google/googlenav/ui/at;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/at;->g()Z

    move-result v3

    if-eqz v3, :cond_15d

    move v0, v2

    move v3, v2

    :goto_7f
    iget-object v4, p0, Lcom/google/googlenav/ui/D;->u:Lcom/google/googlenav/ui/bQ;

    if-eqz v4, :cond_8f

    iget-object v4, p0, Lcom/google/googlenav/ui/D;->u:Lcom/google/googlenav/ui/bQ;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/bQ;->d()Z

    move-result v4

    if-eqz v4, :cond_8f

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aZ()V

    move v0, v2

    :cond_8f
    iget-object v4, p0, Lcom/google/googlenav/ui/D;->Q:Lcom/google/googlenav/ui/A;

    if-eqz v4, :cond_9c

    iget-object v4, p0, Lcom/google/googlenav/ui/D;->Q:Lcom/google/googlenav/ui/A;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/A;->i()Z

    move-result v4

    if-eqz v4, :cond_9c

    move v0, v2

    :cond_9c
    iget-object v4, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v4}, LaY/Y;->E()V

    iget-object v4, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/wizard/hM;->m()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v4

    if-eqz v4, :cond_be

    iget-boolean v7, p0, Lcom/google/googlenav/ui/D;->S:Z

    invoke-virtual {v4, v3}, Lcom/google/googlenav/ui/wizard/z;->a(Z)Z

    move-result v3

    or-int/2addr v3, v7

    iput-boolean v3, p0, Lcom/google/googlenav/ui/D;->S:Z

    iget-object v3, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/hM;->n()Z

    move-result v3

    if-eqz v3, :cond_be

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aS()V

    move v0, v2

    :cond_be
    iget-object v3, p0, Lcom/google/googlenav/ui/D;->W:Lcom/google/googlenav/ui/at;

    invoke-virtual {v3, v5, v6}, Lcom/google/googlenav/ui/at;->a(J)V

    iget-object v3, p0, Lcom/google/googlenav/ui/D;->v:Lcom/google/googlenav/ui/aM;

    invoke-interface {v3}, Lcom/google/googlenav/ui/aM;->c()Z

    move-result v3

    if-eqz v3, :cond_cc

    move v0, v2

    :cond_cc
    iget-wide v3, p0, Lcom/google/googlenav/ui/D;->H:J

    const-wide/16 v7, 0x1388

    add-long/2addr v3, v7

    cmp-long v3, v3, v5

    if-gtz v3, :cond_d6

    move v0, v2

    :cond_d6
    iget-object v3, p0, Lcom/google/googlenav/ui/D;->Z:Lcom/google/googlenav/A;

    invoke-virtual {v3}, Lcom/google/googlenav/A;->b()Z

    move-result v3

    if-nez v3, :cond_e0

    if-eqz v0, :cond_173

    :cond_e0
    move v0, v2

    :goto_e1
    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->d()Z

    move-result v3

    if-eqz v3, :cond_10f

    iget-wide v3, p0, Lcom/google/googlenav/ui/D;->K:J

    const-wide/32 v5, 0x2932e0

    add-long/2addr v3, v5

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v5

    invoke-virtual {v5}, Laf/b;->v()Laf/a;

    move-result-object v5

    invoke-interface {v5}, Laf/a;->c()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_10f

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/googlenav/ui/D;->K:J

    invoke-virtual {p0, v1, v1}, Lcom/google/googlenav/ui/D;->a(ZZ)V

    move v0, v2

    :cond_10f
    iget-object v1, p0, Lcom/google/googlenav/ui/D;->W:Lcom/google/googlenav/ui/at;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/at;->s()Z

    move-result v1

    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/google/googlenav/ui/D;->S:Z

    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/google/googlenav/ui/D;->S:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->Y()Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/google/googlenav/ui/D;->S:Z

    if-eqz v0, :cond_12c

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->b()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->n()V

    :cond_12c
    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->b:Z

    if-nez v0, :cond_136

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->A()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/D;->b:Z

    :cond_136
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ab:LaM/a;

    invoke-virtual {v0}, LaM/a;->a()V

    goto/16 :goto_c

    :cond_13d
    move v0, v1

    goto/16 :goto_26

    :cond_140
    iget-wide v3, p0, Lcom/google/googlenav/ui/D;->I:J

    sub-long v3, v5, v3

    long-to-int v3, v3

    int-to-long v3, v3

    const-wide/16 v7, 0x6

    mul-long/2addr v3, v7

    long-to-int v4, v3

    div-int/lit8 v3, v4, 0x64

    rem-int/lit8 v4, v4, 0x64

    int-to-long v7, v4

    sub-long v7, v5, v7

    iput-wide v7, p0, Lcom/google/googlenav/ui/D;->I:J

    goto/16 :goto_47

    :cond_155
    iput-wide v9, p0, Lcom/google/googlenav/ui/D;->I:J

    goto/16 :goto_58

    :cond_159
    const-wide/16 v3, 0x1f4

    goto/16 :goto_6c

    :cond_15d
    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v3

    invoke-virtual {v3}, Lat/h;->j()Z

    move-result v3

    if-nez v3, :cond_16f

    iget-object v3, p0, Lcom/google/googlenav/ui/D;->W:Lcom/google/googlenav/ui/at;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/at;->b()Z

    move-result v3

    if-eqz v3, :cond_176

    :cond_16f
    move v0, v2

    move v3, v2

    goto/16 :goto_7f

    :cond_173
    move v0, v1

    goto/16 :goto_e1

    :cond_176
    move v3, v2

    goto/16 :goto_7f

    :cond_179
    move v3, v1

    goto/16 :goto_7f
.end method

.method public X()V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aT()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v1}, LaY/Y;->I()LaY/i;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v1}, LaY/Y;->I()LaY/i;

    move-result-object v1

    invoke-virtual {v1}, LaY/i;->L()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    invoke-static {}, Lcom/google/googlenav/ui/aV;->a()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/ui/aV;->a(LaJ/p;Z)V

    :cond_33
    return-void
.end method

.method public Y()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->k()Z

    move-result v0

    return v0
.end method

.method public Z()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->q:Lcom/google/googlenav/ay;

    invoke-interface {v0}, Lcom/google/googlenav/ay;->a()V

    return-void
.end method

.method public a(Lcom/google/googlenav/aV;Z)LaY/aG;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0, p1, p2}, LaY/Y;->a(Lcom/google/googlenav/aV;Z)LaY/aG;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)LaY/aG;
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/D;->a(Ljava/util/List;Lcom/google/googlenav/bb;)Lcom/google/googlenav/aV;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v1, v0}, LaY/Y;->b(Lcom/google/googlenav/aV;)LaY/aG;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/googlenav/bJ;)LaY/bd;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0, p1}, LaY/Y;->a(Lcom/google/googlenav/bJ;)LaY/bd;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/googlenav/aa;)LaY/br;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0, p1}, LaY/Y;->a(Lcom/google/googlenav/aa;)LaY/br;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->j()V

    return-void
.end method

.method public a(ILaE/h;)V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->g:Lcom/google/googlenav/android/ac;

    new-instance v2, Lcom/google/googlenav/ui/K;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/ui/K;-><init>(Lcom/google/googlenav/ui/D;I)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public a(I[LaU/f;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/wizard/hM;->a(I[LaU/f;)V

    return-void
.end method

.method public a(LaE/h;LaJ/B;ZLjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->aa:Lap/c;

    invoke-static {p1, p2, p3, p4, v0}, LaE/d;->a(LaE/h;LaJ/B;ZLjava/lang/String;Lap/c;)V

    return-void
.end method

.method public a(LaJ/B;)V
    .registers 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v1}, LaJ/u;->c()LaJ/B;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->d()LaJ/Y;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LaJ/u;->e(LaJ/B;LaJ/Y;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    invoke-virtual {v1, p1}, LaJ/p;->a(LaJ/B;)Lt/y;

    move-result-object v2

    const/4 v4, 0x1

    move-object v1, p1

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, LaY/Y;->a(LaJ/B;Lt/y;Ljava/lang/String;Z[Ljava/lang/String;)LaY/x;

    return-void
.end method

.method public a(LaJ/B;LaE/h;)V
    .registers 6

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lat/h;->a(Z)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->ba()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->g:Lcom/google/googlenav/android/ac;

    new-instance v2, Lcom/google/googlenav/ui/J;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/ui/J;-><init>(Lcom/google/googlenav/ui/D;LaJ/B;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public a(LaJ/B;Lau/x;)V
    .registers 5

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/aa;

    invoke-direct {v1, p1}, Lcom/google/googlenav/aa;-><init>(LaJ/B;)V

    if-eqz p2, :cond_e

    invoke-virtual {v1, p2}, Lcom/google/googlenav/aa;->a(Lau/x;)V

    :cond_e
    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method public a(LaJ/B;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/google/googlenav/ui/aG;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/aG;-><init>(Lcom/google/googlenav/ui/D;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/googlenav/ui/aG;->a(LaJ/B;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(LaJ/B;Lt/y;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 16

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v1}, LaJ/u;->f()LaJ/H;

    move-result-object v5

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v1}, LaJ/u;->a()I

    move-result v6

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v1}, LaJ/u;->b()I

    move-result v7

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/google/googlenav/ui/wizard/hM;->a(LaJ/B;Lt/y;Ljava/lang/String;Ljava/lang/String;LaJ/H;IILcom/google/googlenav/ui/wizard/z;Z)V

    return-void
.end method

.method public a(LaJ/p;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    invoke-virtual {v0, v1}, LaJ/p;->a(LaJ/Q;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    invoke-virtual {v0, v1}, LaJ/p;->a(LaJ/q;)V

    :cond_f
    iput-object p1, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->W:Lcom/google/googlenav/ui/at;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/at;->a(LaJ/p;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->M:Lcom/google/googlenav/ui/af;

    invoke-virtual {p1, v0}, LaJ/p;->a(LaJ/Q;)V

    new-instance v0, Lcom/google/googlenav/ui/N;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/N;-><init>(Lcom/google/googlenav/ui/D;)V

    invoke-virtual {p1, v0}, LaJ/p;->a(LaJ/q;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/hM;->a(LaJ/p;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->Q:Lcom/google/googlenav/ui/A;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->Q:Lcom/google/googlenav/ui/A;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/A;->a(LaJ/p;)V

    :cond_31
    return-void
.end method

.method public a(LaJ/u;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->Q:Lcom/google/googlenav/ui/A;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->Q:Lcom/google/googlenav/ui/A;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/A;->a(Lcom/google/googlenav/ui/B;)V

    :cond_e
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->u:Lcom/google/googlenav/ui/bQ;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->u:Lcom/google/googlenav/ui/bQ;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bQ;->a(Lcom/google/googlenav/ui/bR;)V

    :cond_17
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ax:LaJ/v;

    invoke-virtual {v0, v1}, LaJ/u;->b(LaJ/v;)V

    :cond_1e
    iput-object p1, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ax:LaJ/v;

    invoke-virtual {p1, v0}, LaJ/u;->a(LaJ/v;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->W:Lcom/google/googlenav/ui/at;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->W:Lcom/google/googlenav/ui/at;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/at;->a(LaJ/u;)V

    :cond_2e
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->Z:Lcom/google/googlenav/A;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->Z:Lcom/google/googlenav/A;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/A;->a(LaJ/u;)V

    :cond_37
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/hM;->a(LaJ/u;)V

    :cond_40
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->t:Lcom/google/googlenav/ui/bP;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->t:Lcom/google/googlenav/ui/bP;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/bP;->a(LaJ/u;)V

    :cond_49
    invoke-static {}, LaV/n;->a()LaV/n;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-static {}, LaV/n;->a()LaV/n;

    move-result-object v0

    invoke-virtual {v0, p1}, LaV/n;->a(LaJ/u;)V

    :cond_56
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->c:LaO/a;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->c:LaO/a;

    invoke-virtual {v0, p1}, LaO/a;->a(LaJ/u;)V

    :cond_5f
    iget v0, p0, Lcom/google/googlenav/ui/D;->m:I

    iget v1, p0, Lcom/google/googlenav/ui/D;->n:I

    invoke-virtual {p1, v0, v1}, LaJ/u;->c(II)V

    return-void
.end method

.method public a(LaY/ab;)V
    .registers 15

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    iget-object v3, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    iget-object v4, p0, Lcom/google/googlenav/ui/D;->M:Lcom/google/googlenav/ui/af;

    iget-object v5, p0, Lcom/google/googlenav/ui/D;->A:LaE/h;

    iget-object v6, p0, Lcom/google/googlenav/ui/D;->w:Lax/bD;

    iget-object v7, p0, Lcom/google/googlenav/ui/D;->x:Lax/r;

    iget-object v8, p0, Lcom/google/googlenav/ui/D;->g:Lcom/google/googlenav/android/ac;

    iget-object v9, p0, Lcom/google/googlenav/ui/D;->W:Lcom/google/googlenav/ui/at;

    iget-object v10, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v11, p0, Lcom/google/googlenav/ui/D;->C:LaJ/k;

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->az:Lcom/google/googlenav/ui/aL;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aL;->f()Lcom/google/googlenav/layer/r;

    move-result-object v12

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v12}, LaY/ab;->a(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;LaE/h;Lax/bD;Lax/r;Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/at;Lcom/google/googlenav/ui/wizard/hM;LaJ/k;Lcom/google/googlenav/layer/r;)LaY/Y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->b()V

    invoke-static {}, LaP/h;->i()LaP/h;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0, v1}, LaP/h;->a(LaP/i;)V

    :cond_32
    return-void
.end method

.method public a(LaY/az;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0, p0, p1}, LaY/Y;->b(Lcom/google/googlenav/L;LaY/az;)V

    return-void
.end method

.method public a(LaY/bc;Lcom/google/googlenav/E;)V
    .registers 5

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/bJ;

    invoke-direct {v1, p1, p2}, Lcom/google/googlenav/bJ;-><init>(LaY/bc;Lcom/google/googlenav/E;)V

    invoke-virtual {v1}, Lcom/google/googlenav/bJ;->n()Lcom/google/googlenav/bM;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method public a(LaY/i;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0, p1}, LaY/Y;->f(LaY/i;)V

    return-void
.end method

.method public a(Lah/e;)V
    .registers 11

    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->i:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    :try_start_5
    iget v0, p0, Lcom/google/googlenav/ui/D;->G:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/google/googlenav/ui/D;->aa:Lap/c;

    const-wide/16 v7, 0x0

    invoke-static/range {v0 .. v8}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Landroid/os/Handler;JJLap/c;J)V

    :cond_18
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/D;->c(Lah/e;)V

    iget v0, p0, Lcom/google/googlenav/ui/D;->G:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/D;->G:I
    :try_end_21
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_21} :catch_22

    goto :goto_4

    :catch_22
    move-exception v0

    invoke-static {}, Laf/l;->b()V

    goto :goto_4
.end method

.method public a(Laq/b;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/D;->d(Laq/b;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/D;->o:Laq/b;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->n()V

    return-void
.end method

.method public a(Laq/c;)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->i:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aQ()V

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/D;->b(Laq/c;)V

    invoke-virtual {p1}, Laq/c;->c()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/D;->V:Z

    goto :goto_4

    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->b()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->n()V

    goto :goto_4
.end method

.method public a(Lat/g;)V
    .registers 7

    const/4 v3, 0x7

    const/4 v4, 0x2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->i:Z

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    instance-of v0, p1, Lcom/google/googlenav/aV;

    if-eqz v0, :cond_f1

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->aJ:Lar/u;

    invoke-virtual {v0}, Lar/u;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->e:Lar/u;

    invoke-virtual {v0}, Lar/u;->a()V

    check-cast p1, Lcom/google/googlenav/aV;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->a()V

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->v()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->w()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lau/b;->d(Lam/b;)Lau/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/D;->b(Lau/b;)V

    :cond_2b
    :goto_2b
    invoke-virtual {p1}, Lcom/google/googlenav/aV;->au()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->bb()V

    :cond_34
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->aJ:Lar/u;

    invoke-virtual {v0}, Lar/u;->b()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "s=po"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->p()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->aJ:Lar/u;

    invoke-virtual {v2}, Lar/u;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "stat"

    invoke-static {v4, v1, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_7f
    :goto_7f
    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->n()V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->b()V

    goto/16 :goto_6

    :cond_89
    invoke-virtual {p1}, Lcom/google/googlenav/aV;->m()Lcom/google/googlenav/bb;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/googlenav/bb;->H:Z

    if-eqz v0, :cond_a1

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->f()I

    move-result v0

    if-lez v0, :cond_2b

    sget-object v0, Law/b;->l:Law/c;

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Law/c;->a(I)V

    goto :goto_2b

    :cond_a1
    invoke-virtual {p1}, Lcom/google/googlenav/aV;->n()Z

    move-result v0

    if-eqz v0, :cond_cd

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->x()I

    move-result v0

    if-ne v0, v3, :cond_b3

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->q()Z

    move-result v0

    if-nez v0, :cond_cd

    :cond_b3
    invoke-virtual {p1}, Lcom/google/googlenav/aV;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->F()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->Z:Lcom/google/googlenav/A;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->an()Z

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, LaY/Y;->a(Lcom/google/googlenav/aV;Lcom/google/googlenav/A;Z)V

    goto/16 :goto_2b

    :cond_cd
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->Z:Lcom/google/googlenav/A;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->an()Z

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, LaY/Y;->a(Lcom/google/googlenav/aV;Lcom/google/googlenav/A;Z)V

    invoke-static {p1}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/aV;)V

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->x()I

    move-result v0

    if-eq v0, v3, :cond_2b

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->az:Lcom/google/googlenav/ui/aL;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aL;->g()LaR/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->M()LaJ/B;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v4, v2}, LaR/i;->a(LaJ/B;ILjava/lang/String;)V

    goto/16 :goto_2b

    :cond_f1
    instance-of v0, p1, Lau/b;

    if-eqz v0, :cond_fe

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->a()V

    check-cast p1, Lau/b;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/D;->b(Lau/b;)V

    goto :goto_7f

    :cond_fe
    instance-of v0, p1, Lcom/google/googlenav/aa;

    if-eqz v0, :cond_11f

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->a()V

    check-cast p1, Lcom/google/googlenav/aa;

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->x()LaY/br;

    move-result-object v0

    if-eqz v0, :cond_11a

    invoke-virtual {v0}, LaY/br;->az()Z

    move-result v1

    if-eqz v1, :cond_11a

    invoke-virtual {v0, p1}, LaY/br;->a(Lcom/google/googlenav/aa;)V

    goto/16 :goto_7f

    :cond_11a
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/aa;)LaY/br;

    goto/16 :goto_7f

    :cond_11f
    instance-of v0, p1, Lcom/google/googlenav/bM;

    if-eqz v0, :cond_7f

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->a()V

    check-cast p1, Lcom/google/googlenav/bM;

    invoke-virtual {p1}, Lcom/google/googlenav/bM;->i()Lcom/google/googlenav/bJ;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/bJ;)LaY/bd;

    goto/16 :goto_7f
.end method

.method public a(Lau/b;)V
    .registers 5

    invoke-virtual {p1}, Lau/b;->as()Lau/x;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual {p1}, Lau/b;->au()Lau/x;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual {p1}, Lau/b;->as()Lau/x;

    move-result-object v0

    invoke-virtual {v0}, Lau/x;->f()LaJ/B;

    move-result-object v0

    invoke-virtual {p1}, Lau/b;->au()Lau/x;

    move-result-object v1

    invoke-virtual {v1}, Lau/x;->f()LaJ/B;

    move-result-object v1

    if-eqz v0, :cond_40

    if-eqz v1, :cond_40

    invoke-virtual {v0, v1}, LaJ/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, LaJ/B;

    invoke-virtual {v1}, LaJ/B;->c()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {v1}, LaJ/B;->e()I

    move-result v1

    invoke-direct {v0, v2, v1}, LaJ/B;-><init>(II)V

    invoke-virtual {p1}, Lau/b;->au()Lau/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lau/x;->a(LaJ/B;)Lau/x;

    move-result-object v0

    invoke-virtual {p1, v0}, Lau/b;->b(Lau/x;)V

    :cond_40
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/D;->c(Lau/k;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/D;->d(Lau/k;)V

    invoke-virtual {p1}, Lau/b;->F()Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v0, 0x0

    :goto_4d
    if-eqz v0, :cond_66

    invoke-virtual {p1}, Lau/b;->aS()I

    move-result v1

    invoke-virtual {v0, v1}, Lau/b;->v(I)V

    invoke-virtual {p1}, Lau/b;->aU()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lau/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/D;->b(Lau/b;)V

    :cond_60
    :goto_60
    return-void

    :cond_61
    invoke-static {p1}, LaY/G;->a(Lau/b;)Lau/b;

    move-result-object v0

    goto :goto_4d

    :cond_66
    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lat/h;->c(Lat/g;)V

    invoke-virtual {p1}, Lau/b;->F()Z

    move-result v0

    if-nez v0, :cond_60

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/D;->j(Lau/b;)V

    goto :goto_60
.end method

.method public a(Lau/b;B)V
    .registers 4

    invoke-virtual {p1, p2}, Lau/b;->a(B)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0, p1}, LaY/Y;->a(Lau/b;)LaY/G;

    return-void
.end method

.method public a(Lau/b;Ljava/util/Vector;)V
    .registers 9

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v1}, LaJ/u;->f()LaJ/H;

    move-result-object v2

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v1}, LaJ/u;->a()I

    move-result v3

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v1}, LaJ/u;->b()I

    move-result v4

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/wizard/hM;->a(Lau/b;LaJ/H;IILjava/util/Vector;)V

    return-void
.end method

.method public a(Lau/k;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->ap()Lcom/google/googlenav/A;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/A;->a(Lau/k;)V

    return-void
.end method

.method public a(Lau/v;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/D;->p(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0, p1}, LaY/Y;->a(Lau/v;)LaY/bh;

    return-void
.end method

.method public a(Lau/x;I[Lam/b;Ljava/lang/String;)V
    .registers 7

    invoke-static {p1, p2, p3, p4}, LaN/a;->a(Lau/x;I[Lam/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->q:Lcom/google/googlenav/ay;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ay;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lau/x;Lau/x;Lam/b;)V
    .registers 6

    new-instance v0, Lau/j;

    invoke-direct {v0, p1, p2, p3}, Lau/j;-><init>(Lau/x;Lau/x;Lam/b;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/hM;->a(Lau/j;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/aV;IZ)V
    .registers 14

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/D;->b(Lcom/google/googlenav/aV;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/D;->c(Lcom/google/googlenav/aV;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->aI:Lar/u;

    invoke-virtual {v0}, Lar/u;->a()V

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->x()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->c()LaJ/B;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v3}, LaJ/u;->d()LaJ/Y;

    move-result-object v3

    invoke-virtual {v3}, LaJ/Y;->a()I

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/ui/D;->aa:Lap/c;

    invoke-static {v0, v1, v2, v3, v4}, LaE/d;->a(Ljava/lang/String;ILaJ/B;ILap/c;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lat/h;->c(Lat/g;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->aI:Lar/u;

    invoke-virtual {v0}, Lar/u;->b()V

    if-eqz p3, :cond_11b

    const-string v0, "a"

    :goto_43
    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "s=pr"

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->aI:Lar/u;

    invoke-virtual {v2}, Lar/u;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-static {v1}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "stat"

    invoke-static {v6, v1, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    if-eqz p3, :cond_112

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->A()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/google/googlenav/ui/wizard/y;

    const/4 v0, 0x0

    invoke-direct {v3, p2, v0}, Lcom/google/googlenav/ui/wizard/y;-><init>(ILjava/lang/Object;)V

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;J)V

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->M()LaJ/B;

    move-result-object v0

    invoke-virtual {v0}, LaJ/B;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->V()Ljava/lang/String;

    move-result-object v0

    const-string v2, "19"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bd

    const-string v1, ""

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hS;->D()Lcom/google/googlenav/ui/wizard/eA;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/eA;->E()I

    move-result v2

    if-ne v2, v6, :cond_bd

    const-string v0, "26"

    :cond_bd
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "t="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->x()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    const-string v0, "c="

    aput-object v0, v2, v9

    invoke-static {v2}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v1, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_112
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->Z:Lcom/google/googlenav/A;

    invoke-virtual {v0}, Lcom/google/googlenav/A;->c()V

    iput-boolean v7, p0, Lcom/google/googlenav/ui/D;->al:Z

    goto/16 :goto_10

    :cond_11b
    const-string v0, "p"

    goto/16 :goto_43
.end method

.method public a(Lcom/google/googlenav/ah;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ah;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ah;BZ)V
    .registers 10

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    move-object v1, p1

    move v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, LaY/Y;->a(Lcom/google/googlenav/ah;ZBZZ)LaY/W;

    return-void
.end method

.method public a(Lcom/google/googlenav/ah;I)V
    .registers 6

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v1, v0}, LaJ/u;->c(LaJ/B;)V

    :cond_b
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlenav/ah;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/D;->a(Ljava/util/List;Lcom/google/googlenav/bb;)Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/y;

    invoke-direct {v2, p2}, Lcom/google/googlenav/ui/wizard/y;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v1, v0}, LaY/Y;->a(Lcom/google/googlenav/aV;)LaY/s;

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LaY/i;->a(B)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->Z:Lcom/google/googlenav/A;

    invoke-virtual {v0}, Lcom/google/googlenav/A;->d()V

    return-void
.end method

.method public a(Lcom/google/googlenav/ah;ILjava/lang/String;)V
    .registers 7

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/ah;I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->Z:Lcom/google/googlenav/A;

    invoke-virtual {v0}, Lcom/google/googlenav/A;->d()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ah;LaY/Y;ZLjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/bb;)V
    .registers 5

    new-instance v0, Lcom/google/googlenav/bc;

    invoke-direct {v0, p1}, Lcom/google/googlenav/bc;-><init>(Lcom/google/googlenav/bb;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->W:Lcom/google/googlenav/ui/at;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/at;->j()LaJ/B;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->a(LaJ/B;)Lcom/google/googlenav/bc;

    :cond_10
    new-instance v1, Lcom/google/googlenav/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/aV;-><init>(Lcom/google/googlenav/bb;LaJ/u;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->af()Lcom/google/googlenav/ay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ay;->e()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aV;->c(Z)V

    iget v0, p1, Lcom/google/googlenav/bb;->j:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/aV;IZ)V

    return-void
.end method

.method public a(Lcom/google/googlenav/h;Lcom/google/googlenav/ui/wizard/O;)V
    .registers 11

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    move-object v1, p0

    move-object v2, p1

    move v6, v5

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/D;Lcom/google/googlenav/h;Ljava/lang/String;ZZZLcom/google/googlenav/ui/wizard/O;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/A;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/D;->Q:Lcom/google/googlenav/ui/A;

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/bQ;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/D;->u:Lcom/google/googlenav/ui/bQ;

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/c;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/D;->at:Lcom/google/googlenav/ui/c;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 6

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    check-cast p1, Lcom/google/googlenav/aV;

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->i()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->f()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    move v0, v1

    :cond_12
    iget-object v2, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v2}, LaY/Y;->I()LaY/i;

    move-result-object v2

    invoke-virtual {v2}, LaY/i;->ax()I

    move-result v2

    if-nez v2, :cond_36

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    check-cast v0, LaY/aG;

    :goto_26
    invoke-virtual {v0}, LaY/aG;->as()Lcom/google/googlenav/E;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/E;->c()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LaY/aG;->a(B)V

    goto :goto_3

    :cond_36
    iget-object v2, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v2, p1, v1}, LaY/Y;->a(Lcom/google/googlenav/aV;Z)LaY/aG;

    move-result-object v1

    invoke-virtual {v1}, LaY/aG;->as()Lcom/google/googlenav/E;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/googlenav/E;->a(I)V

    move-object v0, v1

    goto :goto_26
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->av:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->v:Lcom/google/googlenav/ui/aM;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/aM;->b(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 11

    new-instance v0, Lcom/google/googlenav/ui/W;

    invoke-direct {v0, p0, p4, p2, p3}, Lcom/google/googlenav/ui/W;-><init>(Lcom/google/googlenav/ui/D;ZILjava/lang/String;)V

    new-instance v2, Lcom/google/googlenav/f;

    invoke-direct {v2, v0, p1}, Lcom/google/googlenav/f;-><init>(Lcom/google/googlenav/g;Ljava/lang/String;)V

    const/16 v0, 0x1a2

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/x;->a:Lcom/google/googlenav/ui/wizard/y;

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;J)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method public a(Ljava/lang/String;LaJ/B;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;LaJ/B;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;J)V
    .registers 13

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;JZ)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/ah;)V
    .registers 14

    const-wide/16 v2, -0x1

    :try_start_2
    new-instance v0, Lcom/google/googlenav/J;

    invoke-direct {v0, p0}, Lcom/google/googlenav/J;-><init>(Lcom/google/googlenav/ui/D;)V

    invoke-static {p1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;Z)V

    :goto_11
    return-void

    :cond_12
    if-eqz p2, :cond_91

    invoke-virtual {p2}, Lcom/google/googlenav/ah;->Z()J

    move-result-wide v0

    :goto_18
    invoke-static {p2}, Lcom/google/googlenav/bI;->a(Lcom/google/googlenav/ah;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http:"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2c

    const-string v5, "https:"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_99

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

    invoke-static {v7}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :goto_82
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->q:Lcom/google/googlenav/ay;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ay;->a(Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_87} :catch_88

    goto :goto_11

    :catch_88
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    goto :goto_11

    :cond_91
    move-wide v0, v2

    goto :goto_18

    :cond_93
    :try_start_93
    const-string v0, ""

    goto :goto_61

    :cond_96
    const-string v0, ""

    goto :goto_79

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

    invoke-static {v7}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

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

.method public a(Ljava/lang/String;Ljava/lang/String;LaJ/B;Ljava/lang/String;)V
    .registers 11

    const/4 v2, 0x0

    new-instance v1, Lcom/google/googlenav/T;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/googlenav/T;-><init>(Ljava/lang/String;Ljava/lang/String;LaJ/B;Ljava/lang/String;)V

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    const/4 v3, 0x2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, LaY/Y;->a(Lcom/google/googlenav/ah;ZBZZ)LaY/W;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->af()Lcom/google/googlenav/ay;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/google/googlenav/ay;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    if-eqz p4, :cond_9

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->a()V

    :cond_9
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ao()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->aC:Lcom/google/googlenav/ui/f;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/f;->d()Z

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method

.method public a(Ljava/lang/String;ZI)V
    .registers 10

    new-instance v0, Lcom/google/googlenav/ui/V;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/googlenav/ui/V;-><init>(Lcom/google/googlenav/ui/D;ZI)V

    new-instance v2, Lcom/google/googlenav/f;

    invoke-direct {v2, v0, p1}, Lcom/google/googlenav/f;-><init>(Lcom/google/googlenav/g;Ljava/lang/String;)V

    const/16 v0, 0x1a2

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/x;->a:Lcom/google/googlenav/ui/wizard/y;

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;J)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method public a(Z)V
    .registers 6

    invoke-static {}, Laf/d;->a()Z

    move-result v1

    if-eqz v1, :cond_27

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

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->bd()V

    :cond_27
    if-eqz p1, :cond_2a

    :goto_29
    return-void

    :cond_2a
    const/16 v0, 0x2c7

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->d()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->S()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x4c8

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_56
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    goto :goto_29

    :cond_5a
    if-nez v1, :cond_56

    goto :goto_29
.end method

.method public a(ZI)V
    .registers 4

    if-eqz p1, :cond_e

    sget-object v0, Lcom/google/googlenav/ui/D;->aG:Lar/u;

    :goto_4
    invoke-virtual {v0}, Lar/u;->a()V

    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/D;->c(I)V

    invoke-virtual {v0}, Lar/u;->b()V

    return-void

    :cond_e
    sget-object v0, Lcom/google/googlenav/ui/D;->aH:Lar/u;

    goto :goto_4
.end method

.method public a(ZZ)V
    .registers 13

    const/16 v9, 0xd

    const/4 v8, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->z()Z

    move-result v1

    if-nez v1, :cond_f

    :goto_e
    return-void

    :cond_f
    iput-boolean p1, p0, Lcom/google/googlenav/ui/D;->N:Z

    if-eqz p1, :cond_a9

    if-eqz p2, :cond_89

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v1}, LaY/Y;->I()LaY/i;

    move-result-object v1

    if-eqz v1, :cond_b0

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    invoke-virtual {v0, v8}, LaY/i;->c(Z)I

    move-result v1

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    invoke-virtual {v0}, LaY/i;->q()I

    move-result v0

    :goto_31
    iget-object v2, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->c()LaJ/B;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/D;->W:Lcom/google/googlenav/ui/at;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/at;->j()LaJ/B;

    move-result-object v3

    if-eqz v3, :cond_89

    iget-object v4, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v3}, LaJ/B;->c()I

    move-result v5

    invoke-virtual {v2}, LaJ/B;->c()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v3}, LaJ/B;->e()I

    move-result v6

    invoke-virtual {v2}, LaJ/B;->e()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v4, v5, v6, v1, v0}, LaJ/u;->a(IIII)LaJ/Y;

    move-result-object v0

    invoke-virtual {v0}, LaJ/Y;->a()I

    move-result v1

    if-le v1, v9, :cond_69

    invoke-static {v9}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    :cond_69
    new-instance v1, LaJ/B;

    invoke-virtual {v2}, LaJ/B;->c()I

    move-result v4

    invoke-virtual {v3}, LaJ/B;->c()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, LaJ/B;->e()I

    move-result v2

    invoke-virtual {v3}, LaJ/B;->e()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v4, v2}, LaJ/B;-><init>(II)V

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v2, v1, v0}, LaJ/u;->e(LaJ/B;LaJ/Y;)V

    :cond_89
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->q()LaY/ba;

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->d()LaJ/Y;

    move-result-object v0

    invoke-virtual {v0}, LaJ/Y;->a()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_a5

    const/16 v0, 0x26d

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    :cond_a5
    iput-boolean v8, p0, Lcom/google/googlenav/ui/D;->al:Z

    goto/16 :goto_e

    :cond_a9
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->r()V

    goto/16 :goto_e

    :cond_b0
    move v1, v0

    goto :goto_31
.end method

.method public a(I)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_2c

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->b()I

    move-result v2

    if-nez v2, :cond_12

    :cond_b
    :goto_b
    return v0

    :pswitch_c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->b()I

    move-result v2

    if-eq v2, v1, :cond_b

    :cond_12
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v0, p1}, LaJ/u;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->d()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->X()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aZ()V

    move v0, v1

    goto :goto_b

    :pswitch_24
    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->b()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    goto :goto_b

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_c
        :pswitch_24
    .end packed-switch
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    const/16 v1, 0x9c4

    if-ne p1, v1, :cond_d

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    sget-object v2, Lcom/google/googlenav/ui/n;->G:Laq/a;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/av;->a(Laq/a;)V

    :goto_c
    return v0

    :cond_d
    const/16 v1, 0x9d3

    if-ne p1, v1, :cond_19

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    sget-object v2, Lcom/google/googlenav/ui/n;->H:Laq/a;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/av;->a(Laq/a;)V

    goto :goto_c

    :cond_19
    const/16 v1, 0x9c5

    if-ne p1, v1, :cond_25

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    sget-object v2, Lcom/google/googlenav/ui/n;->P:Laq/a;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/av;->a(Laq/a;)V

    goto :goto_c

    :cond_25
    const/16 v1, 0x9c6

    if-ne p1, v1, :cond_31

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    sget-object v2, Lcom/google/googlenav/ui/n;->I:Laq/a;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/av;->a(Laq/a;)V

    goto :goto_c

    :cond_31
    const/16 v1, 0x9c7

    if-ne p1, v1, :cond_3d

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    sget-object v2, Lcom/google/googlenav/ui/n;->R:Laq/a;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/av;->a(Laq/a;)V

    goto :goto_c

    :cond_3d
    const/16 v1, 0x9c8

    if-ne p1, v1, :cond_49

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    sget-object v2, Lcom/google/googlenav/ui/n;->J:Laq/a;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/av;->a(Laq/a;)V

    goto :goto_c

    :cond_49
    const/16 v1, 0x9c9

    if-ne p1, v1, :cond_55

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    sget-object v2, Lcom/google/googlenav/ui/n;->K:Laq/a;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/av;->a(Laq/a;)V

    goto :goto_c

    :cond_55
    const/16 v1, 0x9ca

    if-ne p1, v1, :cond_61

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    sget-object v2, Lcom/google/googlenav/ui/n;->Q:Laq/a;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/av;->a(Laq/a;)V

    goto :goto_c

    :cond_61
    const/16 v1, 0x9cd

    if-ne p1, v1, :cond_6d

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    sget-object v2, Lcom/google/googlenav/ui/n;->aa:Laq/a;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/av;->a(Laq/a;)V

    goto :goto_c

    :cond_6d
    const/16 v1, 0x9d0

    if-ne p1, v1, :cond_79

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    sget-object v2, Lcom/google/googlenav/ui/n;->ac:Laq/a;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/av;->a(Laq/a;)V

    goto :goto_c

    :cond_79
    const/16 v1, 0x9d1

    if-ne p1, v1, :cond_85

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    sget-object v2, Lcom/google/googlenav/ui/n;->ae:Laq/a;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/av;->a(Laq/a;)V

    goto :goto_c

    :cond_85
    const/16 v1, 0x9d2

    if-ne p1, v1, :cond_92

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    sget-object v2, Lcom/google/googlenav/ui/n;->af:Laq/a;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/av;->a(Laq/a;)V

    goto/16 :goto_c

    :cond_92
    const/16 v1, 0x9d4

    if-ne p1, v1, :cond_9f

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    sget-object v2, Lcom/google/googlenav/ui/n;->Z:Laq/a;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/av;->a(Laq/a;)V

    goto/16 :goto_c

    :cond_9f
    const/16 v1, 0x9d5

    if-ne p1, v1, :cond_ac

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    sget-object v2, Lcom/google/googlenav/ui/n;->ad:Laq/a;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/av;->a(Laq/a;)V

    goto/16 :goto_c

    :cond_ac
    const/16 v1, 0xb55

    if-ne p1, v1, :cond_b9

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    sget-object v2, Lcom/google/googlenav/ui/n;->ay:Laq/a;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/av;->a(Laq/a;)V

    goto/16 :goto_c

    :cond_b9
    const/16 v1, 0x9d6

    if-ne p1, v1, :cond_c6

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    sget-object v2, Lcom/google/googlenav/ui/n;->as:Laq/a;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/av;->a(Laq/a;)V

    goto/16 :goto_c

    :cond_c6
    const/16 v1, 0xfa2

    if-ne p1, v1, :cond_d3

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    sget-object v2, Lcom/google/googlenav/ui/n;->ax:Laq/a;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/av;->a(Laq/a;)V

    goto/16 :goto_c

    :cond_d3
    const/4 v0, 0x0

    goto/16 :goto_c
.end method

.method public a(ILaq/b;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_4c

    :pswitch_5
    if-eqz p2, :cond_a

    packed-switch p1, :pswitch_data_5e

    :cond_a
    :goto_a
    :pswitch_a
    return v0

    :pswitch_b
    move v0, v1

    goto :goto_a

    :pswitch_d
    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aS()V

    move v0, v1

    goto :goto_a

    :pswitch_12
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->p()Lcom/google/googlenav/ui/wizard/y;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aZ()V

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/y;->a()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2c

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, LaY/i;->a(B)V

    :cond_2c
    move v0, v1

    goto :goto_a

    :pswitch_2e
    iget-object v2, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hM;->p()Lcom/google/googlenav/ui/wizard/y;

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v3, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/ui/wizard/hM;->a(LaY/Y;Z)V

    move v0, v1

    goto :goto_a

    :pswitch_3c
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->p()Lcom/google/googlenav/ui/wizard/y;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->aa()V

    move v0, v1

    goto :goto_a

    :pswitch_46
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/D;->c(Laq/b;)Z

    move v0, v1

    goto :goto_a

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

    :pswitch_data_5e
    .packed-switch 0x5
        :pswitch_46
    .end packed-switch
.end method

.method public a(LaA/t;)Z
    .registers 3

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->aC()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aR()V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->Q:Lcom/google/googlenav/ui/A;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/A;->a(LaA/t;)Z

    move-result v0

    goto :goto_b
.end method

.method public aA()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->aB()V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/y;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/wizard/y;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    :cond_2a
    return-void
.end method

.method public aB()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/D;->p(Z)V

    return-void
.end method

.method public aC()Lcom/google/googlenav/ui/wizard/hM;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    return-object v0
.end method

.method public aD()Lcom/google/googlenav/ui/f;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->aC:Lcom/google/googlenav/ui/f;

    return-object v0
.end method

.method public aE()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->M:Lcom/google/googlenav/ui/af;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/af;->a(Z)V

    return-void
.end method

.method public aF()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->u:Lcom/google/googlenav/ui/bQ;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->u:Lcom/google/googlenav/ui/bQ;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bQ;->e()V

    :cond_9
    return-void
.end method

.method public aG()Lax/k;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->y:Lax/k;

    return-object v0
.end method

.method public aH()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->aw:Ljava/lang/Boolean;

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->af()Lcom/google/googlenav/ay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ay;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/D;->aw:Ljava/lang/Boolean;

    :cond_12
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->aw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public aI()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->P()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->P()Z

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

.method public aJ()LaO/a;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->c:LaO/a;

    return-object v0
.end method

.method public aa()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->q:Lcom/google/googlenav/ay;

    invoke-interface {v0}, Lcom/google/googlenav/ay;->c()V

    return-void
.end method

.method public declared-synchronized ab()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->A:LaE/h;

    invoke-virtual {v0}, LaE/h;->p()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ac()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->h:Z

    return v0
.end method

.method public declared-synchronized ad()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/googlenav/ui/D;->l:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/D;->h:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->B:LaJ/V;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->B:LaJ/V;

    invoke-virtual {v0}, LaJ/V;->d()V

    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->h()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aX()V

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-static {}, Lax/aa;->l()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->r()V

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->q()V

    :cond_32
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->A:LaE/h;

    invoke-virtual {v0}, LaE/h;->x()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->A:LaE/h;

    invoke-virtual {v0}, LaE/h;->o()V
    :try_end_3f
    .catchall {:try_start_2 .. :try_end_3f} :catchall_41

    :cond_3f
    monitor-exit p0

    return-void

    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ae()Lcom/google/googlenav/android/ac;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->g:Lcom/google/googlenav/android/ac;

    return-object v0
.end method

.method public af()Lcom/google/googlenav/ay;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->q:Lcom/google/googlenav/ay;

    return-object v0
.end method

.method public ag()Lcom/google/googlenav/j;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->D:Lcom/google/googlenav/j;

    return-object v0
.end method

.method ah()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->n()Z

    move-result v0

    return v0
.end method

.method public ai()Lcom/google/googlenav/ui/A;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->Q:Lcom/google/googlenav/ui/A;

    return-object v0
.end method

.method public aj()V
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ae:Lcom/google/googlenav/ui/wizard/x;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/x;->d()Lcom/google/googlenav/ui/wizard/y;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/y;->a()I

    move-result v3

    sparse-switch v3, :sswitch_data_58

    move v0, v1

    move-object v1, v2

    :cond_12
    :goto_12
    if-eqz v1, :cond_17

    invoke-virtual {v1, v0}, LaY/i;->a(B)V

    :cond_17
    return-void

    :sswitch_18
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->v()LaY/G;

    move-result-object v1

    const/4 v0, 0x3

    goto :goto_12

    :sswitch_20
    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v1}, LaY/Y;->v()LaY/G;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v2

    invoke-virtual {v1}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/E;->f()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Lcom/google/googlenav/E;->a(I)V

    goto :goto_12

    :sswitch_3a
    iget-object v2, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v2}, LaY/Y;->w()LaY/bh;

    move-result-object v2

    if-eqz v2, :cond_55

    invoke-virtual {v2}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v1

    invoke-virtual {v2}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/E;->f()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Lcom/google/googlenav/E;->a(I)V

    move-object v1, v2

    goto :goto_12

    :cond_55
    move v0, v1

    move-object v1, v2

    goto :goto_12

    :sswitch_data_58
    .sparse-switch
        0x3 -> :sswitch_18
        0x4 -> :sswitch_20
        0x1b -> :sswitch_3a
    .end sparse-switch
.end method

.method public ak()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/hM;->a(LaY/Y;)V

    return-void
.end method

.method public al()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->f()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->n()V

    return-void
.end method

.method public am()Lcom/google/googlenav/ui/wizard/z;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->m()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    return-object v0
.end method

.method public an()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->t()Z

    move-result v0

    return v0
.end method

.method public ao()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->v:Lcom/google/googlenav/ui/aM;

    invoke-interface {v0}, Lcom/google/googlenav/ui/aM;->a()Z

    move-result v0

    return v0
.end method

.method public ap()Lcom/google/googlenav/A;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->Z:Lcom/google/googlenav/A;

    return-object v0
.end method

.method public aq()Lap/c;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->aa:Lap/c;

    return-object v0
.end method

.method public ar()LaY/Y;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    return-object v0
.end method

.method public as()LaM/f;
    .registers 2

    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v0

    invoke-virtual {v0}, LaM/e;->c()LaM/f;

    move-result-object v0

    return-object v0
.end method

.method public at()LaM/f;
    .registers 2

    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v0

    invoke-virtual {v0}, LaM/e;->d()LaM/f;

    move-result-object v0

    return-object v0
.end method

.method public au()Lcom/google/googlenav/ui/X;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->aj:Lcom/google/googlenav/ui/X;

    return-object v0
.end method

.method public av()Lcom/google/googlenav/ui/wizard/x;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ae:Lcom/google/googlenav/ui/wizard/x;

    return-object v0
.end method

.method public aw()Lcom/google/googlenav/ui/at;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->W:Lcom/google/googlenav/ui/at;

    return-object v0
.end method

.method public ax()Lcom/google/googlenav/ui/bP;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->t:Lcom/google/googlenav/ui/bP;

    return-object v0
.end method

.method public ay()V
    .registers 3

    invoke-static {}, Laf/b;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->aq:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->aq:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    :cond_10
    invoke-static {}, Lcom/google/googlenav/ui/n;->a()V

    invoke-static {}, Lcom/google/googlenav/ui/w;->a()V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->d()V

    invoke-static {}, Lau/o;->b()V

    invoke-static {}, Lcom/google/googlenav/ui/wizard/eA;->F()V

    iput-object v0, p0, Lcom/google/googlenav/ui/D;->aq:Ljava/lang/String;

    :cond_25
    return-void
.end method

.method public az()Z
    .registers 5

    iget-wide v0, p0, Lcom/google/googlenav/ui/D;->X:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    iget-wide v0, p0, Lcom/google/googlenav/ui/D;->X:J

    const-wide/32 v2, 0x6ddd00

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/googlenav/ui/D;->Y:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->f()LaJ/H;

    move-result-object v0

    invoke-virtual {v0}, LaJ/H;->c()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/wizard/hM;->a(LaY/Y;I)V

    return-void
.end method

.method public b(II)V
    .registers 6

    :try_start_0
    iput p1, p0, Lcom/google/googlenav/ui/D;->m:I

    iput p2, p0, Lcom/google/googlenav/ui/D;->n:I

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    iget v1, p0, Lcom/google/googlenav/ui/D;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/D;->n:I

    invoke-virtual {v0, v1, v2}, LaJ/p;->d(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    iget v1, p0, Lcom/google/googlenav/ui/D;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/D;->n:I

    invoke-virtual {v0, v1, v2}, LaJ/u;->c(II)V

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/D;->m:I

    iget v2, p0, Lcom/google/googlenav/ui/D;->n:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/bw;->b(II)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->X()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aZ()V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->Q:Lcom/google/googlenav/ui/A;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->Q:Lcom/google/googlenav/ui/A;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/A;->c(II)V
    :try_end_30
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_30} :catch_31

    :cond_30
    :goto_30
    return-void

    :catch_31
    move-exception v0

    invoke-static {}, Laf/l;->b()V

    goto :goto_30
.end method

.method public b(LaJ/B;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->W:Lcom/google/googlenav/ui/at;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/at;->e()V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->Z:Lcom/google/googlenav/A;

    invoke-virtual {v0}, Lcom/google/googlenav/A;->b()Z

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->F()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->n()V

    return-void
.end method

.method public b(LaY/az;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0, p1}, LaY/Y;->a(LaY/az;)V

    return-void
.end method

.method public b(Lat/g;)V
    .registers 2

    invoke-interface {p1}, Lat/g;->j_()V

    return-void
.end method

.method public b(Lau/b;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x4

    const-string v1, "rs"

    invoke-virtual {p1}, Lau/b;->z()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lau/o;->a()Lau/o;

    move-result-object v0

    invoke-virtual {p1}, Lau/b;->aH()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lau/o;->a([I)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/D;->i(Lau/b;)V

    invoke-virtual {p1}, Lau/b;->z()I

    move-result v0

    if-ne v0, v3, :cond_44

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->X()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->i()Lcom/google/googlenav/ui/wizard/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bu;->a()V

    :cond_3e
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0, p1}, LaY/Y;->c(Lau/b;)V

    :goto_43
    return-void

    :cond_44
    invoke-virtual {p1}, Lau/b;->A()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-virtual {p1}, Lau/b;->k()I

    move-result v0

    invoke-virtual {p1, v0}, Lau/b;->u(I)V

    invoke-virtual {p1}, Lau/b;->B()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-static {}, LaY/G;->bt()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-virtual {p1}, Lau/b;->aT()Lau/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hS;->W()Z

    move-result v1

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hS;->h()Lcom/google/googlenav/ui/wizard/br;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/br;->a()V

    :cond_7a
    const/16 v1, 0x4c7

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lau/b;->aV()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lau/b;->aV()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lau/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/D;->a(Lau/b;)V

    goto :goto_43

    :cond_9b
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/D;->c(Lau/b;)V

    goto :goto_43

    :cond_9f
    invoke-virtual {p1}, Lau/b;->m()Z

    move-result v0

    if-eqz v0, :cond_cb

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->h()V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/hM;->a(Lau/b;)V

    :cond_af
    :goto_af
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->az:Lcom/google/googlenav/ui/aL;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aL;->g()LaR/i;

    move-result-object v0

    invoke-virtual {p1}, Lau/b;->ay()LaJ/B;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, LaR/i;->a(LaJ/B;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->az:Lcom/google/googlenav/ui/aL;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aL;->g()LaR/i;

    move-result-object v0

    invoke-virtual {p1}, Lau/b;->aE()LaJ/B;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, LaR/i;->a(LaJ/B;ILjava/lang/String;)V

    goto/16 :goto_43

    :cond_cb
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->X()Z

    move-result v0

    if-eqz v0, :cond_e4

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->i()Lcom/google/googlenav/ui/wizard/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bu;->a()V

    :cond_e4
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->V()Z

    move-result v0

    if-eqz v0, :cond_fd

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->e()Lcom/google/googlenav/ui/wizard/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/be;->a()V

    :cond_fd
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/D;->e(Lau/b;)LaY/G;

    move-result-object v0

    if-eqz v0, :cond_af

    invoke-virtual {v0, p1}, LaY/G;->c(Lcom/google/googlenav/E;)V

    goto :goto_af
.end method

.method public b(Lau/k;)V
    .registers 3

    instance-of v0, p1, Lau/b;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    check-cast p1, Lau/b;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/hM;->c(Lau/b;)V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    check-cast p1, Lau/j;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/hM;->a(Lau/j;)V

    goto :goto_b
.end method

.method public b(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Lcom/google/googlenav/bk;

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, LaY/Y;->a(Lcom/google/googlenav/bk;BZ[Ljava/lang/String;)LaY/x;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->av:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->v:Lcom/google/googlenav/ui/aM;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/aM;->a(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public b(Z)V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->i()Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->O()V

    goto :goto_a

    :cond_11
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->B()LaY/K;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/D;->a(LaY/i;)V

    goto :goto_a
.end method

.method public b(Laq/b;)Z
    .registers 5

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/googlenav/ui/D;->i:Z

    if-eqz v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aQ()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->E()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p1}, Laq/b;->d()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_15
    invoke-virtual {p1}, Laq/b;->d()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->O:Lcom/google/googlenav/ui/ac;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/ac;->a(Laq/b;)V

    :cond_20
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/D;->e(Laq/b;)V

    const/4 v0, 0x0

    :try_start_24
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/D;->f(Laq/b;)Z

    move-result v0

    invoke-virtual {p1}, Laq/b;->d()Z

    move-result v1

    if-nez v1, :cond_3e

    iput-object p1, p0, Lcom/google/googlenav/ui/D;->o:Laq/b;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->c()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlenav/ui/D;->J:J

    :cond_3e
    iget-object v1, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/av;->b()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->n()V
    :try_end_46
    .catch Ljava/lang/OutOfMemoryError; {:try_start_24 .. :try_end_46} :catch_47

    goto :goto_5

    :catch_47
    move-exception v1

    invoke-static {}, Laf/l;->b()V

    goto :goto_5
.end method

.method public b_(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->f()LaJ/H;

    move-result-object v0

    invoke-virtual {v0}, LaJ/H;->g()Z

    move-result v0

    if-ne p1, v0, :cond_d

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    invoke-virtual {v1}, LaJ/p;->b()LaJ/H;

    move-result-object v1

    invoke-virtual {v1, p1}, LaJ/H;->a(Z)LaJ/H;

    move-result-object v1

    invoke-virtual {v0, v1}, LaJ/p;->a(LaJ/H;)V

    goto :goto_c
.end method

.method public c(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0, p1}, LaY/Y;->e(I)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->O()V

    return-void
.end method

.method public c(LaJ/B;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/hM;->a(LaJ/B;)V

    return-void
.end method

.method public c(LaY/az;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, v1, p1}, LaY/Y;->a(Lcom/google/googlenav/ui/wizard/hM;LaY/az;)V

    return-void
.end method

.method public c(Lau/b;)V
    .registers 3

    invoke-virtual {p1}, Lau/b;->t()V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/hM;->e(Lau/b;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    const/16 v1, 0x14a

    invoke-virtual {v0, v1, p1}, LaY/Y;->a(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->O()V

    return-void
.end method

.method public c(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ab:LaM/a;

    invoke-virtual {v0, p1}, LaM/a;->a(Z)V

    return-void
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->f()LaJ/H;

    move-result-object v0

    invoke-virtual {v0}, LaJ/H;->g()Z

    move-result v0

    return v0
.end method

.method c(Laq/b;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/D;->g(Laq/b;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/D;->h(Laq/b;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public c(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0, p1}, LaY/Y;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->A:LaE/h;

    invoke-virtual {v0}, LaE/h;->m()Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_9
    return-void

    :cond_a
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_44

    goto :goto_9

    :pswitch_f
    iget-boolean v1, p0, Lcom/google/googlenav/ui/D;->an:Z

    if-eqz v1, :cond_1b

    iput-boolean v2, p0, Lcom/google/googlenav/ui/D;->an:Z

    const/16 v0, 0x4e6

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :cond_1b
    :goto_1b
    if-eqz v0, :cond_20

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    :cond_20
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->F()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->n()V

    goto :goto_9

    :pswitch_29
    iget-boolean v1, p0, Lcom/google/googlenav/ui/D;->ao:Z

    if-eqz v1, :cond_1b

    iput-boolean v2, p0, Lcom/google/googlenav/ui/D;->ao:Z

    const/16 v0, 0x323

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :pswitch_36
    iget-boolean v1, p0, Lcom/google/googlenav/ui/D;->ap:Z

    if-eqz v1, :cond_1b

    iput-boolean v2, p0, Lcom/google/googlenav/ui/D;->ap:Z

    const/16 v0, 0x417

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

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

.method public d(Lau/b;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0, p1}, LaY/Y;->c(Lau/b;)V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->y()LaY/aT;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, LaY/aT;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, p0, p1}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/D;Ljava/lang/String;)V

    return-void
.end method

.method public d(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/D;->aA:Z

    return-void
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->N:Z

    return v0
.end method

.method public e(Lau/b;)LaY/G;
    .registers 3

    invoke-static {}, LaY/G;->bt()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0, p1}, LaY/Y;->b(Lau/b;)LaY/G;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0, p1}, LaY/Y;->a(Lau/b;)LaY/G;

    move-result-object v0

    goto :goto_c
.end method

.method public e(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/D;->j(Ljava/lang/String;)Lcom/google/googlenav/ah;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-virtual {v0}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v2, v1}, LaJ/u;->c(LaJ/B;)V

    :cond_14
    new-array v1, v4, [Lcom/google/googlenav/ah;

    aput-object v0, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/D;->a(Ljava/util/List;Lcom/google/googlenav/bb;)Lcom/google/googlenav/aV;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v1, v0, v4}, LaY/Y;->a(Lcom/google/googlenav/aV;Z)LaY/aG;

    move-result-object v0

    invoke-virtual {v0}, LaY/aG;->as()Lcom/google/googlenav/E;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/google/googlenav/E;->a(I)V

    invoke-virtual {v0}, LaY/aG;->ao()Z

    goto :goto_8
.end method

.method public e(Z)V
    .registers 3

    invoke-static {}, LaN/b;->z()LaN/b;

    move-result-object v0

    invoke-virtual {v0}, LaN/b;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->aE:Lcom/google/googlenav/ui/ak;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/ak;->a(Z)V

    goto :goto_a
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->B()LaY/K;

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

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->W()V

    return-void
.end method

.method public f(Lau/b;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/hM;->d(Lau/b;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/google/googlenav/aV;

    new-instance v1, Lcom/google/googlenav/bc;

    invoke-direct {v1}, Lcom/google/googlenav/bc;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->b(I)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/aV;-><init>(Lcom/google/googlenav/bb;LaJ/u;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method public f(Z)V
    .registers 5

    if-eqz p1, :cond_15

    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v0

    const-string v1, "LayerTransit"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/f;->c(Ljava/lang/String;)Lcom/google/googlenav/layer/m;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, LaY/Y;->a(Lcom/google/googlenav/layer/m;Z)LaY/t;

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    const-string v2, "LayerTransit"

    invoke-virtual {v1, v2}, LaY/Y;->c(Ljava/lang/String;)LaY/i;

    move-result-object v1

    invoke-virtual {v0, v1}, LaY/Y;->f(LaY/i;)V

    goto :goto_14
.end method

.method public g()Lar/k;
    .registers 6

    const/4 v1, 0x0

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x6

    new-array v3, v0, [Lar/m;

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->Q:Lcom/google/googlenav/ui/A;

    aput-object v0, v3, v1

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->a()LaJ/D;

    move-result-object v0

    :goto_17
    aput-object v0, v3, v4

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    aput-object v4, v3, v0

    const/4 v0, 0x3

    invoke-static {}, Lcom/google/googlenav/aA;->a()Lcom/google/googlenav/aA;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x5

    iget-object v4, p0, Lcom/google/googlenav/ui/D;->aB:Lay/p;

    aput-object v4, v3, v0

    move v0, v1

    :goto_32
    array-length v4, v3

    if-ge v0, v4, :cond_45

    aget-object v4, v3, v0

    if-eqz v4, :cond_40

    invoke-interface {v4}, Lar/m;->g()Lar/k;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_43
    const/4 v0, 0x0

    goto :goto_17

    :cond_45
    new-instance v0, Lar/k;

    const-string v3, "GMM memory usage"

    invoke-direct {v0, v3, v1, v2}, Lar/k;-><init>(Ljava/lang/String;ILjava/util/List;)V

    return-object v0
.end method

.method public g(Lau/b;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/hM;->b(Lau/b;)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;)V

    return-void
.end method

.method public g(Z)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/D;->o:Laq/b;

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/googlenav/ui/D;->l:Z

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/D;->l(Z)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->W()V
    :try_end_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    invoke-static {}, Laf/l;->b()V

    goto :goto_c
.end method

.method public h()Lcom/google/googlenav/D;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->X()Lcom/google/googlenav/D;

    move-result-object v0

    return-object v0
.end method

.method public h(Lau/b;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->g()Lcom/google/googlenav/ui/wizard/bq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/bq;->a(Lau/b;)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->j()LaY/aT;

    move-result-object v0

    invoke-virtual {v0, p1}, LaY/aT;->c(Ljava/lang/String;)V

    return-void
.end method

.method public h(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/D;->aD:Z

    return-void
.end method

.method public i()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->g:Lcom/google/googlenav/android/ac;

    new-instance v2, Lcom/google/googlenav/ui/M;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/M;-><init>(Lcom/google/googlenav/ui/D;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->j()LaY/aT;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LaY/aT;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public i(Z)V
    .registers 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->i:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iput-boolean v1, p0, Lcom/google/googlenav/ui/D;->i:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->aq()Lap/c;

    move-result-object v0

    invoke-virtual {v0}, Lap/c;->e()V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->u:Lcom/google/googlenav/ui/bQ;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->u:Lcom/google/googlenav/ui/bQ;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bQ;->e()V

    :cond_18
    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->U()V

    if-eqz p1, :cond_20

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/D;->j(Z)V

    :cond_20
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->M:Lcom/google/googlenav/ui/af;

    invoke-interface {v0}, Lcom/google/googlenav/ui/af;->c()V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    invoke-virtual {v0, p1}, LaJ/p;->a(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->c()V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->B:LaJ/V;

    invoke-virtual {v0}, LaJ/V;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->C:LaJ/k;

    invoke-virtual {v0}, LaJ/k;->d()V

    invoke-static {}, Lax/aa;->k()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-static {}, Lax/aa;->h()Lax/aa;

    move-result-object v0

    invoke-virtual {v0, p0}, Lax/aa;->b(Lcom/google/googlenav/login/i;)V

    :cond_46
    invoke-static {}, Lax/au;->k()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-static {}, Lax/au;->h()Lax/au;

    move-result-object v0

    invoke-virtual {v0, p0}, Lax/au;->b(Lcom/google/googlenav/login/i;)V

    :cond_53
    invoke-static {p0}, Laf/l;->c(Laf/j;)V

    goto :goto_5
.end method

.method public j()LaY/aT;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->y()LaY/aT;

    move-result-object v0

    return-object v0
.end method

.method public j(Z)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_16

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bw;->aa()Lcom/google/googlenav/ui/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/x;->f()V

    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/layer/f;->i()V

    :cond_16
    iget-object v2, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v2}, LaY/Y;->M()V

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    iget-object v3, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v3}, LaJ/u;->f()LaJ/H;

    move-result-object v3

    invoke-virtual {v2, v3}, LaJ/p;->a(LaJ/H;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    invoke-virtual {v2}, LaJ/p;->f()V

    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v2

    if-eqz v2, :cond_38

    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v2

    invoke-virtual {v2}, LaM/e;->f()V

    :cond_38
    iget-object v2, p0, Lcom/google/googlenav/ui/D;->az:Lcom/google/googlenav/ui/aL;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aL;->g()LaR/i;

    move-result-object v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->az:Lcom/google/googlenav/ui/aL;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aL;->g()LaR/i;

    move-result-object v2

    invoke-interface {v2}, LaR/i;->b()V

    :cond_49
    iget-object v2, p0, Lcom/google/googlenav/ui/D;->r:Lak/m;

    const-string v3, "TRAFFIC_ON"

    new-array v4, v0, [B

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->d()Z

    move-result v5

    if-eqz v5, :cond_64

    :goto_55
    int-to-byte v0, v0

    aput-byte v0, v4, v1

    invoke-interface {v2, v3, v4}, Lak/m;->a(Ljava/lang/String;[B)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->r:Lak/m;

    invoke-interface {v0}, Lak/m;->a()V

    invoke-static {}, Laf/m;->f()V

    return-void

    :cond_64
    move v0, v1

    goto :goto_55
.end method

.method public k()Lay/p;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->aB:Lay/p;

    if-nez v0, :cond_f

    new-instance v0, Lay/p;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->g:Lcom/google/googlenav/android/ac;

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->aa:Lap/c;

    invoke-direct {v0, v1, v2}, Lay/p;-><init>(Lcom/google/googlenav/android/ac;Lap/c;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/D;->aB:Lay/p;

    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->aB:Lay/p;

    return-object v0
.end method

.method public declared-synchronized k(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->i:Z

    if-nez v0, :cond_43

    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->h:Z

    if-nez v0, :cond_43

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aL()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/D;->h:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->B:LaJ/V;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->B:LaJ/V;

    invoke-virtual {v0}, LaJ/V;->d()V

    :cond_18
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->x()V

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->q()V

    :cond_2a
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->h()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aX()V

    if-eqz p1, :cond_37

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->aB()V

    :cond_37
    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aV()V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->c:LaO/a;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->c:LaO/a;

    invoke-virtual {v0}, LaO/a;->b()V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    :cond_43
    monitor-exit p0

    return-void

    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public l()LaR/i;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->az:Lcom/google/googlenav/ui/aL;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aL;->g()LaR/i;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized l(Z)V
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/googlenav/ui/D;->aw:Ljava/lang/Boolean;

    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->h:Z

    if-eqz v0, :cond_89

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->R()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/D;->G:I

    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    invoke-static {v0}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->W:Lcom/google/googlenav/ui/at;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/at;->H()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aQ()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/D;->l:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/D;->h:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->B:LaJ/V;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->B:LaJ/V;

    invoke-virtual {v0}, LaJ/V;->c()V

    :cond_2a
    if-nez p1, :cond_2f

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aY()V

    :cond_2f
    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->r()V

    :cond_3c
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->z:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->i()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aX()V

    const/4 v0, 0x0

    new-instance v1, Lcom/google/googlenav/ui/F;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/D;->g:Lcom/google/googlenav/android/ac;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/googlenav/ui/F;-><init>(Lcom/google/googlenav/ui/D;Lap/c;Lcom/google/googlenav/android/ac;Z)V

    iput-object v1, p0, Lcom/google/googlenav/ui/D;->j:Lap/d;

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->j:Lap/d;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lap/d;->c(J)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->j:Lap/d;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lap/d;->a(J)V

    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/googlenav/ui/G;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/G;-><init>(Lcom/google/googlenav/ui/D;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->y()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->g:Lcom/google/googlenav/android/ac;

    new-instance v2, Lcom/google/googlenav/ui/H;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/H;-><init>(Lcom/google/googlenav/ui/D;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->bc()Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aU()V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->c:LaO/a;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->c:LaO/a;

    invoke-virtual {v0}, LaO/a;->a()V

    :cond_89
    sget-object v0, Lcom/google/googlenav/z;->c:Lcom/google/googlenav/z;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->aa:Lap/c;

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lap/c;)V
    :try_end_90
    .catchall {:try_start_2 .. :try_end_90} :catchall_92

    monitor-exit p0

    return-void

    :catchall_92
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public m()LaY/a;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0}, LaY/Y;->ac()LaY/a;

    move-result-object v0

    return-object v0
.end method

.method public m(Z)V
    .registers 3

    if-nez p1, :cond_b

    const/16 v0, 0x252

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->al()V

    return-void
.end method

.method public n()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->y()Z

    move-result v0

    if-eqz v0, :cond_44

    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    invoke-static {v0}, Lcom/google/googlenav/u;->c(Lcom/google/googlenav/z;)Z

    move-result v0

    if-eqz v0, :cond_13

    :goto_12
    return-void

    :cond_13
    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aO()V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->aN()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->m()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v1

    if-nez v1, :cond_3e

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, LaY/i;->aa()Z

    move-result v1

    if-nez v1, :cond_39

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3e

    :cond_39
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->G()Z

    :cond_3e
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->H()V

    goto :goto_12

    :cond_44
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->f:Lcom/google/googlenav/ui/android/z;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/z;->n()V

    goto :goto_12
.end method

.method public n(Z)V
    .registers 4

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->M()V

    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->q:Lcom/google/googlenav/ay;

    invoke-static {p1}, LaN/a;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ay;->b(Ljava/lang/String;)V

    return-void
.end method

.method public o()V
    .registers 1

    return-void
.end method

.method public o(Z)V
    .registers 10

    const-wide/16 v6, 0x1f4

    iput-boolean p1, p0, Lcom/google/googlenav/ui/D;->U:Z

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    if-eqz p1, :cond_18

    const-wide/16 v2, 0x5dc

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/googlenav/ui/D;->F:J

    :cond_17
    :goto_17
    return-void

    :cond_18
    iget-wide v2, p0, Lcom/google/googlenav/ui/D;->F:J

    add-long v4, v0, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_17

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/google/googlenav/ui/D;->F:J

    goto :goto_17
.end method

.method public p()Lax/bD;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->w:Lax/bD;

    return-object v0
.end method

.method public p(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, LaY/i;->Z()V

    :cond_e
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->m()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->a()V

    :cond_19
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->q:Lcom/google/googlenav/ay;

    invoke-interface {v0}, Lcom/google/googlenav/ay;->f()V

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->a()V

    :cond_27
    return-void
.end method

.method public q()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->aw()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    new-instance v0, Lcom/google/googlenav/ui/X;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/X;-><init>(Lcom/google/googlenav/ui/D;Lcom/google/googlenav/ui/E;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/D;->aj:Lcom/google/googlenav/ui/X;

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->aj:Lcom/google/googlenav/ui/X;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/g;->c(Lcom/google/googlenav/login/h;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->e()V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->i()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-static {}, Lax/aa;->h()Lax/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0, v1}, Lax/aa;->a(LaY/Y;)V

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/g;->c(Lcom/google/googlenav/login/h;)V

    invoke-virtual {v0, p0}, Lax/aa;->a(Lcom/google/googlenav/login/i;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->w:Lax/bD;

    invoke-virtual {v0, v1}, Lax/aa;->a(Lcom/google/googlenav/login/i;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->x:Lax/r;

    invoke-virtual {v0, v1}, Lax/aa;->a(Lcom/google/googlenav/login/i;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->s:Lcom/google/googlenav/ui/av;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/av;->f()V

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->y:Lax/k;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->y:Lax/k;

    invoke-virtual {v0, v1}, Lax/aa;->a(Lcom/google/googlenav/login/i;)V

    :cond_56
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->j()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lax/au;->h()Lax/au;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/g;->c(Lcom/google/googlenav/login/h;)V

    invoke-virtual {v0, p0}, Lax/au;->a(Lcom/google/googlenav/login/i;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->y:Lax/k;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->y:Lax/k;

    invoke-virtual {v0, v1}, Lax/au;->a(Lcom/google/googlenav/login/i;)V

    goto :goto_a
.end method

.method public q(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->az:Lcom/google/googlenav/ui/aL;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aL;->a(Z)V

    return-void
.end method

.method public r()LaJ/u;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    return-object v0
.end method

.method public r(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/D;->av:Z

    return-void
.end method

.method public s()V
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/D;->m:I

    iget v1, p0, Lcom/google/googlenav/ui/D;->n:I

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/D;->a(II)V

    return-void
.end method

.method public t()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->af()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->M:Lcom/google/googlenav/ui/af;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->W:Lcom/google/googlenav/ui/at;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/af;->a(Lcom/google/googlenav/ui/ag;)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->M:Lcom/google/googlenav/ui/af;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->W:Lcom/google/googlenav/ui/at;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/af;->b(Lcom/google/googlenav/ui/ag;)V

    goto :goto_11
.end method

.method public u()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/D;)V

    return-void
.end method

.method public v()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->aA:Z

    return v0
.end method

.method public w()V
    .registers 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/D;->aA:Z

    if-eqz v0, :cond_44

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->bc()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {v0}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v0}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/E;->d()B

    move-result v2

    invoke-interface {v1}, Lcom/google/googlenav/E;->c()I

    move-result v3

    invoke-virtual {v0}, LaY/i;->aZ()V

    invoke-virtual {v0, v2}, LaY/i;->b(B)V

    invoke-interface {v1, v3}, Lcom/google/googlenav/E;->a(I)V

    invoke-virtual {v0}, LaY/i;->aY()V

    :cond_32
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->m()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->Z_()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->W_()V

    goto :goto_b

    :cond_44
    iput v1, p0, Lcom/google/googlenav/ui/D;->G:I

    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    invoke-static {v0}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_4e
    iget-object v3, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v3, v0, v1, v2}, LaY/Y;->a(ZZZ)V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ac:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->r()V

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->ad:LaY/Y;

    invoke-virtual {v0}, LaY/Y;->N()V

    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/googlenav/ui/Q;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/Q;-><init>(Lcom/google/googlenav/ui/D;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/googlenav/ui/R;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/R;-><init>(Lcom/google/googlenav/ui/D;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/D;->bc()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/D;->aA:Z
    :try_end_77
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_77} :catch_78

    goto :goto_b

    :catch_78
    move-exception v0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->n()Lak/m;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v1, v2}, Lak/m;->c(Ljava/lang/String;)V

    const-string v1, "GmmController-loadSavedState"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public x()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->D:Lcom/google/googlenav/j;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/j;->a([I)V

    return-void

    :array_c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public y()V
    .registers 6

    invoke-static {}, LaV/n;->a()LaV/n;

    move-result-object v0

    invoke-virtual {v0}, LaV/n;->c()Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    new-instance v0, Lcom/google/googlenav/layer/k;

    iget-object v1, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v1}, LaJ/u;->f()LaJ/H;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->a()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/D;->au:LaJ/u;

    invoke-virtual {v3}, LaJ/u;->b()I

    move-result v3

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/layer/k;-><init>(LaJ/H;IILjava/lang/String;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V

    goto :goto_a
.end method

.method public z()LaR/g;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/D;->az:Lcom/google/googlenav/ui/aL;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aL;->h()LaR/g;

    move-result-object v0

    return-object v0
.end method
