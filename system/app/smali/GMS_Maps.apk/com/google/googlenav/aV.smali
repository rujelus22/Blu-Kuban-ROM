.class public Lcom/google/googlenav/aV;
.super Lat/a;

# interfaces
.implements Lcom/google/googlenav/E;


# static fields
.field private static final A:Lar/u;

.field private static final V:LK/bn;

.field public static a:Z

.field private static b:Z

.field private static c:I


# instance fields
.field private B:I

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Z

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Lcom/google/googlenav/layer/m;

.field private K:Lcom/google/googlenav/layer/a;

.field private L:Z

.field private M:[I

.field private final N:Ljava/util/HashSet;

.field private O:Z

.field private P:[Lcom/google/googlenav/ah;

.field private Q:I

.field private R:Lcom/google/googlenav/aX;

.field private S:J

.field private T:[Ljava/lang/String;

.field private U:I

.field private W:[Lcom/google/googlenav/aY;

.field private X:[Lcom/google/googlenav/ba;

.field private Y:[LaQ/I;

.field private Z:Z

.field private aa:Lam/b;

.field private ab:I

.field private d:[Lcom/google/googlenav/ah;

.field private e:[I

.field private f:Lcom/google/googlenav/bb;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Lam/b;

.field private o:I

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:LaJ/H;

.field private s:LaJ/B;

.field private t:I

.field private u:I

.field private volatile v:Z

.field private w:I

.field private x:Ljava/lang/String;

.field private y:I

.field private z:B


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    sput-boolean v4, Lcom/google/googlenav/aV;->a:Z

    sput-boolean v4, Lcom/google/googlenav/aV;->b:Z

    const/4 v0, -0x1

    sput v0, Lcom/google/googlenav/aV;->c:I

    new-instance v0, Lar/u;

    const-string v1, "search"

    const-string v2, "s"

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lar/u;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/aV;->A:Lar/u;

    new-instance v0, LK/bo;

    invoke-direct {v0}, LK/bo;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, LK/bo;->b(Ljava/lang/Object;)LK/bo;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, LK/bo;->b(Ljava/lang/Object;)LK/bo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, LK/bo;->b(Ljava/lang/Object;)LK/bo;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, LK/bo;->b(Ljava/lang/Object;)LK/bo;

    invoke-virtual {v0}, LK/bo;->a()LK/bn;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/aV;->V:LK/bn;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lat/a;-><init>()V

    new-array v0, v2, [Lcom/google/googlenav/ah;

    iput-object v0, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/aV;->e:[I

    new-instance v0, Lcom/google/googlenav/bc;

    invoke-direct {v0}, Lcom/google/googlenav/bc;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iput-boolean v2, p0, Lcom/google/googlenav/aV;->m:Z

    iput v3, p0, Lcom/google/googlenav/aV;->o:I

    iput-boolean v2, p0, Lcom/google/googlenav/aV;->p:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/aV;->q:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/googlenav/aV;->v:Z

    iput v3, p0, Lcom/google/googlenav/aV;->y:I

    iput-byte v2, p0, Lcom/google/googlenav/aV;->z:B

    iput-boolean v2, p0, Lcom/google/googlenav/aV;->G:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/aV;->H:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/aV;->I:Ljava/lang/String;

    sget-object v0, Lcom/google/googlenav/layer/m;->a:Lcom/google/googlenav/layer/m;

    iput-object v0, p0, Lcom/google/googlenav/aV;->J:Lcom/google/googlenav/layer/m;

    iput-boolean v2, p0, Lcom/google/googlenav/aV;->L:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/aV;->N:Ljava/util/HashSet;

    iput-boolean v2, p0, Lcom/google/googlenav/aV;->O:Z

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/googlenav/aV;->S:J

    iput v3, p0, Lcom/google/googlenav/aV;->U:I

    iput-boolean v2, p0, Lcom/google/googlenav/aV;->Z:Z

    iput v3, p0, Lcom/google/googlenav/aV;->ab:I

    iput v2, p0, Lcom/google/googlenav/aV;->B:I

    return-void
.end method

.method private constructor <init>(Lcom/google/googlenav/aV;ILcom/google/googlenav/aX;)V
    .registers 8

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lat/a;-><init>()V

    new-array v0, v2, [Lcom/google/googlenav/ah;

    iput-object v0, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/aV;->e:[I

    new-instance v0, Lcom/google/googlenav/bc;

    invoke-direct {v0}, Lcom/google/googlenav/bc;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iput-boolean v2, p0, Lcom/google/googlenav/aV;->m:Z

    iput v3, p0, Lcom/google/googlenav/aV;->o:I

    iput-boolean v2, p0, Lcom/google/googlenav/aV;->p:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/aV;->q:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/googlenav/aV;->v:Z

    iput v3, p0, Lcom/google/googlenav/aV;->y:I

    iput-byte v2, p0, Lcom/google/googlenav/aV;->z:B

    iput-boolean v2, p0, Lcom/google/googlenav/aV;->G:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/aV;->H:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/aV;->I:Ljava/lang/String;

    sget-object v0, Lcom/google/googlenav/layer/m;->a:Lcom/google/googlenav/layer/m;

    iput-object v0, p0, Lcom/google/googlenav/aV;->J:Lcom/google/googlenav/layer/m;

    iput-boolean v2, p0, Lcom/google/googlenav/aV;->L:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/aV;->N:Ljava/util/HashSet;

    iput-boolean v2, p0, Lcom/google/googlenav/aV;->O:Z

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/googlenav/aV;->S:J

    iput v3, p0, Lcom/google/googlenav/aV;->U:I

    iput-boolean v2, p0, Lcom/google/googlenav/aV;->Z:Z

    iput v3, p0, Lcom/google/googlenav/aV;->ab:I

    sget-object v0, Lcom/google/googlenav/aV;->A:Lar/u;

    invoke-virtual {v0}, Lar/u;->a()V

    iget-object v0, p1, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iput-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iput p2, p0, Lcom/google/googlenav/aV;->B:I

    iget-object v0, p1, Lcom/google/googlenav/aV;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/aV;->g:Ljava/lang/String;

    iget v0, p1, Lcom/google/googlenav/aV;->h:I

    iput v0, p0, Lcom/google/googlenav/aV;->h:I

    iget-object v0, p1, Lcom/google/googlenav/aV;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/aV;->i:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/googlenav/aV;->H:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/aV;->H:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/googlenav/aV;->I:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/aV;->I:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/googlenav/aV;->r:LaJ/H;

    iput-object v0, p0, Lcom/google/googlenav/aV;->r:LaJ/H;

    iget v0, p1, Lcom/google/googlenav/aV;->u:I

    iput v0, p0, Lcom/google/googlenav/aV;->u:I

    iget v0, p1, Lcom/google/googlenav/aV;->t:I

    iput v0, p0, Lcom/google/googlenav/aV;->t:I

    iput-object p3, p0, Lcom/google/googlenav/aV;->R:Lcom/google/googlenav/aX;

    iget-boolean v0, p1, Lcom/google/googlenav/aV;->O:Z

    iput-boolean v0, p0, Lcom/google/googlenav/aV;->O:Z

    iget-boolean v0, p1, Lcom/google/googlenav/aV;->p:Z

    iput-boolean v0, p0, Lcom/google/googlenav/aV;->p:Z

    iget-object v0, p1, Lcom/google/googlenav/aV;->C:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/aV;->C:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/googlenav/aV;->J:Lcom/google/googlenav/layer/m;

    iput-object v0, p0, Lcom/google/googlenav/aV;->J:Lcom/google/googlenav/layer/m;

    iget-boolean v0, p1, Lcom/google/googlenav/aV;->m:Z

    iput-boolean v0, p0, Lcom/google/googlenav/aV;->m:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/aV;->L:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/bb;LaJ/u;)V
    .registers 7

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lat/a;-><init>()V

    new-array v0, v2, [Lcom/google/googlenav/ah;

    iput-object v0, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/aV;->e:[I

    new-instance v0, Lcom/google/googlenav/bc;

    invoke-direct {v0}, Lcom/google/googlenav/bc;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iput-boolean v2, p0, Lcom/google/googlenav/aV;->m:Z

    iput v3, p0, Lcom/google/googlenav/aV;->o:I

    iput-boolean v2, p0, Lcom/google/googlenav/aV;->p:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/aV;->q:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/googlenav/aV;->v:Z

    iput v3, p0, Lcom/google/googlenav/aV;->y:I

    iput-byte v2, p0, Lcom/google/googlenav/aV;->z:B

    iput-boolean v2, p0, Lcom/google/googlenav/aV;->G:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/aV;->H:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/aV;->I:Ljava/lang/String;

    sget-object v0, Lcom/google/googlenav/layer/m;->a:Lcom/google/googlenav/layer/m;

    iput-object v0, p0, Lcom/google/googlenav/aV;->J:Lcom/google/googlenav/layer/m;

    iput-boolean v2, p0, Lcom/google/googlenav/aV;->L:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/aV;->N:Ljava/util/HashSet;

    iput-boolean v2, p0, Lcom/google/googlenav/aV;->O:Z

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/googlenav/aV;->S:J

    iput v3, p0, Lcom/google/googlenav/aV;->U:I

    iput-boolean v2, p0, Lcom/google/googlenav/aV;->Z:Z

    iput v3, p0, Lcom/google/googlenav/aV;->ab:I

    sget-object v0, Lcom/google/googlenav/aV;->A:Lar/u;

    invoke-virtual {v0}, Lar/u;->a()V

    iput-object p1, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget v0, p1, Lcom/google/googlenav/bb;->r:I

    iput v0, p0, Lcom/google/googlenav/aV;->B:I

    iget-object v0, p1, Lcom/google/googlenav/bb;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/aV;->g:Ljava/lang/String;

    iget v0, p1, Lcom/google/googlenav/bb;->b:I

    iput v0, p0, Lcom/google/googlenav/aV;->h:I

    iget-object v0, p1, Lcom/google/googlenav/bb;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/aV;->i:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/googlenav/bb;->f:LaJ/H;

    if-nez v0, :cond_a4

    invoke-virtual {p2}, LaJ/u;->f()LaJ/H;

    move-result-object v0

    :goto_69
    iput-object v0, p0, Lcom/google/googlenav/aV;->r:LaJ/H;

    if-eqz p2, :cond_ad

    iget v0, p1, Lcom/google/googlenav/bb;->d:I

    if-ne v0, v3, :cond_a7

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->h()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/aV;->r:LaJ/H;

    invoke-virtual {p2, v0, v1}, LaJ/u;->a(ILaJ/H;)I

    move-result v0

    :goto_7f
    iput v0, p0, Lcom/google/googlenav/aV;->t:I

    iget v0, p1, Lcom/google/googlenav/bb;->e:I

    if-ne v0, v3, :cond_aa

    iget-object v0, p0, Lcom/google/googlenav/aV;->r:LaJ/H;

    invoke-virtual {p2, v0}, LaJ/u;->b(LaJ/H;)I

    move-result v0

    :goto_8b
    iput v0, p0, Lcom/google/googlenav/aV;->u:I

    :goto_8d
    iget-object v0, p1, Lcom/google/googlenav/bb;->i:Lcom/google/googlenav/aX;

    iput-object v0, p0, Lcom/google/googlenav/aV;->R:Lcom/google/googlenav/aX;

    iget-boolean v0, p1, Lcom/google/googlenav/bb;->o:Z

    if-nez v0, :cond_9f

    iget-object v0, p0, Lcom/google/googlenav/aV;->g:Ljava/lang/String;

    const-string v1, " loc:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_a3

    :cond_9f
    iget-boolean v0, p1, Lcom/google/googlenav/bb;->o:Z

    iput-boolean v0, p0, Lcom/google/googlenav/aV;->O:Z

    :cond_a3
    return-void

    :cond_a4
    iget-object v0, p1, Lcom/google/googlenav/bb;->f:LaJ/H;

    goto :goto_69

    :cond_a7
    iget v0, p1, Lcom/google/googlenav/bb;->d:I

    goto :goto_7f

    :cond_aa
    iget v0, p1, Lcom/google/googlenav/bb;->e:I

    goto :goto_8b

    :cond_ad
    iput v2, p0, Lcom/google/googlenav/aV;->t:I

    iput v2, p0, Lcom/google/googlenav/aV;->u:I

    goto :goto_8d
.end method

.method public static a([Lcom/google/googlenav/ah;LaJ/H;II)Lcom/google/googlenav/aV;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/googlenav/aV;->a([Lcom/google/googlenav/ah;LaJ/H;IILcom/google/googlenav/bb;)Lcom/google/googlenav/aV;

    move-result-object v0

    return-object v0
.end method

.method public static a([Lcom/google/googlenav/ah;LaJ/H;IILcom/google/googlenav/bb;)Lcom/google/googlenav/aV;
    .registers 7

    new-instance v0, Lcom/google/googlenav/aV;

    invoke-direct {v0}, Lcom/google/googlenav/aV;-><init>()V

    iput-object p1, v0, Lcom/google/googlenav/aV;->r:LaJ/H;

    iput p2, v0, Lcom/google/googlenav/aV;->t:I

    iput p3, v0, Lcom/google/googlenav/aV;->u:I

    array-length v1, p0

    iput v1, v0, Lcom/google/googlenav/aV;->o:I

    iput-object p0, v0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    invoke-direct {v0}, Lcom/google/googlenav/aV;->aT()V

    if-eqz p4, :cond_24

    iput-object p4, v0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-object v1, p4, Lcom/google/googlenav/bb;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/googlenav/aV;->g:Ljava/lang/String;

    iget v1, p4, Lcom/google/googlenav/bb;->b:I

    iput v1, v0, Lcom/google/googlenav/aV;->h:I

    iget-object v1, p4, Lcom/google/googlenav/bb;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/googlenav/aV;->i:Ljava/lang/String;

    :goto_23
    return-object v0

    :cond_24
    const-string v1, ""

    iput-object v1, v0, Lcom/google/googlenav/aV;->g:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/googlenav/aV;->h:I

    goto :goto_23
.end method

.method public static a([Lcom/google/googlenav/ah;Lcom/google/googlenav/bb;LaJ/u;)Lcom/google/googlenav/aV;
    .registers 4

    new-instance v0, Lcom/google/googlenav/aV;

    invoke-direct {v0, p1, p2}, Lcom/google/googlenav/aV;-><init>(Lcom/google/googlenav/bb;LaJ/u;)V

    iput-object p0, v0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    invoke-direct {v0}, Lcom/google/googlenav/aV;->aT()V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-static {p0}, Lcom/google/googlenav/aV;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    if-nez p0, :cond_3e

    const-string p0, ""

    :cond_f
    :goto_f
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " loc:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_23

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_23
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ap()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_a

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_3e
    invoke-static {p0}, Las/b;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_f
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {}, Laf/b;->w()Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, " "

    :goto_1c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    :goto_22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_27
    const-string v0, " loc:"

    goto :goto_1c

    :cond_2a
    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22
.end method

.method private aM()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-object v0, v0, Lcom/google/googlenav/bb;->w:Ljava/util/Map;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-object v0, v0, Lcom/google/googlenav/bb;->w:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private aN()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-object v0, v0, Lcom/google/googlenav/bb;->x:Ljava/util/Set;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-object v0, v0, Lcom/google/googlenav/bb;->x:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private aO()V
    .registers 8

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/16 v3, 0x10

    invoke-static {}, Lcom/google/googlenav/android/J;->g()Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_99

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1a
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_28

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_28
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "s=l"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "st="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/google/googlenav/aV;->w:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/aV;->A:Lar/u;

    invoke-virtual {v3}, Lar/u;->g()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {v2}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "stat"

    invoke-static {v6, v1, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_a

    :cond_99
    move-object v1, v0

    goto :goto_1a
.end method

.method private aP()[I
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    array-length v1, v1

    new-array v3, v1, [I

    move v1, v0

    :goto_7
    iget-object v2, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    array-length v2, v2

    if-ge v0, v2, :cond_22

    iget-object v2, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->af()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, -0x1

    aput v2, v3, v0

    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1c
    add-int/lit8 v2, v1, 0x1

    aput v1, v3, v0

    move v1, v2

    goto :goto_19

    :cond_22
    return-object v3
.end method

.method private aQ()V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/aV;->N:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    array-length v1, v1

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->c()B

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/google/googlenav/aV;->N:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->Z()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/googlenav/ax;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_25
    return-void
.end method

.method private aR()V
    .registers 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    array-length v5, v0

    new-array v0, v5, [I

    iput-object v0, p0, Lcom/google/googlenav/aV;->e:[I

    move v4, v3

    :goto_9
    if-ge v4, v5, :cond_43

    move v2, v3

    move v0, v4

    :goto_d
    if-gt v2, v4, :cond_40

    iget-object v1, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    iget-object v6, p0, Lcom/google/googlenav/aV;->e:[I

    aget v6, v6, v2

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v1

    iget-object v6, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v6

    if-eq v2, v4, :cond_33

    if-eqz v1, :cond_3c

    if-eqz v6, :cond_3c

    invoke-virtual {v1}, LaJ/B;->c()I

    move-result v1

    invoke-virtual {v6}, LaJ/B;->c()I

    move-result v6

    if-ge v1, v6, :cond_3c

    :cond_33
    iget-object v1, p0, Lcom/google/googlenav/aV;->e:[I

    aget v1, v1, v2

    iget-object v6, p0, Lcom/google/googlenav/aV;->e:[I

    aput v0, v6, v2

    move v0, v1

    :cond_3c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_d

    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_43
    return-void
.end method

.method private aS()Lam/b;
    .registers 7

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->af()Lam/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/aV;->b(Lam/b;)Lam/b;

    move-result-object v0

    new-instance v1, Lam/b;

    sget-object v2, LbD/Z;->a:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lam/b;->b(ILam/b;)V

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/googlenav/aV;->r:LaJ/H;

    invoke-virtual {v2}, LaJ/H;->a()LaJ/B;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/aV;->t:I

    iget v4, p0, Lcom/google/googlenav/aV;->u:I

    iget-object v5, p0, Lcom/google/googlenav/aV;->r:LaJ/H;

    invoke-virtual {v5}, LaJ/H;->b()LaJ/Y;

    move-result-object v5

    invoke-virtual {v5}, LaJ/Y;->a()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, LaJ/C;->a(LaJ/B;III)Lam/b;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lam/b;->b(ILam/b;)V

    const/4 v0, 0x3

    iget v2, p0, Lcom/google/googlenav/aV;->h:I

    invoke-virtual {v1, v0, v2}, Lam/b;->h(II)V

    iget-object v0, p0, Lcom/google/googlenav/aV;->i:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/googlenav/aV;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lam/b;->b(ILjava/lang/String;)V

    :cond_43
    return-object v1
.end method

.method private aT()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/aV;->U:I

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->Z()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/google/googlenav/aV;->aR()V

    invoke-direct {p0}, Lcom/google/googlenav/aV;->aP()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aV;->M:[I

    invoke-direct {p0}, Lcom/google/googlenav/aV;->aQ()V

    :cond_15
    return-void
.end method

.method public static b(Ljava/io/DataInput;)Lcom/google/googlenav/aV;
    .registers 7

    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v3, 0x1

    sget-object v0, LbD/Z;->a:Lam/e;

    invoke-static {v0, p0}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/aV;

    invoke-direct {v1}, Lcom/google/googlenav/aV;-><init>()V

    invoke-virtual {v0, v3}, Lam/b;->h(I)Lam/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/aV;->a(Lam/b;)Z

    const/4 v2, 0x3

    invoke-static {v0, v2, v5}, Lam/g;->c(Lam/b;II)I

    move-result v2

    iput v2, v1, Lcom/google/googlenav/aV;->h:I

    iput-boolean v3, v1, Lcom/google/googlenav/aV;->m:Z

    invoke-virtual {v0, v4}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {v0, v4}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/googlenav/aV;->i:Ljava/lang/String;

    :cond_2a
    iput-boolean v3, v1, Lcom/google/googlenav/aV;->v:Z

    invoke-virtual {v0, v5}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lam/b;->h(I)Lam/b;

    move-result-object v2

    new-instance v3, LaJ/H;

    invoke-static {v2}, LaJ/C;->a(Lam/b;)LaJ/B;

    move-result-object v2

    invoke-virtual {v0, v4}, Lam/b;->d(I)I

    move-result v0

    invoke-static {v0}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v3, v2, v0, v4}, LaJ/H;-><init>(LaJ/B;LaJ/Y;I)V

    iput-object v3, v1, Lcom/google/googlenav/aV;->r:LaJ/H;

    return-object v1
.end method

.method private c(Lam/b;)V
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-instance v2, Lam/b;

    sget-object v3, LbD/bx;->ae:Lam/e;

    invoke-direct {v2, v3}, Lam/b;-><init>(Lam/e;)V

    iget-object v3, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-boolean v3, v3, Lcom/google/googlenav/bb;->t:Z

    if-eqz v3, :cond_13

    invoke-virtual {v2, v0, v0}, Lam/b;->b(IZ)V

    move v0, v1

    :cond_13
    iget-object v3, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget v3, v3, Lcom/google/googlenav/bb;->C:I

    if-eqz v3, :cond_34

    new-instance v0, Lam/b;

    sget-object v3, LbF/G;->m:Lam/e;

    invoke-direct {v0, v3}, Lam/b;-><init>(Lam/e;)V

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget v4, v4, Lcom/google/googlenav/bb;->C:I

    invoke-virtual {v0, v3, v4}, Lam/b;->h(II)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Lam/b;->b(ILam/b;)V

    :goto_2c
    if-nez v1, :cond_33

    const/16 v0, 0x25

    invoke-virtual {p1, v0, v2}, Lam/b;->b(ILam/b;)V

    :cond_33
    return-void

    :cond_34
    move v1, v0

    goto :goto_2c
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private d(Lam/b;)V
    .registers 8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aV;->g:Ljava/lang/String;

    :cond_11
    const/16 v0, 0xe

    invoke-static {p1, v0}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aV;->H:Ljava/lang/String;

    const/16 v0, 0xf

    invoke-static {p1, v0}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aV;->I:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aV;->aa:Lam/b;

    iget-object v0, p0, Lcom/google/googlenav/aV;->aa:Lam/b;

    invoke-virtual {v0, v4}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0}, LaJ/C;->a(Lam/b;)LaJ/B;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aV;->s:LaJ/B;

    iget-object v0, p0, Lcom/google/googlenav/aV;->aa:Lam/b;

    invoke-virtual {v0, v5}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/aV;->t:I

    iget-object v0, p0, Lcom/google/googlenav/aV;->aa:Lam/b;

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/aV;->u:I

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    iput-boolean v3, p0, Lcom/google/googlenav/aV;->p:Z

    if-eqz v0, :cond_71

    iput-boolean v4, p0, Lcom/google/googlenav/aV;->p:Z

    invoke-static {v0, v5}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/aV;->C:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/aV;->D:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlenav/aV;->g:Ljava/lang/String;

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_69

    iget-object v1, p0, Lcom/google/googlenav/aV;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/googlenav/aV;->E:Ljava/lang/String;

    :cond_69
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aV;->F:Ljava/lang/String;

    :cond_71
    const/16 v0, 0xb

    invoke-static {p1, v0, v3}, Lam/g;->c(Lam/b;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/aV;->B:I

    const/16 v0, 0xd

    invoke-static {p1, v0, v2}, Lam/g;->c(Lam/b;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/aV;->o:I

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aV;->q:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/googlenav/aV;->e(Lam/b;)V

    sget v0, Lcom/google/googlenav/aV;->c:I

    if-ne v0, v2, :cond_a8

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->am()Z

    move-result v0

    if-eqz v0, :cond_a8

    iget v0, p0, Lcom/google/googlenav/aV;->B:I

    if-nez v0, :cond_a8

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->f()I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/aV;->o:I

    if-ge v0, v1, :cond_a8

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->f()I

    move-result v0

    sput v0, Lcom/google/googlenav/aV;->c:I

    :cond_a8
    invoke-direct {p0, p1}, Lcom/google/googlenav/aV;->f(Lam/b;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/aV;->g(Lam/b;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/aV;->h(Lam/b;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/aV;->i(Lam/b;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/aV;->j(Lam/b;)V

    return-void
.end method

.method private e(Lam/b;)V
    .registers 8

    const/16 v0, 0x8

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0}, Lam/b;->l(I)I

    move-result v2

    new-array v0, v2, [Lcom/google/googlenav/ah;

    iput-object v0, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    move v0, v1

    :goto_d
    if-ge v0, v2, :cond_61

    const/16 v3, 0x8

    :try_start_11
    invoke-virtual {p1, v3, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/ah;->a(Lam/b;)Lcom/google/googlenav/ah;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/at;->a:Lcom/google/googlenav/at;

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ah;->a(Lcom/google/googlenav/at;)V

    iget-object v4, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-boolean v4, v4, Lcom/google/googlenav/bb;->A:Z

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ah;->d(Z)V

    invoke-virtual {v3}, Lcom/google/googlenav/ah;->al()Z

    move-result v4

    if-eqz v4, :cond_53

    iget-object v4, p0, Lcom/google/googlenav/aV;->E:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ah;->g(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/googlenav/aV;->C:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ah;->h(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/googlenav/ah;->aR()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Las/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_44

    iget-object v4, p0, Lcom/google/googlenav/aV;->D:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ah;->i(Ljava/lang/String;)V

    :cond_44
    invoke-virtual {v3}, Lcom/google/googlenav/ah;->aT()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Las/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_53

    iget-object v4, p0, Lcom/google/googlenav/aV;->F:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ah;->j(Ljava/lang/String;)V

    :cond_53
    iget-object v4, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    aput-object v3, v4, v0
    :try_end_57
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_57} :catch_5a

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :catch_5a
    move-exception v0

    invoke-static {}, Laf/l;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    :cond_61
    sget-object v0, Lav/a;->a:Lav/a;

    invoke-virtual {v0}, Lav/a;->d()Z

    move-result v0

    if-eqz v0, :cond_85

    if-le v2, v5, :cond_85

    iget-object v0, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->af()Z

    move-result v0

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    aget-object v0, v0, v5

    iget-object v2, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    iget-object v3, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    aget-object v3, v3, v1

    aput-object v3, v2, v5

    iget-object v2, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    aput-object v0, v2, v1

    :cond_85
    invoke-direct {p0}, Lcom/google/googlenav/aV;->aT()V

    return-void
.end method

.method private f(Lam/b;)V
    .registers 7

    const/16 v4, 0x10

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1, v1}, Lam/b;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/aV;->l:Z

    :cond_f
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aV;->k:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aV;->j:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lam/b;->l(I)I

    move-result v1

    new-array v0, v1, [Lcom/google/googlenav/ah;

    iput-object v0, p0, Lcom/google/googlenav/aV;->P:[Lcom/google/googlenav/ah;

    const/4 v0, 0x0

    :goto_26
    if-ge v0, v1, :cond_37

    invoke-virtual {p1, v4, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ah;->a(Lam/b;)Lcom/google/googlenav/ah;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/aV;->P:[Lcom/google/googlenav/ah;

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_37
    return-void
.end method

.method private g(Lam/b;)V
    .registers 7

    const/16 v4, 0x11

    invoke-virtual {p1, v4}, Lam/b;->l(I)I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/aV;->T:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_18

    iget-object v2, p0, Lcom/google/googlenav/aV;->T:[Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Lam/b;->f(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_18
    return-void
.end method

.method private h(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/aV;->e:[I

    aget v0, v0, p1

    return v0
.end method

.method private h(Lam/b;)V
    .registers 14

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lam/b;->l(I)I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/aY;

    iput-object v0, p0, Lcom/google/googlenav/aV;->W:[Lcom/google/googlenav/aY;

    const/4 v0, 0x0

    :goto_b
    iget-object v1, p0, Lcom/google/googlenav/aV;->W:[Lcom/google/googlenav/aY;

    array-length v1, v1

    if-ge v0, v1, :cond_59

    const/16 v1, 0x12

    invoke-virtual {p1, v1, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    const/4 v1, 0x1

    invoke-static {v2, v1}, Lam/g;->g(Lam/b;I)J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v1, 0x2

    invoke-static {v2, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Lam/b;->l(I)I

    move-result v5

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6, v5}, Ljava/util/Vector;-><init>(I)V

    const/4 v1, 0x0

    :goto_2c
    if-ge v1, v5, :cond_4d

    const/4 v7, 0x3

    invoke-virtual {v2, v7, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v7

    new-instance v8, Lcom/google/googlenav/aZ;

    const/4 v9, 0x1

    invoke-static {v7, v9}, Lam/g;->e(Lam/b;I)I

    move-result v9

    const/4 v10, 0x2

    invoke-static {v7, v10}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-static {v7, v11}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v9, v10, v7}, Lcom/google/googlenav/aZ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_4d
    iget-object v1, p0, Lcom/google/googlenav/aV;->W:[Lcom/google/googlenav/aY;

    new-instance v2, Lcom/google/googlenav/aY;

    invoke-direct {v2, v3, v4, v6}, Lcom/google/googlenav/aY;-><init>(ILjava/lang/String;Ljava/util/List;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_59
    return-void
.end method

.method private i(Lam/b;)V
    .registers 10

    const/16 v7, 0x15

    invoke-virtual {p1, v7}, Lam/b;->l(I)I

    move-result v1

    new-array v0, v1, [Lcom/google/googlenav/ba;

    iput-object v0, p0, Lcom/google/googlenav/aV;->X:[Lcom/google/googlenav/ba;

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_2d

    invoke-virtual {p1, v7, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lam/g;->g(Lam/b;I)J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v2, v5}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/google/googlenav/aV;->X:[Lcom/google/googlenav/ba;

    new-instance v6, Lcom/google/googlenav/ba;

    invoke-direct {v6, v3, v4, v2}, Lcom/google/googlenav/ba;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_2d
    return-void
.end method

.method private j(Lam/b;)V
    .registers 8

    const/16 v5, 0x14

    invoke-virtual {p1, v5}, Lam/b;->l(I)I

    move-result v1

    new-array v0, v1, [LaQ/I;

    iput-object v0, p0, Lcom/google/googlenav/aV;->Y:[LaQ/I;

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_1d

    invoke-virtual {p1, v5, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/aV;->Y:[LaQ/I;

    const/4 v4, 0x0

    invoke-static {v2, v4}, LaQ/I;->a(Lam/b;LaQ/J;)LaQ/I;

    move-result-object v2

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1d
    return-void
.end method

.method private k(Lam/b;)V
    .registers 7

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_39

    new-instance v0, Lcom/google/googlenav/layer/m;

    invoke-virtual {p1, v3}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/layer/m;-><init>(Lam/b;)V

    iput-object v0, p0, Lcom/google/googlenav/aV;->J:Lcom/google/googlenav/layer/m;

    :goto_13
    invoke-virtual {p1, v2}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p1, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/layer/a;

    invoke-virtual {v0, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/googlenav/layer/m;

    invoke-direct {v4, v1}, Lcom/google/googlenav/layer/m;-><init>(Lam/b;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-direct {v2, v3, v4, v0}, Lcom/google/googlenav/layer/a;-><init>(Ljava/lang/String;Lcom/google/googlenav/layer/m;I)V

    iput-object v2, p0, Lcom/google/googlenav/aV;->K:Lcom/google/googlenav/layer/a;

    :cond_38
    return-void

    :cond_39
    sget-object v0, Lcom/google/googlenav/layer/m;->a:Lcom/google/googlenav/layer/m;

    iput-object v0, p0, Lcom/google/googlenav/aV;->J:Lcom/google/googlenav/layer/m;

    goto :goto_13
.end method

.method private l(Lam/b;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    iget-object v1, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->B()Lam/b;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v1}, Lam/b;->a(ILam/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/aV;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/googlenav/aV;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x409

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/aV;->i:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/16 v0, 0x40a

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->y()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_30
    iget-object v0, p0, Lcom/google/googlenav/aV;->i:Ljava/lang/String;

    goto :goto_e
.end method

.method public B()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/googlenav/aV;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-boolean v0, v0, Lcom/google/googlenav/bb;->y:Z

    goto :goto_9
.end method

.method public C()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->j:Ljava/lang/String;

    return-object v0
.end method

.method public D()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/aV;->k:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/aV;->k:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public E()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->k:Ljava/lang/String;

    return-object v0
.end method

.method public F()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->P:[Lcom/google/googlenav/ah;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/aV;->P:[Lcom/google/googlenav/ah;

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public G()[Lcom/google/googlenav/ah;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->P:[Lcom/google/googlenav/ah;

    return-object v0
.end method

.method public H()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/aV;->Q:I

    return v0
.end method

.method public I()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/aV;->l:Z

    return v0
.end method

.method public J()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->H:Ljava/lang/String;

    return-object v0
.end method

.method public K()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->I:Ljava/lang/String;

    return-object v0
.end method

.method public L()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/aV;->m:Z

    return v0
.end method

.method public M()LaJ/B;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->s:LaJ/B;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/aV;->r:LaJ/H;

    invoke-virtual {v0}, LaJ/H;->a()LaJ/B;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/aV;->s:LaJ/B;

    goto :goto_a
.end method

.method public N()LaJ/M;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-object v0, v0, Lcom/google/googlenav/bb;->l:LaJ/M;

    return-object v0
.end method

.method public O()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->C:Ljava/lang/String;

    return-object v0
.end method

.method public P()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->D:Ljava/lang/String;

    return-object v0
.end method

.method public Q()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/aV;->t:I

    return v0
.end method

.method public R()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/aV;->u:I

    return v0
.end method

.method public S()LaJ/H;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->r:LaJ/H;

    return-object v0
.end method

.method public T()LaJ/H;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-object v0, v0, Lcom/google/googlenav/bb;->F:LaJ/H;

    return-object v0
.end method

.method public U()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget v0, v0, Lcom/google/googlenav/bb;->c:I

    return v0
.end method

.method public V()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-object v0, v0, Lcom/google/googlenav/bb;->g:Ljava/lang/String;

    return-object v0
.end method

.method public W()I
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/googlenav/aV;->U:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    iget v0, p0, Lcom/google/googlenav/aV;->U:I

    :goto_8
    return v0

    :cond_9
    iput v0, p0, Lcom/google/googlenav/aV;->U:I

    :goto_b
    iget-object v1, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    array-length v1, v1

    if-ge v0, v1, :cond_23

    iget-object v1, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->L()Lcom/google/googlenav/ao;

    move-result-object v1

    if-eqz v1, :cond_20

    iget v1, p0, Lcom/google/googlenav/aV;->U:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlenav/aV;->U:I

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_23
    iget v0, p0, Lcom/google/googlenav/aV;->U:I

    goto :goto_8
.end method

.method public X()V
    .registers 2

    invoke-super {p0}, Lat/a;->X()V

    iget-object v0, p0, Lcom/google/googlenav/aV;->R:Lcom/google/googlenav/aX;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/aV;->R:Lcom/google/googlenav/aX;

    invoke-interface {v0, p0}, Lcom/google/googlenav/aX;->b(Lcom/google/googlenav/aV;)V

    :cond_c
    return-void
.end method

.method public Y()Lcom/google/googlenav/layer/a;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->K:Lcom/google/googlenav/layer/a;

    return-object v0
.end method

.method public Z()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a()I
    .registers 2

    const/16 v0, 0x2e

    return v0
.end method

.method public a(ILcom/google/googlenav/aX;)Lcom/google/googlenav/aV;
    .registers 4

    new-instance v0, Lcom/google/googlenav/aV;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/aV;-><init>(Lcom/google/googlenav/aV;ILcom/google/googlenav/aX;)V

    return-object v0
.end method

.method public a(B)V
    .registers 2

    iput-byte p1, p0, Lcom/google/googlenav/aV;->z:B

    return-void
.end method

.method public a(I)V
    .registers 6

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->c()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/aV;->ab:I

    iget v0, p0, Lcom/google/googlenav/aV;->y:I

    if-eq p1, v0, :cond_1a

    iget-byte v0, p0, Lcom/google/googlenav/aV;->z:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    const/4 v0, 0x5

    const-string v1, "1"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_1a
    :goto_1a
    iput p1, p0, Lcom/google/googlenav/aV;->y:I

    if-gez p1, :cond_32

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/google/googlenav/aV;->z:B

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-byte v0, p0, Lcom/google/googlenav/aV;->z:B

    if-ne v0, v3, :cond_1a

    const/16 v0, 0x12

    const-string v1, "1"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_1a

    :cond_32
    iget-byte v0, p0, Lcom/google/googlenav/aV;->z:B

    if-nez v0, :cond_21

    iput-byte v3, p0, Lcom/google/googlenav/aV;->z:B

    goto :goto_21
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/googlenav/aV;->S:J

    return-void
.end method

.method public a(Lcom/google/googlenav/aV;)V
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->f()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->f()I

    move-result v2

    add-int/2addr v0, v2

    new-array v2, v0, [Lcom/google/googlenav/ah;

    move v0, v1

    :goto_d
    invoke-virtual {p0}, Lcom/google/googlenav/aV;->f()I

    move-result v3

    if-ge v0, v3, :cond_1c

    iget-object v3, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1c
    move v0, v1

    :goto_1d
    invoke-virtual {p1}, Lcom/google/googlenav/aV;->f()I

    move-result v3

    if-ge v0, v3, :cond_40

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->aB()[Lcom/google/googlenav/ah;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Lcom/google/googlenav/ah;->a(B)V

    invoke-virtual {v3}, Lcom/google/googlenav/ah;->ah()V

    iget-object v4, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-boolean v4, v4, Lcom/google/googlenav/bb;->A:Z

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ah;->d(Z)V

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->f()I

    move-result v4

    add-int/2addr v4, v0

    aput-object v3, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_40
    iput-object v2, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    invoke-direct {p0}, Lcom/google/googlenav/aV;->aT()V

    return-void
.end method

.method public a(Lcom/google/googlenav/ah;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/aV;->N:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->Z()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/googlenav/ax;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 13

    const/16 v10, 0x10

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x1

    new-instance v5, Lam/b;

    sget-object v0, LbD/eL;->a:Lam/e;

    invoke-direct {v5, v0}, Lam/b;-><init>(Lam/e;)V

    iget-object v0, p0, Lcom/google/googlenav/aV;->g:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Lam/b;->b(ILjava/lang/String;)V

    iget v0, p0, Lcom/google/googlenav/aV;->h:I

    invoke-virtual {v5, v4, v0}, Lam/b;->h(II)V

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/googlenav/aV;->B:I

    invoke-virtual {v5, v0, v1}, Lam/b;->h(II)V

    const/4 v0, 0x5

    const/16 v1, 0xa

    invoke-virtual {v5, v0, v1}, Lam/b;->h(II)V

    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-boolean v0, v0, Lcom/google/googlenav/bb;->n:Z

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/googlenav/aV;->r:LaJ/H;

    invoke-virtual {v0}, LaJ/H;->a()LaJ/B;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/aV;->t:I

    iget v3, p0, Lcom/google/googlenav/aV;->u:I

    iget-object v6, p0, Lcom/google/googlenav/aV;->r:LaJ/H;

    invoke-virtual {v6}, LaJ/H;->b()LaJ/Y;

    move-result-object v6

    invoke-virtual {v6}, LaJ/Y;->a()I

    move-result v6

    invoke-static {v0, v1, v3, v6}, LaJ/C;->a(LaJ/B;III)Lam/b;

    move-result-object v0

    invoke-virtual {v5, v9, v0}, Lam/b;->b(ILam/b;)V

    :cond_44
    sget-boolean v0, Lcom/google/googlenav/aV;->a:Z

    if-eqz v0, :cond_60

    const/4 v0, 0x7

    invoke-virtual {v5, v0, v4}, Lam/b;->b(IZ)V

    const/16 v0, 0x12

    invoke-virtual {v5, v0, v4}, Lam/b;->b(IZ)V

    const/16 v0, 0x2e

    invoke-virtual {v5, v0, v4}, Lam/b;->b(IZ)V

    const/16 v0, 0x33

    invoke-virtual {v5, v0, v4}, Lam/b;->b(IZ)V

    const/16 v0, 0x34

    invoke-virtual {v5, v0, v4}, Lam/b;->b(IZ)V

    :cond_60
    const/16 v0, 0x8

    invoke-virtual {v5, v0, v4}, Lam/b;->b(IZ)V

    const/16 v0, 0x11

    invoke-virtual {v5, v0, v4}, Lam/b;->b(IZ)V

    const/16 v0, 0x24

    invoke-virtual {v5, v0, v4}, Lam/b;->b(IZ)V

    const/4 v0, 0x6

    invoke-virtual {v5, v0, v2}, Lam/b;->b(IZ)V

    const/16 v0, 0x13

    invoke-virtual {v5, v0, v4}, Lam/b;->b(IZ)V

    const/16 v0, 0x14

    invoke-virtual {v5, v0, v2}, Lam/b;->b(IZ)V

    const/16 v0, 0x18

    invoke-virtual {v5, v0, v2}, Lam/b;->b(IZ)V

    const/16 v0, 0xe

    invoke-virtual {v5, v0, v4}, Lam/b;->b(IZ)V

    iget v0, p0, Lcom/google/googlenav/aV;->h:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_d5

    invoke-static {}, Lcom/google/googlenav/ui/bw;->c()Z

    move-result v0

    if-eqz v0, :cond_d5

    new-instance v0, Lam/b;

    sget-object v1, LbD/x;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->R()I

    move-result v3

    add-int/lit8 v3, v3, -0x14

    invoke-virtual {v0, v4, v3}, Lam/b;->h(II)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bw;->a(Z)I

    move-result v1

    add-int/lit8 v1, v1, -0x14

    invoke-virtual {v0, v8, v1}, Lam/b;->h(II)V

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v2}, Lam/b;->b(IZ)V

    invoke-virtual {v0, v10, v2}, Lam/b;->a(II)V

    invoke-virtual {v0, v10, v8}, Lam/b;->a(II)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    long-to-int v1, v6

    div-int/lit16 v1, v1, 0x400

    div-int/lit8 v1, v1, 0x3

    const/16 v3, 0xc8

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v9, v1}, Lam/b;->h(II)V

    const/16 v1, 0xc

    invoke-virtual {v5, v1, v0}, Lam/b;->b(ILam/b;)V

    :cond_d5
    invoke-virtual {p0}, Lcom/google/googlenav/aV;->U()I

    move-result v0

    invoke-virtual {v5, v10, v0}, Lam/b;->h(II)V

    const/16 v0, 0x1a

    invoke-virtual {v5, v0, v4}, Lam/b;->b(IZ)V

    const/16 v0, 0x12

    invoke-virtual {v5, v0, v4}, Lam/b;->b(IZ)V

    const/16 v0, 0x16

    const/16 v1, 0x100

    invoke-virtual {v5, v0, v1}, Lam/b;->h(II)V

    const/16 v0, 0x19

    invoke-virtual {v5, v0, v4}, Lam/b;->b(IZ)V

    const/16 v0, 0x20

    invoke-virtual {v5, v0, v2}, Lam/b;->b(IZ)V

    const/16 v0, 0x21

    invoke-virtual {v5, v0, v4}, Lam/b;->b(IZ)V

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->aJ()Z

    move-result v0

    if-eqz v0, :cond_107

    const/16 v0, 0x32

    invoke-virtual {v5, v0, v4}, Lam/b;->b(IZ)V

    :cond_107
    invoke-virtual {p0}, Lcom/google/googlenav/aV;->N()LaJ/M;

    move-result-object v0

    if-eqz v0, :cond_137

    new-instance v0, Lam/b;

    sget-object v1, LbD/cO;->d:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v0, v4, v8}, Lam/b;->h(II)V

    invoke-virtual {v0, v9}, Lam/b;->a(I)Lam/b;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->N()LaJ/M;

    move-result-object v6

    invoke-virtual {v6}, LaJ/M;->j()[LaJ/B;

    move-result-object v6

    invoke-static {v6}, LaJ/M;->a([LaJ/B;)[B

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lam/b;->b(I[B)V

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v4}, Lam/b;->h(II)V

    invoke-virtual {v0, v9, v1}, Lam/b;->b(ILam/b;)V

    const/16 v1, 0x1b

    invoke-virtual {v5, v1, v0}, Lam/b;->a(ILam/b;)V

    :cond_137
    const/16 v0, 0x17

    invoke-virtual {v5, v0, v2}, Lam/b;->b(IZ)V

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->az()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_159

    new-instance v0, Lam/b;

    sget-object v1, LbD/cO;->h:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->az()LaJ/B;

    move-result-object v1

    invoke-virtual {v1}, LaJ/B;->g()Lam/b;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lam/b;->b(ILam/b;)V

    const/16 v1, 0x1c

    invoke-virtual {v5, v1, v0}, Lam/b;->a(ILam/b;)V

    :cond_159
    const/16 v0, 0x1e

    iget-boolean v1, p0, Lcom/google/googlenav/aV;->O:Z

    invoke-virtual {v5, v0, v1}, Lam/b;->b(IZ)V

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->as()Z

    move-result v0

    if-eqz v0, :cond_17e

    const/16 v0, 0x1f

    invoke-virtual {v5, v0, v4}, Lam/b;->b(IZ)V

    new-instance v0, Lam/b;

    sget-object v1, LbD/ef;->c:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->at()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lam/b;->h(II)V

    const/16 v1, 0x23

    invoke-virtual {v5, v1, v0}, Lam/b;->b(ILam/b;)V

    :cond_17e
    const/16 v0, 0x2f

    invoke-virtual {v5, v0, v4}, Lam/b;->b(IZ)V

    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-boolean v0, v0, Lcom/google/googlenav/bb;->z:Z

    if-eqz v0, :cond_18e

    const/16 v0, 0x31

    invoke-virtual {v5, v0, v4}, Lam/b;->b(IZ)V

    :cond_18e
    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-object v0, v0, Lcom/google/googlenav/bb;->B:Lam/b;

    if-eqz v0, :cond_19d

    const/16 v0, 0x37

    iget-object v1, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-object v1, v1, Lcom/google/googlenav/bb;->B:Lam/b;

    invoke-virtual {v5, v0, v1}, Lam/b;->b(ILam/b;)V

    :cond_19d
    invoke-direct {p0, v5}, Lcom/google/googlenav/aV;->c(Lam/b;)V

    const/16 v0, 0x26

    invoke-virtual {v5, v0, v4}, Lam/b;->b(IZ)V

    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-object v0, v0, Lcom/google/googlenav/bb;->u:[Lam/b;

    if-eqz v0, :cond_1c1

    move v0, v2

    :goto_1ac
    iget-object v1, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-object v1, v1, Lcom/google/googlenav/bb;->u:[Lam/b;

    array-length v1, v1

    if-ge v0, v1, :cond_1c1

    const/16 v1, 0x27

    iget-object v3, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-object v3, v3, Lcom/google/googlenav/bb;->u:[Lam/b;

    aget-object v3, v3, v0

    invoke-virtual {v5, v1, v3}, Lam/b;->a(ILam/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1ac

    :cond_1c1
    invoke-virtual {p0}, Lcom/google/googlenav/aV;->a()I

    move-result v0

    invoke-static {v0, v5, v4}, Lcom/google/googlenav/ag;->a(ILam/b;Z)V

    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-boolean v0, v0, Lcom/google/googlenav/bb;->E:Z

    if-eqz v0, :cond_1d5

    const/16 v0, 0x29

    const/16 v1, 0x1f

    invoke-virtual {v5, v0, v1}, Lam/b;->a(II)V

    :cond_1d5
    const/16 v0, 0x2b

    invoke-virtual {v5, v0, v4}, Lam/b;->b(IZ)V

    const/16 v0, 0x35

    invoke-virtual {v5, v0, v4}, Lam/b;->b(IZ)V

    const/16 v0, 0x36

    invoke-virtual {v5, v0, v4}, Lam/b;->b(IZ)V

    sget-boolean v0, Lcom/google/googlenav/aV;->b:Z

    if-eqz v0, :cond_286

    sget-object v0, Lcom/google/googlenav/aV;->V:LK/bn;

    invoke-virtual {v0}, LK/bn;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1ee
    :goto_1ee
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_211

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1ee

    new-instance v3, Lam/b;

    sget-object v6, LbD/eL;->c:Lam/e;

    invoke-direct {v3, v6}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v3, v4, v0}, Lam/b;->h(II)V

    const/16 v0, 0x2c

    invoke-virtual {v5, v0, v3}, Lam/b;->a(ILam/b;)V

    goto :goto_1ee

    :cond_211
    invoke-virtual {p0}, Lcom/google/googlenav/aV;->aF()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_286

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_286

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_225
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_286

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aY;

    new-instance v7, Lam/b;

    sget-object v1, LbD/eL;->c:Lam/e;

    invoke-direct {v7, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v0}, Lcom/google/googlenav/aY;->a()I

    move-result v1

    invoke-virtual {v7, v4, v1}, Lam/b;->h(II)V

    invoke-virtual {v0}, Lcom/google/googlenav/aY;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_280

    move v3, v2

    :goto_246
    invoke-virtual {v0}, Lcom/google/googlenav/aY;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_280

    new-instance v8, Lam/b;

    sget-object v1, LbD/eL;->e:Lam/e;

    invoke-direct {v8, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v0}, Lcom/google/googlenav/aY;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/aZ;

    invoke-virtual {v1}, Lcom/google/googlenav/aZ;->a()I

    move-result v1

    invoke-virtual {v8, v4, v1}, Lam/b;->h(II)V

    invoke-virtual {v0}, Lcom/google/googlenav/aY;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/aZ;

    invoke-virtual {v1}, Lcom/google/googlenav/aZ;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v9, v1}, Lam/b;->b(ILjava/lang/String;)V

    invoke-virtual {v7, v9, v8}, Lam/b;->a(ILam/b;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_246

    :cond_280
    const/16 v0, 0x2d

    invoke-virtual {v5, v0, v7}, Lam/b;->a(ILam/b;)V

    goto :goto_225

    :cond_286
    invoke-virtual {p0}, Lcom/google/googlenav/aV;->aG()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2b0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_290
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ba;

    new-instance v3, Lam/b;

    sget-object v6, LbD/eL;->d:Lam/e;

    invoke-direct {v3, v6}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v0}, Lcom/google/googlenav/ba;->a()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lam/b;->h(II)V

    const/16 v0, 0x39

    invoke-virtual {v5, v0, v3}, Lam/b;->a(ILam/b;)V

    goto :goto_290

    :cond_2b0
    const/16 v0, 0x2a

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->B()Z

    move-result v1

    if-eqz v1, :cond_2bf

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->ad()Z

    move-result v1

    if-nez v1, :cond_2bf

    move v2, v4

    :cond_2bf
    invoke-virtual {v5, v0, v2}, Lam/b;->b(IZ)V

    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-object v0, v0, Lcom/google/googlenav/bb;->D:LaQ/I;

    if-eqz v0, :cond_2df

    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-object v0, v0, Lcom/google/googlenav/bb;->D:LaQ/I;

    invoke-virtual {v0}, LaQ/I;->f()Z

    move-result v0

    if-eqz v0, :cond_2df

    const/16 v0, 0x3a

    iget-object v1, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-object v1, v1, Lcom/google/googlenav/bb;->D:LaQ/I;

    invoke-virtual {v1}, LaQ/I;->a()Lam/b;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lam/b;->a(ILam/b;)V

    :cond_2df
    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-boolean v0, v0, Lcom/google/googlenav/bb;->H:Z

    if-eqz v0, :cond_2ea

    const/16 v0, 0x3c

    invoke-virtual {v5, v0, v4}, Lam/b;->b(IZ)V

    :cond_2ea
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v5, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/aV;->m:Z

    return-void
.end method

.method public a([Lcom/google/googlenav/ah;)V
    .registers 7

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-void

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_a
    invoke-virtual {p0}, Lcom/google/googlenav/aV;->f()I

    move-result v2

    if-ge v0, v2, :cond_1a

    iget-object v2, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    aget-object v2, v2, v0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1a
    move v0, v1

    :goto_1b
    array-length v2, p1

    if-ge v1, v2, :cond_33

    aget-object v4, p1, v1

    invoke-virtual {v4}, Lcom/google/googlenav/ah;->aL()Z

    move-result v2

    if-eqz v2, :cond_2f

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v0, v2

    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2f
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_33
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/ah;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/ah;

    iput-object v0, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    invoke-direct {p0}, Lcom/google/googlenav/aV;->aT()V

    goto :goto_3
.end method

.method public a(Lam/b;)Z
    .registers 8

    const/16 v5, 0x1a3

    const/16 v4, 0x13

    const/4 v3, 0x1

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/aV;->a(J)V

    invoke-virtual {p1, v3}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lam/b;->d(I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/aV;->w:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/aV;->x:Ljava/lang/String;

    iget v1, p0, Lcom/google/googlenav/aV;->w:I

    packed-switch v1, :pswitch_data_a4

    :cond_2a
    :goto_2a
    :pswitch_2a
    iput-boolean v3, p0, Lcom/google/googlenav/aV;->v:Z

    sget-object v1, Lcom/google/googlenav/aV;->A:Lar/u;

    invoke-virtual {v1}, Lar/u;->b()V

    invoke-direct {p0}, Lcom/google/googlenav/aV;->aO()V

    iget-object v1, p0, Lcom/google/googlenav/aV;->R:Lcom/google/googlenav/aX;

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/google/googlenav/aV;->R:Lcom/google/googlenav/aX;

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->u()Z

    move-result v2

    invoke-interface {v1, p0, v2}, Lcom/google/googlenav/aX;->a(Lcom/google/googlenav/aV;Z)V

    :cond_41
    invoke-virtual {v0, v4}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-static {}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/V;

    move-result-object v1

    invoke-virtual {v0, v4}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/V;->a(Lam/b;)V

    :cond_52
    return v3

    :pswitch_53
    const-string v1, ""

    iput-object v1, p0, Lcom/google/googlenav/aV;->x:Ljava/lang/String;

    :pswitch_57
    invoke-direct {p0, v0}, Lcom/google/googlenav/aV;->d(Lam/b;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/aV;->k(Lam/b;)V

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->Z()Z

    move-result v1

    if-nez v1, :cond_6e

    iput v3, p0, Lcom/google/googlenav/aV;->w:I

    const/16 v1, 0x4e4

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/aV;->x:Ljava/lang/String;

    goto :goto_2a

    :cond_6e
    invoke-virtual {p0}, Lcom/google/googlenav/aV;->U()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2a

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v1

    if-nez v1, :cond_2a

    iput v3, p0, Lcom/google/googlenav/aV;->w:I

    invoke-static {v5}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/aV;->x:Ljava/lang/String;

    goto :goto_2a

    :pswitch_87
    invoke-direct {p0, v0}, Lcom/google/googlenav/aV;->f(Lam/b;)V

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/aV;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {v5}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/aV;->x:Ljava/lang/String;

    goto :goto_2a

    :pswitch_9b
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/aV;->n:Lam/b;

    goto :goto_2a

    nop

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_57
        :pswitch_87
        :pswitch_2a
        :pswitch_53
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_9b
    .end packed-switch
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 3

    sget-object v0, LbD/fo;->a:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/aV;->a(Lam/b;)Z

    move-result v0

    return v0
.end method

.method public aA()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-boolean v0, v0, Lcom/google/googlenav/bb;->G:Z

    return v0
.end method

.method public aB()[Lcom/google/googlenav/ah;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    return-object v0
.end method

.method public aC()V
    .registers 5

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    array-length v0, v0

    if-le v0, v3, :cond_1a

    new-array v1, v3, [Lcom/google/googlenav/ah;

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v3, :cond_15

    iget-object v2, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_15
    iput-object v1, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    invoke-direct {p0}, Lcom/google/googlenav/aV;->aT()V

    :cond_1a
    return-void
.end method

.method public aD()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->T:[Ljava/lang/String;

    return-object v0
.end method

.method public aE()[Lcom/google/googlenav/aY;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->W:[Lcom/google/googlenav/aY;

    return-object v0
.end method

.method public aF()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-object v0, v0, Lcom/google/googlenav/bb;->w:Ljava/util/Map;

    return-object v0
.end method

.method public aG()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-object v0, v0, Lcom/google/googlenav/bb;->x:Ljava/util/Set;

    return-object v0
.end method

.method public aH()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-object v0, v0, Lcom/google/googlenav/bb;->v:Ljava/lang/String;

    return-object v0
.end method

.method public aI()Lam/b;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->aa:Lam/b;

    return-object v0
.end method

.method public aJ()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/aV;->Z:Z

    return v0
.end method

.method public aa()Lcom/google/googlenav/layer/m;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->J:Lcom/google/googlenav/layer/m;

    return-object v0
.end method

.method public ab()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->f()I

    move-result v2

    if-ne v2, v0, :cond_15

    invoke-virtual {p0, v1}, Lcom/google/googlenav/aV;->b(I)Lcom/google/googlenav/D;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/D;->c()B

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_15

    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14
.end method

.method public ac()Z
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->f()I

    move-result v0

    if-ne v0, v1, :cond_16

    invoke-virtual {p0, v2}, Lcom/google/googlenav/aV;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bq()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    :goto_15
    return v0

    :cond_16
    move v0, v2

    goto :goto_15
.end method

.method public ad()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/aV;->L:Z

    if-eqz v0, :cond_4

    :cond_4
    iget-boolean v0, p0, Lcom/google/googlenav/aV;->L:Z

    return v0
.end method

.method public ae()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->E:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/aV;->E:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/googlenav/ah;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/aV;->F:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/aV;->F:Ljava/lang/String;

    goto :goto_9

    :cond_1d
    iget-object v0, p0, Lcom/google/googlenav/aV;->E:Ljava/lang/String;

    goto :goto_9
.end method

.method public af()Lam/b;
    .registers 13

    const/4 v7, 0x7

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v5, Lam/b;

    sget-object v0, LbD/eL;->b:Lam/e;

    invoke-direct {v5, v0}, Lam/b;-><init>(Lam/e;)V

    iget v0, p0, Lcom/google/googlenav/aV;->w:I

    invoke-virtual {v5, v1, v0}, Lam/b;->h(II)V

    iget-object v0, p0, Lcom/google/googlenav/aV;->x:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/aV;->x:Ljava/lang/String;

    invoke-virtual {v5, v10, v0}, Lam/b;->b(ILjava/lang/String;)V

    :cond_1e
    iget-object v0, p0, Lcom/google/googlenav/aV;->g:Ljava/lang/String;

    invoke-virtual {v5, v11, v0}, Lam/b;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/aV;->H:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    const/16 v0, 0xe

    iget-object v3, p0, Lcom/google/googlenav/aV;->H:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Lam/b;->b(ILjava/lang/String;)V

    :cond_32
    iget-object v0, p0, Lcom/google/googlenav/aV;->I:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    const/16 v0, 0xf

    iget-object v3, p0, Lcom/google/googlenav/aV;->I:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Lam/b;->b(ILjava/lang/String;)V

    :cond_41
    iget-object v0, p0, Lcom/google/googlenav/aV;->k:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/google/googlenav/aV;->k:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Lam/b;->b(ILjava/lang/String;)V

    :cond_4f
    const/4 v0, 0x5

    invoke-virtual {v5, v0, v2}, Lam/b;->b(IZ)V

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->M()LaJ/B;

    move-result-object v0

    iget v3, p0, Lcom/google/googlenav/aV;->t:I

    iget v4, p0, Lcom/google/googlenav/aV;->u:I

    const/4 v6, -0x1

    invoke-static {v0, v3, v4, v6}, LaJ/C;->a(LaJ/B;III)Lam/b;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Lam/b;->b(ILam/b;)V

    const/16 v0, 0xb

    iget v3, p0, Lcom/google/googlenav/aV;->B:I

    invoke-virtual {v5, v0, v3}, Lam/b;->h(II)V

    invoke-direct {p0, v5}, Lcom/google/googlenav/aV;->l(Lam/b;)V

    new-instance v3, Lam/b;

    sget-object v0, LbD/eL;->f:Lam/e;

    invoke-direct {v3, v0}, Lam/b;-><init>(Lam/e;)V

    iget-object v0, p0, Lcom/google/googlenav/aV;->C:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12a

    iget-object v0, p0, Lcom/google/googlenav/aV;->C:Ljava/lang/String;

    invoke-virtual {v3, v10, v0}, Lam/b;->b(ILjava/lang/String;)V

    move v0, v1

    :goto_82
    iget-object v4, p0, Lcom/google/googlenav/aV;->D:Ljava/lang/String;

    invoke-static {v4}, Las/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_90

    iget-object v0, p0, Lcom/google/googlenav/aV;->D:Ljava/lang/String;

    invoke-virtual {v3, v7, v0}, Lam/b;->b(ILjava/lang/String;)V

    move v0, v1

    :cond_90
    invoke-virtual {p0}, Lcom/google/googlenav/aV;->ae()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Las/b;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a0

    const/16 v0, 0x8

    invoke-virtual {v3, v0, v4}, Lam/b;->b(ILjava/lang/String;)V

    move v0, v1

    :cond_a0
    if-eqz v0, :cond_a7

    const/16 v0, 0x9

    invoke-virtual {v5, v0, v3}, Lam/b;->b(ILam/b;)V

    :cond_a7
    iget-object v0, p0, Lcom/google/googlenav/aV;->J:Lcom/google/googlenav/layer/m;

    if-eqz v0, :cond_b0

    const/16 v0, 0xc

    invoke-virtual {v5, v0, v1}, Lam/b;->h(II)V

    :cond_b0
    iget-object v0, p0, Lcom/google/googlenav/aV;->T:[Ljava/lang/String;

    if-eqz v0, :cond_c6

    move v0, v2

    :goto_b5
    iget-object v3, p0, Lcom/google/googlenav/aV;->T:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_c6

    const/16 v3, 0x11

    iget-object v4, p0, Lcom/google/googlenav/aV;->T:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v5, v3, v4}, Lam/b;->a(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    :cond_c6
    iget-object v0, p0, Lcom/google/googlenav/aV;->W:[Lcom/google/googlenav/aY;

    if-eqz v0, :cond_129

    move v3, v2

    :goto_cb
    iget-object v0, p0, Lcom/google/googlenav/aV;->W:[Lcom/google/googlenav/aY;

    array-length v0, v0

    if-ge v3, v0, :cond_129

    iget-object v0, p0, Lcom/google/googlenav/aV;->W:[Lcom/google/googlenav/aY;

    aget-object v6, v0, v3

    new-instance v7, Lam/b;

    sget-object v0, LbD/eL;->c:Lam/e;

    invoke-direct {v7, v0}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v6}, Lcom/google/googlenav/aY;->a()I

    move-result v0

    invoke-virtual {v7, v1, v0}, Lam/b;->h(II)V

    invoke-virtual {v6}, Lcom/google/googlenav/aY;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v10, v0}, Lam/b;->b(ILjava/lang/String;)V

    invoke-virtual {v6}, Lcom/google/googlenav/aY;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_120

    move v4, v2

    :goto_f0
    invoke-virtual {v6}, Lcom/google/googlenav/aY;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_120

    new-instance v8, Lam/b;

    sget-object v0, LbD/eL;->e:Lam/e;

    invoke-direct {v8, v0}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v6}, Lcom/google/googlenav/aY;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aZ;

    invoke-virtual {v0}, Lcom/google/googlenav/aZ;->a()I

    move-result v9

    invoke-virtual {v8, v1, v9}, Lam/b;->h(II)V

    invoke-virtual {v0}, Lcom/google/googlenav/aZ;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v10, v0}, Lam/b;->b(ILjava/lang/String;)V

    invoke-virtual {v7, v11, v8}, Lam/b;->a(ILam/b;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_f0

    :cond_120
    const/16 v0, 0x12

    invoke-virtual {v5, v0, v7}, Lam/b;->a(ILam/b;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_cb

    :cond_129
    return-object v5

    :cond_12a
    move v0, v2

    goto/16 :goto_82
.end method

.method public ag()[Lcom/google/googlenav/ui/aQ;
    .registers 6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->N()LaJ/M;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->N()LaJ/M;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    const/4 v0, 0x0

    move v2, v0

    :goto_14
    iget-object v0, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    array-length v0, v0

    if-ge v2, v0, :cond_23

    iget-object v0, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->C()LaJ/g;

    move-result-object v1

    if-nez v1, :cond_2b

    :cond_23
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_47

    const/4 v0, 0x0

    :goto_2a
    return-object v0

    :cond_2b
    invoke-interface {v1}, LaJ/g;->a()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_35

    const/4 v4, 0x3

    if-ne v0, v4, :cond_43

    :cond_35
    move-object v0, v1

    check-cast v0, Lcom/google/googlenav/ui/aQ;

    invoke-interface {v0}, Lcom/google/googlenav/ui/aQ;->h()Z

    move-result v0

    if-eqz v0, :cond_43

    check-cast v1, Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_43
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14

    :cond_47
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/ui/aQ;

    goto :goto_2a
.end method

.method public ah()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/aV;->B:I

    return v0
.end method

.method public ai()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/aV;->o:I

    return v0
.end method

.method public aj()I
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->am()Z

    move-result v0

    if-eqz v0, :cond_e

    sget v0, Lcom/google/googlenav/aV;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    sget v0, Lcom/google/googlenav/aV;->c:I

    :goto_d
    return v0

    :cond_e
    const/16 v0, 0xa

    goto :goto_d
.end method

.method public ak()I
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->aj()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const v0, 0x7fffffff

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->ai()I

    move-result v1

    if-lez v1, :cond_23

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->ai()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->ah()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->f()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    :cond_23
    invoke-virtual {p0}, Lcom/google/googlenav/aV;->aj()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_b
.end method

.method public al()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->q:Ljava/lang/String;

    return-object v0
.end method

.method public am()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/aV;->p:Z

    return v0
.end method

.method public an()I
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->af()Z

    move-result v1

    if-nez v1, :cond_11

    :goto_10
    return v0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    const/4 v0, -0x1

    goto :goto_10
.end method

.method public ao()I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    array-length v2, v2

    if-ge v0, v2, :cond_16

    iget-object v2, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->af()Z

    move-result v2

    if-nez v2, :cond_13

    add-int/lit8 v1, v1, 0x1

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_16
    return v1
.end method

.method public ap()Z
    .registers 3

    iget v0, p0, Lcom/google/googlenav/aV;->h:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public aq()Z
    .registers 3

    iget v0, p0, Lcom/google/googlenav/aV;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->am()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public ar()Z
    .registers 3

    const-string v0, "27"

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public as()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-boolean v0, v0, Lcom/google/googlenav/bb;->q:Z

    return v0
.end method

.method public at()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget v0, v0, Lcom/google/googlenav/bb;->s:I

    return v0
.end method

.method public au()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-boolean v0, v0, Lcom/google/googlenav/bb;->m:Z

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->F()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->D()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-direct {p0}, Lcom/google/googlenav/aV;->aM()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-direct {p0}, Lcom/google/googlenav/aV;->aN()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public av()J
    .registers 3

    iget-wide v0, p0, Lcom/google/googlenav/aV;->S:J

    return-wide v0
.end method

.method public aw()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/aV;->G:Z

    return v0
.end method

.method public ax()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/aV;->O:Z

    return v0
.end method

.method public ay()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-boolean v0, v0, Lcom/google/googlenav/bb;->E:Z

    return v0
.end method

.method public az()LaJ/B;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-object v0, v0, Lcom/google/googlenav/bb;->p:LaJ/B;

    return-object v0
.end method

.method public b(Lam/b;)Lam/b;
    .registers 5

    new-instance v0, Lam/b;

    sget-object v1, LbD/fo;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lam/b;->b(ILam/b;)V

    iget-object v1, p0, Lcom/google/googlenav/aV;->J:Lcom/google/googlenav/layer/m;

    if-eqz v1, :cond_19

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/aV;->J:Lcom/google/googlenav/layer/m;

    invoke-virtual {v2}, Lcom/google/googlenav/layer/m;->o()Lam/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    :cond_19
    return-object v0
.end method

.method public b(I)Lcom/google/googlenav/D;
    .registers 3

    if-ltz p1, :cond_7

    iget-object v0, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    array-length v0, v0

    if-lt p1, v0, :cond_9

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    aget-object v0, v0, p1

    goto :goto_8
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->R:Lcom/google/googlenav/aX;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/aV;->R:Lcom/google/googlenav/aX;

    invoke-interface {v0, p0}, Lcom/google/googlenav/aX;->a(Lcom/google/googlenav/aV;)V

    :cond_9
    return-void
.end method

.method public b(Ljava/io/DataOutput;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/googlenav/aV;->aS()Lam/b;

    move-result-object v0

    invoke-static {p1, v0}, Lam/g;->a(Ljava/io/DataOutput;Lam/b;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/aV;->x:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/aV;->G:Z

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/aV;->y:I

    return v0
.end method

.method public c(I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/aV;->h(I)I

    move-result v0

    return v0
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/aV;->Z:Z

    return-void
.end method

.method public d()B
    .registers 2

    iget-byte v0, p0, Lcom/google/googlenav/aV;->z:B

    return v0
.end method

.method public d(I)V
    .registers 2

    iput p1, p0, Lcom/google/googlenav/aV;->w:I

    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/aV;->N:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e()Lcom/google/googlenav/D;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/aV;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    return-object v0
.end method

.method public e(I)V
    .registers 2

    iput p1, p0, Lcom/google/googlenav/aV;->Q:I

    return-void
.end method

.method public f()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->d:[Lcom/google/googlenav/ah;

    array-length v0, v0

    return v0
.end method

.method public f(I)I
    .registers 3

    if-ltz p1, :cond_7

    iget-object v0, p0, Lcom/google/googlenav/aV;->M:[I

    array-length v0, v0

    if-lt p1, v0, :cond_9

    :cond_7
    const/4 v0, -0x1

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/aV;->M:[I

    aget v0, v0, p1

    goto :goto_8
.end method

.method public g(I)Lcom/google/googlenav/aY;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/aV;->W:[Lcom/google/googlenav/aY;

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/google/googlenav/aV;->W:[Lcom/google/googlenav/aY;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    iget-object v1, p0, Lcom/google/googlenav/aV;->W:[Lcom/google/googlenav/aY;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/googlenav/aY;->a()I

    move-result v1

    if-ne v1, p1, :cond_19

    iget-object v1, p0, Lcom/google/googlenav/aV;->W:[Lcom/google/googlenav/aY;

    aget-object v0, v1, v0

    :goto_18
    return-object v0

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public g_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/aV;->ab:I

    return v0
.end method

.method public i_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public k()Lcom/google/googlenav/aW;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    iget-object v0, v0, Lcom/google/googlenav/bb;->h:Lcom/google/googlenav/aW;

    return-object v0
.end method

.method public l()Lcom/google/googlenav/aX;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->R:Lcom/google/googlenav/aX;

    return-object v0
.end method

.method public m()Lcom/google/googlenav/bb;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->f:Lcom/google/googlenav/bb;

    return-object v0
.end method

.method public n()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->x:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public o()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->x:Ljava/lang/String;

    return-object v0
.end method

.method public p()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/aV;->w:I

    return v0
.end method

.method public q()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlenav/aV;->w:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public s()Z
    .registers 3

    iget v0, p0, Lcom/google/googlenav/aV;->w:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public t()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->s()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->D()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public u()Z
    .registers 3

    iget v0, p0, Lcom/google/googlenav/aV;->w:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public v()Z
    .registers 3

    iget v0, p0, Lcom/google/googlenav/aV;->w:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public w()Lam/b;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->n:Lam/b;

    return-object v0
.end method

.method public x()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/aV;->h:I

    return v0
.end method

.method public y()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->H:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/aV;->g:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/aV;->H:Ljava/lang/String;

    goto :goto_a
.end method

.method public z()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aV;->g:Ljava/lang/String;

    return-object v0
.end method
