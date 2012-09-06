.class public Lcom/google/googlenav/aW;
.super Lac/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/F;


# static fields
.field private static final E:LaT/h;

.field private static final Z:Lcom/google/common/collect/ImmutableList;

.field public static a:Z

.field private static b:Z

.field private static final c:Ljava/util/regex/Pattern;

.field private static d:I


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:I

.field private D:B

.field private F:I

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Z

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Lcom/google/googlenav/layer/m;

.field private O:Lcom/google/googlenav/layer/a;

.field private P:Z

.field private Q:[I

.field private final R:Ljava/util/HashSet;

.field private S:Z

.field private T:[Lcom/google/googlenav/ai;

.field private U:I

.field private V:Lcom/google/googlenav/aY;

.field private W:J

.field private X:[Ljava/lang/String;

.field private Y:I

.field private aa:[Lcom/google/googlenav/aZ;

.field private ab:[Lcom/google/googlenav/bb;

.field private ac:[LaC/N;

.field private ad:Z

.field private ae:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private af:I

.field private ag:I

.field private e:[Lcom/google/googlenav/ai;

.field private f:[I

.field private g:Lcom/google/googlenav/bc;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Lat/H;

.field private u:Lat/B;

.field private v:I

.field private w:I

.field private x:I

.field private y:Ljava/lang/String;

.field private volatile z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 106
    sput-boolean v0, Lcom/google/googlenav/aW;->a:Z

    .line 109
    sput-boolean v0, Lcom/google/googlenav/aW;->b:Z

    .line 112
    const-string v0, "(.*) cid:\\d+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/aW;->c:Ljava/util/regex/Pattern;

    .line 216
    const/4 v0, -0x1

    sput v0, Lcom/google/googlenav/aW;->d:I

    .line 290
    new-instance v0, LaT/h;

    const-string v1, "search"

    const-string v2, "s"

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, LaT/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/aW;->E:LaT/h;

    .line 414
    new-instance v0, Lcom/google/common/collect/bw;

    invoke-direct {v0}, Lcom/google/common/collect/bw;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/bw;->b(Ljava/lang/Object;)Lcom/google/common/collect/bw;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/bw;->b(Ljava/lang/Object;)Lcom/google/common/collect/bw;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/bw;->b(Ljava/lang/Object;)Lcom/google/common/collect/bw;

    move-result-object v0

    .line 419
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/bw;->b(Ljava/lang/Object;)Lcom/google/common/collect/bw;

    .line 421
    invoke-virtual {v0}, Lcom/google/common/collect/bw;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/aW;->Z:Lcom/google/common/collect/ImmutableList;

    .line 422
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 564
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 218
    new-array v0, v2, [Lcom/google/googlenav/ai;

    iput-object v0, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/aW;->f:[I

    .line 225
    new-instance v0, Lcom/google/googlenav/bd;

    invoke-direct {v0}, Lcom/google/googlenav/bd;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    .line 248
    iput-boolean v2, p0, Lcom/google/googlenav/aW;->n:Z

    .line 253
    iput v3, p0, Lcom/google/googlenav/aW;->p:I

    .line 254
    iput-boolean v2, p0, Lcom/google/googlenav/aW;->q:Z

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/aW;->r:Z

    .line 259
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/aW;->s:Ljava/lang/String;

    .line 278
    iput-boolean v2, p0, Lcom/google/googlenav/aW;->z:Z

    .line 284
    iput v3, p0, Lcom/google/googlenav/aW;->C:I

    .line 287
    iput-byte v2, p0, Lcom/google/googlenav/aW;->D:B

    .line 325
    iput-boolean v2, p0, Lcom/google/googlenav/aW;->K:Z

    .line 328
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/aW;->L:Ljava/lang/String;

    .line 331
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/aW;->M:Ljava/lang/String;

    .line 337
    sget-object v0, Lcom/google/googlenav/layer/m;->a:Lcom/google/googlenav/layer/m;

    iput-object v0, p0, Lcom/google/googlenav/aW;->N:Lcom/google/googlenav/layer/m;

    .line 347
    iput-boolean v2, p0, Lcom/google/googlenav/aW;->P:Z

    .line 361
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/aW;->R:Ljava/util/HashSet;

    .line 368
    iput-boolean v2, p0, Lcom/google/googlenav/aW;->S:Z

    .line 391
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/googlenav/aW;->W:J

    .line 403
    iput v3, p0, Lcom/google/googlenav/aW;->Y:I

    .line 450
    iput-boolean v2, p0, Lcom/google/googlenav/aW;->ad:Z

    .line 455
    iput v3, p0, Lcom/google/googlenav/aW;->af:I

    .line 459
    iput v3, p0, Lcom/google/googlenav/aW;->ag:I

    .line 565
    iput v2, p0, Lcom/google/googlenav/aW;->F:I

    .line 566
    return-void
.end method

.method private constructor <init>(Lcom/google/googlenav/aW;ILcom/google/googlenav/aY;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 618
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 218
    new-array v0, v2, [Lcom/google/googlenav/ai;

    iput-object v0, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/aW;->f:[I

    .line 225
    new-instance v0, Lcom/google/googlenav/bd;

    invoke-direct {v0}, Lcom/google/googlenav/bd;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    .line 248
    iput-boolean v2, p0, Lcom/google/googlenav/aW;->n:Z

    .line 253
    iput v3, p0, Lcom/google/googlenav/aW;->p:I

    .line 254
    iput-boolean v2, p0, Lcom/google/googlenav/aW;->q:Z

    .line 257
    iput-boolean v4, p0, Lcom/google/googlenav/aW;->r:Z

    .line 259
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/aW;->s:Ljava/lang/String;

    .line 278
    iput-boolean v2, p0, Lcom/google/googlenav/aW;->z:Z

    .line 284
    iput v3, p0, Lcom/google/googlenav/aW;->C:I

    .line 287
    iput-byte v2, p0, Lcom/google/googlenav/aW;->D:B

    .line 325
    iput-boolean v2, p0, Lcom/google/googlenav/aW;->K:Z

    .line 328
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/aW;->L:Ljava/lang/String;

    .line 331
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/aW;->M:Ljava/lang/String;

    .line 337
    sget-object v0, Lcom/google/googlenav/layer/m;->a:Lcom/google/googlenav/layer/m;

    iput-object v0, p0, Lcom/google/googlenav/aW;->N:Lcom/google/googlenav/layer/m;

    .line 347
    iput-boolean v2, p0, Lcom/google/googlenav/aW;->P:Z

    .line 361
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/aW;->R:Ljava/util/HashSet;

    .line 368
    iput-boolean v2, p0, Lcom/google/googlenav/aW;->S:Z

    .line 391
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/googlenav/aW;->W:J

    .line 403
    iput v3, p0, Lcom/google/googlenav/aW;->Y:I

    .line 450
    iput-boolean v2, p0, Lcom/google/googlenav/aW;->ad:Z

    .line 455
    iput v3, p0, Lcom/google/googlenav/aW;->af:I

    .line 459
    iput v3, p0, Lcom/google/googlenav/aW;->ag:I

    .line 619
    sget-object v0, Lcom/google/googlenav/aW;->E:LaT/h;

    invoke-virtual {v0}, LaT/h;->a()V

    .line 621
    iget-object v0, p1, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iput-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    .line 622
    iput p2, p0, Lcom/google/googlenav/aW;->F:I

    .line 624
    iget-object v0, p1, Lcom/google/googlenav/aW;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/aW;->h:Ljava/lang/String;

    .line 625
    iget v0, p1, Lcom/google/googlenav/aW;->i:I

    iput v0, p0, Lcom/google/googlenav/aW;->i:I

    .line 626
    iget-object v0, p1, Lcom/google/googlenav/aW;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/aW;->j:Ljava/lang/String;

    .line 628
    iget-object v0, p1, Lcom/google/googlenav/aW;->L:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/aW;->L:Ljava/lang/String;

    .line 629
    iget-object v0, p1, Lcom/google/googlenav/aW;->M:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/aW;->M:Ljava/lang/String;

    .line 631
    iget-object v0, p1, Lcom/google/googlenav/aW;->t:Lat/H;

    iput-object v0, p0, Lcom/google/googlenav/aW;->t:Lat/H;

    .line 632
    iget v0, p1, Lcom/google/googlenav/aW;->w:I

    iput v0, p0, Lcom/google/googlenav/aW;->w:I

    .line 633
    iget v0, p1, Lcom/google/googlenav/aW;->v:I

    iput v0, p0, Lcom/google/googlenav/aW;->v:I

    .line 635
    iget v0, p1, Lcom/google/googlenav/aW;->x:I

    iput v0, p0, Lcom/google/googlenav/aW;->x:I

    .line 636
    iget-object v0, p1, Lcom/google/googlenav/aW;->y:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/aW;->y:Ljava/lang/String;

    .line 638
    iput-object p3, p0, Lcom/google/googlenav/aW;->V:Lcom/google/googlenav/aY;

    .line 639
    iget-boolean v0, p1, Lcom/google/googlenav/aW;->S:Z

    iput-boolean v0, p0, Lcom/google/googlenav/aW;->S:Z

    .line 641
    iget-boolean v0, p1, Lcom/google/googlenav/aW;->q:Z

    iput-boolean v0, p0, Lcom/google/googlenav/aW;->q:Z

    .line 642
    iget-object v0, p1, Lcom/google/googlenav/aW;->G:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/aW;->G:Ljava/lang/String;

    .line 643
    iget-object v0, p1, Lcom/google/googlenav/aW;->N:Lcom/google/googlenav/layer/m;

    iput-object v0, p0, Lcom/google/googlenav/aW;->N:Lcom/google/googlenav/layer/m;

    .line 644
    iget-boolean v0, p1, Lcom/google/googlenav/aW;->n:Z

    iput-boolean v0, p0, Lcom/google/googlenav/aW;->n:Z

    .line 646
    iput-boolean v4, p0, Lcom/google/googlenav/aW;->P:Z

    .line 647
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/bc;Lat/u;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 577
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 218
    new-array v0, v2, [Lcom/google/googlenav/ai;

    iput-object v0, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/aW;->f:[I

    .line 225
    new-instance v0, Lcom/google/googlenav/bd;

    invoke-direct {v0}, Lcom/google/googlenav/bd;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    .line 248
    iput-boolean v2, p0, Lcom/google/googlenav/aW;->n:Z

    .line 253
    iput v3, p0, Lcom/google/googlenav/aW;->p:I

    .line 254
    iput-boolean v2, p0, Lcom/google/googlenav/aW;->q:Z

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/aW;->r:Z

    .line 259
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/aW;->s:Ljava/lang/String;

    .line 278
    iput-boolean v2, p0, Lcom/google/googlenav/aW;->z:Z

    .line 284
    iput v3, p0, Lcom/google/googlenav/aW;->C:I

    .line 287
    iput-byte v2, p0, Lcom/google/googlenav/aW;->D:B

    .line 325
    iput-boolean v2, p0, Lcom/google/googlenav/aW;->K:Z

    .line 328
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/aW;->L:Ljava/lang/String;

    .line 331
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/aW;->M:Ljava/lang/String;

    .line 337
    sget-object v0, Lcom/google/googlenav/layer/m;->a:Lcom/google/googlenav/layer/m;

    iput-object v0, p0, Lcom/google/googlenav/aW;->N:Lcom/google/googlenav/layer/m;

    .line 347
    iput-boolean v2, p0, Lcom/google/googlenav/aW;->P:Z

    .line 361
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/aW;->R:Ljava/util/HashSet;

    .line 368
    iput-boolean v2, p0, Lcom/google/googlenav/aW;->S:Z

    .line 391
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/googlenav/aW;->W:J

    .line 403
    iput v3, p0, Lcom/google/googlenav/aW;->Y:I

    .line 450
    iput-boolean v2, p0, Lcom/google/googlenav/aW;->ad:Z

    .line 455
    iput v3, p0, Lcom/google/googlenav/aW;->af:I

    .line 459
    iput v3, p0, Lcom/google/googlenav/aW;->ag:I

    .line 578
    sget-object v0, Lcom/google/googlenav/aW;->E:LaT/h;

    invoke-virtual {v0}, LaT/h;->a()V

    .line 579
    iput-object p1, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    .line 581
    iget v0, p1, Lcom/google/googlenav/bc;->r:I

    iput v0, p0, Lcom/google/googlenav/aW;->F:I

    .line 582
    iget-object v0, p1, Lcom/google/googlenav/bc;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/aW;->h:Ljava/lang/String;

    .line 583
    iget v0, p1, Lcom/google/googlenav/bc;->b:I

    iput v0, p0, Lcom/google/googlenav/aW;->i:I

    .line 584
    iget-object v0, p1, Lcom/google/googlenav/bc;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/aW;->j:Ljava/lang/String;

    .line 589
    iget-object v0, p1, Lcom/google/googlenav/bc;->f:Lat/H;

    if-nez v0, :cond_b1

    invoke-virtual {p2}, Lat/u;->f()Lat/H;

    move-result-object v0

    :goto_6e
    iput-object v0, p0, Lcom/google/googlenav/aW;->t:Lat/H;

    .line 590
    if-eqz p2, :cond_ba

    .line 594
    iget v0, p1, Lcom/google/googlenav/bc;->d:I

    if-ne v0, v3, :cond_b4

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->k()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/aW;->t:Lat/H;

    invoke-virtual {p2, v0, v1}, Lat/u;->a(ILat/H;)I

    move-result v0

    :goto_84
    iput v0, p0, Lcom/google/googlenav/aW;->v:I

    .line 597
    iget v0, p1, Lcom/google/googlenav/bc;->e:I

    if-ne v0, v3, :cond_b7

    iget-object v0, p0, Lcom/google/googlenav/aW;->t:Lat/H;

    invoke-virtual {p2, v0}, Lat/u;->b(Lat/H;)I

    move-result v0

    :goto_90
    iput v0, p0, Lcom/google/googlenav/aW;->w:I

    .line 603
    :goto_92
    iget v0, p1, Lcom/google/googlenav/bc;->c:I

    iput v0, p0, Lcom/google/googlenav/aW;->x:I

    .line 604
    iget-object v0, p1, Lcom/google/googlenav/bc;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/aW;->y:Ljava/lang/String;

    .line 606
    iget-object v0, p1, Lcom/google/googlenav/bc;->i:Lcom/google/googlenav/aY;

    iput-object v0, p0, Lcom/google/googlenav/aW;->V:Lcom/google/googlenav/aY;

    .line 607
    iget-boolean v0, p1, Lcom/google/googlenav/bc;->o:Z

    if-nez v0, :cond_ac

    iget-object v0, p0, Lcom/google/googlenav/aW;->h:Ljava/lang/String;

    const-string v1, " loc:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_b0

    .line 608
    :cond_ac
    iget-boolean v0, p1, Lcom/google/googlenav/bc;->o:Z

    iput-boolean v0, p0, Lcom/google/googlenav/aW;->S:Z

    .line 610
    :cond_b0
    return-void

    .line 589
    :cond_b1
    iget-object v0, p1, Lcom/google/googlenav/bc;->f:Lat/H;

    goto :goto_6e

    .line 594
    :cond_b4
    iget v0, p1, Lcom/google/googlenav/bc;->d:I

    goto :goto_84

    .line 597
    :cond_b7
    iget v0, p1, Lcom/google/googlenav/bc;->e:I

    goto :goto_90

    .line 600
    :cond_ba
    iput v2, p0, Lcom/google/googlenav/aW;->v:I

    .line 601
    iput v2, p0, Lcom/google/googlenav/aW;->w:I

    goto :goto_92
.end method

.method public static a([Lcom/google/googlenav/ai;Lat/H;II)Lcom/google/googlenav/aW;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 540
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/googlenav/aW;->a([Lcom/google/googlenav/ai;Lat/H;IILcom/google/googlenav/bc;)Lcom/google/googlenav/aW;

    move-result-object v0

    return-object v0
.end method

.method public static a([Lcom/google/googlenav/ai;Lat/H;IILcom/google/googlenav/bc;)Lcom/google/googlenav/aW;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 507
    new-instance v0, Lcom/google/googlenav/aW;

    invoke-direct {v0}, Lcom/google/googlenav/aW;-><init>()V

    .line 509
    iput-object p1, v0, Lcom/google/googlenav/aW;->t:Lat/H;

    .line 510
    iput p2, v0, Lcom/google/googlenav/aW;->v:I

    .line 511
    iput p3, v0, Lcom/google/googlenav/aW;->w:I

    .line 512
    array-length v1, p0

    iput v1, v0, Lcom/google/googlenav/aW;->p:I

    .line 513
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/googlenav/aW;->r:Z

    .line 515
    iput-object p0, v0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    .line 516
    invoke-direct {v0}, Lcom/google/googlenav/aW;->aY()V

    .line 518
    if-eqz p4, :cond_2f

    .line 519
    iput-object p4, v0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    .line 520
    iget-object v1, p4, Lcom/google/googlenav/bc;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/googlenav/aW;->h:Ljava/lang/String;

    .line 521
    iget v1, p4, Lcom/google/googlenav/bc;->b:I

    iput v1, v0, Lcom/google/googlenav/aW;->i:I

    .line 522
    iget-object v1, p4, Lcom/google/googlenav/bc;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/googlenav/aW;->j:Ljava/lang/String;

    .line 523
    iget v1, p4, Lcom/google/googlenav/bc;->c:I

    iput v1, v0, Lcom/google/googlenav/aW;->x:I

    .line 524
    iget-object v1, p4, Lcom/google/googlenav/bc;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/googlenav/aW;->y:Ljava/lang/String;

    .line 529
    :goto_2e
    return-object v0

    .line 526
    :cond_2f
    const-string v1, ""

    iput-object v1, v0, Lcom/google/googlenav/aW;->h:Ljava/lang/String;

    .line 527
    const/4 v1, 0x2

    iput v1, v0, Lcom/google/googlenav/aW;->i:I

    goto :goto_2e
.end method

.method public static a([Lcom/google/googlenav/ai;Lcom/google/googlenav/bc;Lat/u;)Lcom/google/googlenav/aW;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 557
    new-instance v0, Lcom/google/googlenav/aW;

    invoke-direct {v0, p1, p2}, Lcom/google/googlenav/aW;-><init>(Lcom/google/googlenav/bc;Lat/u;)V

    .line 558
    iput-object p0, v0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    .line 559
    invoke-direct {v0}, Lcom/google/googlenav/aW;->aY()V

    .line 560
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 674
    invoke-static {p0}, Lcom/google/googlenav/aW;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 675
    const-string v0, ""

    .line 705
    :cond_a
    :goto_a
    return-object v0

    .line 678
    :cond_b
    if-nez p0, :cond_63

    const-string p0, ""

    :cond_f
    :goto_f
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 681
    sget-object v1, Lcom/google/googlenav/aW;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 682
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 683
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 687
    :cond_28
    const-string v1, " loc:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 688
    if-eq v1, v3, :cond_38

    .line 689
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 692
    :cond_38
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->as()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 699
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 700
    if-eq v1, v3, :cond_a

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5a

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 701
    :cond_5a
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 678
    :cond_63
    invoke-static {p0}, Laa/b;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_f
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 729
    invoke-static {p0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 730
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 732
    invoke-static {}, Lcom/google/googlenav/common/Config;->v()Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, " "

    :goto_1c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    :cond_22
    :goto_22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 732
    :cond_27
    const-string v0, " loc:"

    goto :goto_1c

    .line 735
    :cond_2a
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 736
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22
.end method

.method public static a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2858
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2859
    :cond_8
    const/4 v0, 0x0

    .line 2878
    :goto_9
    return-object v0

    .line 2861
    :cond_a
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2862
    const/4 v0, 0x1

    .line 2864
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2865
    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2867
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aZ;

    .line 2868
    if-nez v1, :cond_30

    .line 2869
    const/16 v1, 0x2c

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2872
    :cond_30
    const-string v1, "ft"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2873
    const/16 v1, 0x3a

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2874
    invoke-virtual {v0}, Lcom/google/googlenav/aZ;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2875
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1d

    .line 2878
    :cond_44
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private aR()Z
    .registers 2

    .prologue
    .line 945
    iget-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-object v0, v0, Lcom/google/googlenav/bc;->w:Ljava/util/Map;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-object v0, v0, Lcom/google/googlenav/bc;->w:Ljava/util/Map;

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

.method private aS()Z
    .registers 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-object v0, v0, Lcom/google/googlenav/bc;->x:Ljava/util/Set;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-object v0, v0, Lcom/google/googlenav/bc;->x:Ljava/util/Set;

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

.method private aT()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/16 v3, 0x10

    .line 1490
    invoke-static {}, Lcom/google/googlenav/android/F;->g()Landroid/util/Pair;

    move-result-object v2

    .line 1494
    if-nez v2, :cond_b

    .line 1515
    :goto_a
    return-void

    .line 1498
    :cond_b
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1499
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_99

    .line 1500
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1502
    :goto_1a
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1503
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_28

    .line 1504
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1506
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

    iget v3, p0, Lcom/google/googlenav/aW;->A:I

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

    sget-object v3, Lcom/google/googlenav/aW;->E:LaT/h;

    invoke-virtual {v3}, LaT/h;->g()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1513
    const-string v1, "stat"

    invoke-static {v6, v1, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_99
    move-object v1, v0

    goto :goto_1a
.end method

.method private aU()[I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1674
    iget-object v1, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    array-length v1, v1

    new-array v3, v1, [I

    move v1, v0

    .line 1677
    :goto_7
    iget-object v2, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    array-length v2, v2

    if-ge v0, v2, :cond_22

    .line 1678
    iget-object v2, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->ab()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1679
    const/4 v2, -0x1

    aput v2, v3, v0

    .line 1677
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1681
    :cond_1c
    add-int/lit8 v2, v1, 0x1

    aput v1, v3, v0

    move v1, v2

    goto :goto_19

    .line 1684
    :cond_22
    return-object v3
.end method

.method private aV()V
    .registers 6

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/google/googlenav/aW;->R:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1689
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    array-length v1, v1

    if-ge v0, v1, :cond_25

    .line 1690
    iget-object v1, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    aget-object v1, v1, v0

    .line 1691
    invoke-virtual {v1}, Lcom/google/googlenav/ai;->c()B

    move-result v2

    if-eqz v2, :cond_22

    .line 1692
    iget-object v2, p0, Lcom/google/googlenav/aW;->R:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/googlenav/az;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1689
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1695
    :cond_25
    return-void
.end method

.method private aW()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 1866
    iget-object v0, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    array-length v5, v0

    .line 1867
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/google/googlenav/aW;->f:[I

    move v4, v3

    .line 1868
    :goto_9
    if-ge v4, v5, :cond_43

    move v2, v3

    move v0, v4

    .line 1871
    :goto_d
    if-gt v2, v4, :cond_40

    .line 1872
    iget-object v1, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    iget-object v6, p0, Lcom/google/googlenav/aW;->f:[I

    aget v6, v6, v2

    aget-object v1, v1, v6

    .line 1873
    invoke-virtual {v1}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v1

    .line 1874
    iget-object v6, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v6

    .line 1878
    if-eq v2, v4, :cond_33

    if-eqz v1, :cond_3c

    if-eqz v6, :cond_3c

    invoke-virtual {v1}, Lat/B;->c()I

    move-result v1

    invoke-virtual {v6}, Lat/B;->c()I

    move-result v6

    if-ge v1, v6, :cond_3c

    .line 1881
    :cond_33
    iget-object v1, p0, Lcom/google/googlenav/aW;->f:[I

    aget v1, v1, v2

    .line 1882
    iget-object v6, p0, Lcom/google/googlenav/aW;->f:[I

    aput v0, v6, v2

    move v0, v1

    .line 1871
    :cond_3c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_d

    .line 1868
    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1887
    :cond_43
    return-void
.end method

.method private aX()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 7

    .prologue
    .line 1925
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->ah()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1926
    invoke-virtual {p0, v0}, Lcom/google/googlenav/aW;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1928
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/ag;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 1930
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1933
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/googlenav/aW;->t:Lat/H;

    invoke-virtual {v2}, Lat/H;->a()Lat/B;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/aW;->v:I

    iget v4, p0, Lcom/google/googlenav/aW;->w:I

    iget-object v5, p0, Lcom/google/googlenav/aW;->t:Lat/H;

    invoke-virtual {v5}, Lat/H;->b()Lat/Y;

    move-result-object v5

    invoke-virtual {v5}, Lat/Y;->a()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lat/C;->a(Lat/B;III)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1936
    const/4 v0, 0x3

    iget v2, p0, Lcom/google/googlenav/aW;->i:I

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1937
    iget-object v0, p0, Lcom/google/googlenav/aW;->j:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 1938
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/googlenav/aW;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1940
    :cond_43
    iget-object v0, p0, Lcom/google/googlenav/aW;->y:Ljava/lang/String;

    if-eqz v0, :cond_4d

    .line 1941
    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/googlenav/aW;->y:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1944
    :cond_4d
    return-object v1
.end method

.method private aY()V
    .registers 2

    .prologue
    .line 2633
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/aW;->Y:I

    .line 2634
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->ab()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2635
    invoke-direct {p0}, Lcom/google/googlenav/aW;->aW()V

    .line 2636
    invoke-direct {p0}, Lcom/google/googlenav/aW;->aU()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aW;->Q:[I

    .line 2637
    invoke-direct {p0}, Lcom/google/googlenav/aW;->aV()V

    .line 2639
    :cond_15
    return-void
.end method

.method public static b(Ljava/io/DataInput;)Lcom/google/googlenav/aW;
    .registers 7
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 2092
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ag;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2094
    invoke-static {v0}, Lcom/google/googlenav/aW;->m(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 2097
    new-instance v1, Lcom/google/googlenav/aW;

    invoke-direct {v1}, Lcom/google/googlenav/aW;-><init>()V

    .line 2098
    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/aW;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    .line 2100
    const/4 v2, 0x3

    invoke-static {v0, v2, v5}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v2

    iput v2, v1, Lcom/google/googlenav/aW;->i:I

    .line 2102
    iput-boolean v3, v1, Lcom/google/googlenav/aW;->n:Z

    .line 2103
    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2104
    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/googlenav/aW;->j:Ljava/lang/String;

    .line 2106
    :cond_2d
    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    .line 2108
    if-eqz v2, :cond_36

    .line 2109
    iput-object v2, v1, Lcom/google/googlenav/aW;->y:Ljava/lang/String;

    .line 2112
    :cond_36
    iput-boolean v3, v1, Lcom/google/googlenav/aW;->z:Z

    .line 2115
    invoke-virtual {v0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2117
    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 2118
    new-instance v3, Lat/H;

    invoke-static {v2}, Lat/C;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v2

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v3, v2, v0, v4}, Lat/H;-><init>(Lat/B;Lat/Y;I)V

    iput-object v3, v1, Lcom/google/googlenav/aW;->t:Lat/H;

    .line 2121
    return-object v1
.end method

.method public static b(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2894
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2895
    :cond_8
    const/4 v0, 0x0

    .line 2914
    :goto_9
    return-object v0

    .line 2897
    :cond_a
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2898
    const/4 v0, 0x1

    .line 2900
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2901
    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2903
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bb;

    .line 2904
    if-nez v1, :cond_30

    .line 2905
    const/16 v1, 0x2c

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2908
    :cond_30
    const-string v1, "ot"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2909
    const/16 v1, 0x3a

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2910
    invoke-virtual {v0}, Lcom/google/googlenav/bb;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2911
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1d

    .line 2914
    :cond_44
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1362
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/wireless/googlenav/proto/j2me/bJ;->ae:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 1365
    iget-object v3, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-boolean v3, v3, Lcom/google/googlenav/bc;->t:Z

    if-eqz v3, :cond_13

    .line 1366
    invoke-virtual {v2, v0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move v0, v1

    .line 1370
    :cond_13
    iget-object v3, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget v3, v3, Lcom/google/googlenav/bc;->C:I

    if-eqz v3, :cond_34

    .line 1371
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v3, Lbq/G;->n:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 1373
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget v4, v4, Lcom/google/googlenav/bc;->C:I

    invoke-virtual {v0, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1376
    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1381
    :goto_2c
    if-nez v1, :cond_33

    .line 1382
    const/16 v0, 0x25

    invoke-virtual {p1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1384
    :cond_33
    return-void

    :cond_34
    move v1, v0

    goto :goto_2c
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 895
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 896
    const/4 v0, 0x1

    .line 898
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x3

    const/4 v4, 0x1

    .line 1525
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1526
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aW;->h:Ljava/lang/String;

    .line 1530
    :cond_11
    const/16 v0, 0xe

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aW;->L:Ljava/lang/String;

    .line 1532
    const/16 v0, 0xf

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aW;->M:Ljava/lang/String;

    .line 1535
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aW;->ae:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1536
    iget-object v0, p0, Lcom/google/googlenav/aW;->ae:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1537
    invoke-static {v0}, Lat/C;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aW;->u:Lat/B;

    .line 1538
    iget-object v0, p0, Lcom/google/googlenav/aW;->ae:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/aW;->v:I

    .line 1539
    iget-object v0, p0, Lcom/google/googlenav/aW;->ae:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/aW;->w:I

    .line 1541
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1543
    iput-boolean v2, p0, Lcom/google/googlenav/aW;->q:Z

    .line 1544
    if-eqz v0, :cond_71

    .line 1545
    iput-boolean v4, p0, Lcom/google/googlenav/aW;->q:Z

    .line 1546
    invoke-static {v0, v3}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/aW;->G:Ljava/lang/String;

    .line 1548
    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/aW;->H:Ljava/lang/String;

    .line 1550
    iget-object v1, p0, Lcom/google/googlenav/aW;->h:Ljava/lang/String;

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 1552
    iget-object v1, p0, Lcom/google/googlenav/aW;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/googlenav/aW;->I:Ljava/lang/String;

    .line 1554
    :cond_69
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aW;->J:Ljava/lang/String;

    .line 1558
    :cond_71
    iget v0, p0, Lcom/google/googlenav/aW;->F:I

    .line 1559
    const/16 v1, 0xb

    invoke-static {p1, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/aW;->F:I

    .line 1561
    iget v1, p0, Lcom/google/googlenav/aW;->F:I

    if-ge v1, v0, :cond_a3

    .line 1564
    const-string v1, "offset"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/googlenav/aW;->F:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    :cond_a3
    const/16 v0, 0xd

    invoke-static {p1, v0, v5}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/aW;->p:I

    .line 1569
    const/16 v0, 0x18

    invoke-static {p1, v0, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/aW;->r:Z

    .line 1572
    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aW;->s:Ljava/lang/String;

    .line 1574
    invoke-direct {p0, p1}, Lcom/google/googlenav/aW;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1584
    sget v0, Lcom/google/googlenav/aW;->d:I

    if-ne v0, v5, :cond_da

    invoke-virtual {p0}, Lcom/google/googlenav/aW;->ao()Z

    move-result v0

    if-eqz v0, :cond_da

    iget v0, p0, Lcom/google/googlenav/aW;->F:I

    if-nez v0, :cond_da

    invoke-virtual {p0}, Lcom/google/googlenav/aW;->f()I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/aW;->p:I

    if-ge v0, v1, :cond_da

    .line 1586
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->f()I

    move-result v0

    sput v0, Lcom/google/googlenav/aW;->d:I

    .line 1592
    :cond_da
    invoke-direct {p0, p1}, Lcom/google/googlenav/aW;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1595
    invoke-direct {p0, p1}, Lcom/google/googlenav/aW;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1598
    invoke-direct {p0, p1}, Lcom/google/googlenav/aW;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1601
    invoke-direct {p0, p1}, Lcom/google/googlenav/aW;->i(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1604
    invoke-direct {p0, p1}, Lcom/google/googlenav/aW;->j(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1605
    return-void
.end method

.method private e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 9
    .parameter

    .prologue
    const/16 v0, 0x8

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1612
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 1613
    new-array v0, v2, [Lcom/google/googlenav/ai;

    iput-object v0, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    move v0, v1

    .line 1616
    :goto_d
    if-ge v0, v2, :cond_78

    .line 1618
    const/16 v3, 0x8

    :try_start_11
    invoke-virtual {p1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 1622
    const/16 v4, 0x9f

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-nez v4, :cond_2c

    iget-object v4, p0, Lcom/google/googlenav/aW;->s:Ljava/lang/String;

    invoke-static {v4}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 1624
    const/16 v4, 0x9f

    iget-object v5, p0, Lcom/google/googlenav/aW;->s:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1626
    :cond_2c
    invoke-static {v3}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ai;

    move-result-object v3

    .line 1627
    sget-object v4, Lcom/google/googlenav/av;->a:Lcom/google/googlenav/av;

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/av;)V

    .line 1629
    iget-object v4, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-boolean v4, v4, Lcom/google/googlenav/bc;->A:Z

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ai;->e(Z)V

    .line 1630
    invoke-virtual {v3}, Lcom/google/googlenav/ai;->ah()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 1631
    iget-object v4, p0, Lcom/google/googlenav/aW;->I:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ai;->h(Ljava/lang/String;)V

    .line 1632
    iget-object v4, p0, Lcom/google/googlenav/aW;->G:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ai;->i(Ljava/lang/String;)V

    .line 1638
    invoke-virtual {v3}, Lcom/google/googlenav/ai;->aR()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 1639
    iget-object v4, p0, Lcom/google/googlenav/aW;->H:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ai;->j(Ljava/lang/String;)V

    .line 1641
    :cond_5b
    invoke-virtual {v3}, Lcom/google/googlenav/ai;->aT()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 1642
    iget-object v4, p0, Lcom/google/googlenav/aW;->J:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ai;->k(Ljava/lang/String;)V

    .line 1646
    :cond_6a
    iget-object v4, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    aput-object v3, v4, v0
    :try_end_6e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_6e} :catch_71

    .line 1616
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1649
    :catch_71
    move-exception v0

    .line 1650
    invoke-static {}, Lcom/google/googlenav/common/j;->b()V

    .line 1653
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    .line 1662
    :cond_78
    sget-object v0, Laf/a;->a:Laf/a;

    invoke-virtual {v0}, Laf/a;->d()Z

    move-result v0

    if-eqz v0, :cond_9c

    if-le v2, v6, :cond_9c

    iget-object v0, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ab()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 1665
    iget-object v0, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    aget-object v0, v0, v6

    .line 1666
    iget-object v2, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    iget-object v3, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    aget-object v3, v3, v1

    aput-object v3, v2, v6

    .line 1667
    iget-object v2, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    aput-object v0, v2, v1

    .line 1670
    :cond_9c
    invoke-direct {p0}, Lcom/google/googlenav/aW;->aY()V

    .line 1671
    return-void
.end method

.method private f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x10

    const/4 v1, 0x5

    .line 1706
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1707
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/aW;->m:Z

    .line 1711
    :cond_f
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aW;->l:Ljava/lang/String;

    .line 1715
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aW;->k:Ljava/lang/String;

    .line 1718
    invoke-virtual {p1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 1721
    new-array v0, v1, [Lcom/google/googlenav/ai;

    iput-object v0, p0, Lcom/google/googlenav/aW;->T:[Lcom/google/googlenav/ai;

    .line 1722
    const/4 v0, 0x0

    :goto_26
    if-ge v0, v1, :cond_37

    .line 1723
    invoke-virtual {p1, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 1725
    invoke-static {v2}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ai;

    move-result-object v2

    .line 1726
    iget-object v3, p0, Lcom/google/googlenav/aW;->T:[Lcom/google/googlenav/ai;

    aput-object v2, v3, v0

    .line 1722
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 1729
    :cond_37
    return-void
.end method

.method private g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x11

    .line 1733
    invoke-virtual {p1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 1736
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/aW;->X:[Ljava/lang/String;

    .line 1737
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_18

    .line 1738
    iget-object v2, p0, Lcom/google/googlenav/aW;->X:[Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1737
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1740
    :cond_18
    return-void
.end method

.method private h(I)I
    .registers 3
    .parameter

    .prologue
    .line 872
    iget-object v0, p0, Lcom/google/googlenav/aW;->f:[I

    aget v0, v0, p1

    return v0
.end method

.method private h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 14
    .parameter

    .prologue
    .line 1744
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 1747
    new-array v0, v0, [Lcom/google/googlenav/aZ;

    iput-object v0, p0, Lcom/google/googlenav/aW;->aa:[Lcom/google/googlenav/aZ;

    .line 1748
    const/4 v0, 0x0

    :goto_b
    iget-object v1, p0, Lcom/google/googlenav/aW;->aa:[Lcom/google/googlenav/aZ;

    array-length v1, v1

    if-ge v0, v1, :cond_59

    .line 1749
    const/16 v1, 0x12

    invoke-virtual {p1, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 1750
    const/4 v1, 0x1

    invoke-static {v2, v1}, Lcom/google/googlenav/common/io/protocol/b;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v3

    long-to-int v3, v3

    .line 1751
    const/4 v1, 0x2

    invoke-static {v2, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v4

    .line 1752
    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v5

    .line 1753
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6, v5}, Ljava/util/Vector;-><init>(I)V

    .line 1754
    const/4 v1, 0x0

    :goto_2c
    if-ge v1, v5, :cond_4d

    .line 1755
    const/4 v7, 0x3

    invoke-virtual {v2, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v7

    .line 1756
    new-instance v8, Lcom/google/googlenav/ba;

    const/4 v9, 0x1

    invoke-static {v7, v9}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v9

    const/4 v10, 0x2

    invoke-static {v7, v10}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-static {v7, v11}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v9, v10, v7}, Lcom/google/googlenav/ba;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1754
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 1761
    :cond_4d
    iget-object v1, p0, Lcom/google/googlenav/aW;->aa:[Lcom/google/googlenav/aZ;

    new-instance v2, Lcom/google/googlenav/aZ;

    invoke-direct {v2, v3, v4, v6}, Lcom/google/googlenav/aZ;-><init>(ILjava/lang/String;Ljava/util/List;)V

    aput-object v2, v1, v0

    .line 1748
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1763
    :cond_59
    return-void
.end method

.method private i(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 10
    .parameter

    .prologue
    const/16 v7, 0x15

    .line 1766
    invoke-virtual {p1, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 1769
    new-array v0, v1, [Lcom/google/googlenav/bb;

    iput-object v0, p0, Lcom/google/googlenav/aW;->ab:[Lcom/google/googlenav/bb;

    .line 1771
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_2d

    .line 1772
    invoke-virtual {p1, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 1773
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/googlenav/common/io/protocol/b;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v3

    long-to-int v3, v3

    .line 1774
    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v4

    .line 1775
    const/4 v5, 0x4

    invoke-static {v2, v5}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    .line 1777
    iget-object v5, p0, Lcom/google/googlenav/aW;->ab:[Lcom/google/googlenav/bb;

    new-instance v6, Lcom/google/googlenav/bb;

    invoke-direct {v6, v3, v4, v2}, Lcom/google/googlenav/bb;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v0

    .line 1771
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1779
    :cond_2d
    return-void
.end method

.method private j(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0x14

    .line 1782
    invoke-virtual {p1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 1786
    new-array v0, v1, [LaC/N;

    iput-object v0, p0, Lcom/google/googlenav/aW;->ac:[LaC/N;

    .line 1789
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_1d

    .line 1790
    invoke-virtual {p1, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 1791
    iget-object v3, p0, Lcom/google/googlenav/aW;->ac:[LaC/N;

    const/4 v4, 0x0

    invoke-static {v2, v4}, LaC/N;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;LaC/O;)LaC/N;

    move-result-object v2

    aput-object v2, v3, v0

    .line 1789
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1793
    :cond_1d
    return-void
.end method

.method private k(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x2

    .line 1800
    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1801
    new-instance v0, Lcom/google/googlenav/layer/m;

    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/layer/m;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    iput-object v0, p0, Lcom/google/googlenav/aW;->N:Lcom/google/googlenav/layer/m;

    .line 1807
    :goto_13
    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1808
    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1809
    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 1810
    new-instance v2, Lcom/google/googlenav/layer/a;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/googlenav/layer/m;

    invoke-direct {v4, v1}, Lcom/google/googlenav/layer/m;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-direct {v2, v3, v4, v0}, Lcom/google/googlenav/layer/a;-><init>(Ljava/lang/String;Lcom/google/googlenav/layer/m;I)V

    iput-object v2, p0, Lcom/google/googlenav/aW;->O:Lcom/google/googlenav/layer/a;

    .line 1813
    :cond_38
    return-void

    .line 1803
    :cond_39
    sget-object v0, Lcom/google/googlenav/layer/m;->a:Lcom/google/googlenav/layer/m;

    iput-object v0, p0, Lcom/google/googlenav/aW;->N:Lcom/google/googlenav/layer/m;

    goto :goto_13
.end method

.method private l(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter

    .prologue
    .line 2077
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 2079
    iget-object v1, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 2080
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 2077
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2082
    :cond_16
    return-void
.end method

.method private static m(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2130
    const/4 v0, 0x0

    .line 2131
    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v1

    if-nez v1, :cond_31

    .line 2133
    const-string v0, "Missing SEARCH_RESPONSE_WITH_PAYLOAD"

    .line 2145
    :cond_a
    :goto_a
    if-eqz v0, :cond_4c

    .line 2146
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2147
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 2148
    invoke-virtual {v1, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 2149
    const-string v2, " proto:\n"

    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 2150
    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->toTextFormat(Ljava/io/Writer;)V

    .line 2152
    const-string v2, "Search.assertCorrectProtoBuf"

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    :cond_2b
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2135
    :cond_31
    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 2137
    if-nez v1, :cond_3a

    .line 2138
    const-string v0, "Null SEARCH_RESPONSE_WITH_PAYLOAD"

    goto :goto_a

    .line 2139
    :cond_3a
    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v2

    if-nez v2, :cond_43

    .line 2140
    const-string v0, "Missing RESPONSE"

    goto :goto_a

    .line 2141
    :cond_43
    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    if-nez v1, :cond_a

    .line 2142
    const-string v0, "null RESPONSE"

    goto :goto_a

    .line 2156
    :cond_4c
    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 2

    .prologue
    .line 881
    iget-object v0, p0, Lcom/google/googlenav/aW;->L:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/aW;->h:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/aW;->L:Ljava/lang/String;

    goto :goto_a
.end method

.method public B()Ljava/lang/String;
    .registers 2

    .prologue
    .line 885
    iget-object v0, p0, Lcom/google/googlenav/aW;->h:Ljava/lang/String;

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .registers 5

    .prologue
    .line 910
    iget-object v0, p0, Lcom/google/googlenav/aW;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/googlenav/aW;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 911
    const/16 v0, 0x4f4

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 914
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/aW;->j:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/16 v0, 0x4f5

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/aW;->A()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/aW;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_30
    iget-object v0, p0, Lcom/google/googlenav/aW;->j:Ljava/lang/String;

    goto :goto_e
.end method

.method public D()Z
    .registers 2

    .prologue
    .line 921
    iget-object v0, p0, Lcom/google/googlenav/aW;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/googlenav/aW;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 922
    const/4 v0, 0x0

    .line 924
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-boolean v0, v0, Lcom/google/googlenav/bc;->y:Z

    goto :goto_9
.end method

.method public E()Ljava/lang/String;
    .registers 2

    .prologue
    .line 929
    iget-object v0, p0, Lcom/google/googlenav/aW;->k:Ljava/lang/String;

    return-object v0
.end method

.method public F()Z
    .registers 3

    .prologue
    .line 933
    iget-object v0, p0, Lcom/google/googlenav/aW;->l:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/aW;->l:Ljava/lang/String;

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

.method public G()Ljava/lang/String;
    .registers 2

    .prologue
    .line 937
    iget-object v0, p0, Lcom/google/googlenav/aW;->l:Ljava/lang/String;

    return-object v0
.end method

.method public H()Z
    .registers 2

    .prologue
    .line 941
    iget-object v0, p0, Lcom/google/googlenav/aW;->T:[Lcom/google/googlenav/ai;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/aW;->T:[Lcom/google/googlenav/ai;

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public I()[Lcom/google/googlenav/ai;
    .registers 2

    .prologue
    .line 961
    iget-object v0, p0, Lcom/google/googlenav/aW;->T:[Lcom/google/googlenav/ai;

    return-object v0
.end method

.method public J()I
    .registers 2

    .prologue
    .line 969
    iget v0, p0, Lcom/google/googlenav/aW;->U:I

    return v0
.end method

.method public K()Z
    .registers 2

    .prologue
    .line 974
    iget-boolean v0, p0, Lcom/google/googlenav/aW;->m:Z

    return v0
.end method

.method public L()Ljava/lang/String;
    .registers 2

    .prologue
    .line 978
    iget-object v0, p0, Lcom/google/googlenav/aW;->L:Ljava/lang/String;

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .registers 2

    .prologue
    .line 982
    iget-object v0, p0, Lcom/google/googlenav/aW;->M:Ljava/lang/String;

    return-object v0
.end method

.method public N()Z
    .registers 2

    .prologue
    .line 990
    iget-boolean v0, p0, Lcom/google/googlenav/aW;->n:Z

    return v0
.end method

.method public O()Lat/B;
    .registers 2

    .prologue
    .line 998
    iget-object v0, p0, Lcom/google/googlenav/aW;->u:Lat/B;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/aW;->t:Lat/H;

    invoke-virtual {v0}, Lat/H;->a()Lat/B;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/aW;->u:Lat/B;

    goto :goto_a
.end method

.method public P()Lat/M;
    .registers 2

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-object v0, v0, Lcom/google/googlenav/bc;->l:Lat/M;

    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/google/googlenav/aW;->G:Ljava/lang/String;

    return-object v0
.end method

.method public R()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/google/googlenav/aW;->H:Ljava/lang/String;

    return-object v0
.end method

.method public S()I
    .registers 2

    .prologue
    .line 1034
    iget v0, p0, Lcom/google/googlenav/aW;->v:I

    return v0
.end method

.method public T()I
    .registers 2

    .prologue
    .line 1038
    iget v0, p0, Lcom/google/googlenav/aW;->w:I

    return v0
.end method

.method public U()Lat/H;
    .registers 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/google/googlenav/aW;->t:Lat/H;

    return-object v0
.end method

.method public V()Lat/H;
    .registers 2

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-object v0, v0, Lcom/google/googlenav/bc;->E:Lat/H;

    return-object v0
.end method

.method public W()I
    .registers 2

    .prologue
    .line 1051
    iget v0, p0, Lcom/google/googlenav/aW;->x:I

    return v0
.end method

.method public X()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/google/googlenav/aW;->y:Ljava/lang/String;

    return-object v0
.end method

.method public Y()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1065
    iget v1, p0, Lcom/google/googlenav/aW;->Y:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    .line 1066
    iget v0, p0, Lcom/google/googlenav/aW;->Y:I

    .line 1075
    :goto_8
    return v0

    .line 1069
    :cond_9
    iput v0, p0, Lcom/google/googlenav/aW;->Y:I

    .line 1070
    :goto_b
    iget-object v1, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    array-length v1, v1

    if-ge v0, v1, :cond_23

    .line 1071
    iget-object v1, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->M()Lcom/google/googlenav/aq;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 1072
    iget v1, p0, Lcom/google/googlenav/aW;->Y:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlenav/aW;->Y:I

    .line 1070
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1075
    :cond_23
    iget v0, p0, Lcom/google/googlenav/aW;->Y:I

    goto :goto_8
.end method

.method public Z()V
    .registers 2

    .prologue
    .line 1092
    invoke-super {p0}, Lac/a;->Z()V

    .line 1093
    iget-object v0, p0, Lcom/google/googlenav/aW;->V:Lcom/google/googlenav/aY;

    if-eqz v0, :cond_c

    .line 1094
    iget-object v0, p0, Lcom/google/googlenav/aW;->V:Lcom/google/googlenav/aY;

    invoke-interface {v0, p0}, Lcom/google/googlenav/aY;->b(Lcom/google/googlenav/aW;)V

    .line 1096
    :cond_c
    return-void
.end method

.method public a()I
    .registers 2

    .prologue
    .line 1030
    const/16 v0, 0x2e

    return v0
.end method

.method public a(ILcom/google/googlenav/aY;)Lcom/google/googlenav/aW;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 658
    new-instance v0, Lcom/google/googlenav/aW;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/aW;-><init>(Lcom/google/googlenav/aW;ILcom/google/googlenav/aY;)V

    return-object v0
.end method

.method public a(B)V
    .registers 2
    .parameter

    .prologue
    .line 2454
    iput-byte p1, p0, Lcom/google/googlenav/aW;->D:B

    .line 2455
    return-void
.end method

.method public a(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2403
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->c()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/aW;->af:I

    .line 2406
    iget v0, p0, Lcom/google/googlenav/aW;->C:I

    if-eq p1, v0, :cond_1a

    .line 2407
    iget-byte v0, p0, Lcom/google/googlenav/aW;->D:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    .line 2408
    const/4 v0, 0x5

    const-string v1, "1"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2418
    :cond_1a
    :goto_1a
    iput p1, p0, Lcom/google/googlenav/aW;->C:I

    .line 2420
    if-gez p1, :cond_32

    .line 2421
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/google/googlenav/aW;->D:B

    .line 2427
    :cond_21
    :goto_21
    return-void

    .line 2411
    :cond_22
    iget-byte v0, p0, Lcom/google/googlenav/aW;->D:B

    if-ne v0, v3, :cond_1a

    .line 2412
    const/16 v0, 0x12

    const-string v1, "1"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 2423
    :cond_32
    iget-byte v0, p0, Lcom/google/googlenav/aW;->D:B

    if-nez v0, :cond_21

    .line 2424
    iput-byte v3, p0, Lcom/google/googlenav/aW;->D:B

    goto :goto_21
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 2397
    iput-wide p1, p0, Lcom/google/googlenav/aW;->W:J

    .line 2398
    return-void
.end method

.method public a(Lcom/google/googlenav/aW;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2565
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->f()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->f()I

    move-result v2

    add-int/2addr v0, v2

    .line 2567
    new-array v2, v0, [Lcom/google/googlenav/ai;

    move v0, v1

    .line 2568
    :goto_d
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->f()I

    move-result v3

    if-ge v0, v3, :cond_1c

    .line 2569
    iget-object v3, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 2568
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1c
    move v0, v1

    .line 2572
    :goto_1d
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->f()I

    move-result v3

    if-ge v0, v3, :cond_43

    .line 2573
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->aE()[Lcom/google/googlenav/ai;

    move-result-object v3

    aget-object v3, v3, v0

    .line 2578
    invoke-virtual {v3, v1}, Lcom/google/googlenav/ai;->a(B)V

    .line 2579
    invoke-virtual {v3}, Lcom/google/googlenav/ai;->ad()V

    .line 2580
    iget-object v4, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-boolean v4, v4, Lcom/google/googlenav/bc;->A:Z

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ai;->e(Z)V

    .line 2581
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->f()I

    move-result v4

    add-int/2addr v4, v0

    aput-object v3, v2, v4

    .line 2582
    invoke-virtual {p0, v3}, Lcom/google/googlenav/aW;->a(Lcom/google/googlenav/ai;)V

    .line 2572
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 2585
    :cond_43
    iput-object v2, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    .line 2587
    iget v0, p1, Lcom/google/googlenav/aW;->p:I

    iput v0, p0, Lcom/google/googlenav/aW;->p:I

    .line 2588
    iget-boolean v0, p1, Lcom/google/googlenav/aW;->r:Z

    iput-boolean v0, p0, Lcom/google/googlenav/aW;->r:Z

    .line 2589
    invoke-direct {p0}, Lcom/google/googlenav/aW;->aY()V

    .line 2590
    return-void
.end method

.method public a(Lcom/google/googlenav/ai;)V
    .registers 5
    .parameter

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/google/googlenav/aW;->R:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/googlenav/az;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1699
    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 13
    .parameter

    .prologue
    const/16 v10, 0x10

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1107
    new-instance v5, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/fz;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 1109
    iget-object v0, p0, Lcom/google/googlenav/aW;->h:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1110
    iget v0, p0, Lcom/google/googlenav/aW;->i:I

    invoke-virtual {v5, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1111
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/googlenav/aW;->F:I

    invoke-virtual {v5, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1112
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/googlenav/aW;->al()I

    move-result v1

    invoke-virtual {v5, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1114
    iget-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-boolean v0, v0, Lcom/google/googlenav/bc;->n:Z

    if-eqz v0, :cond_46

    .line 1115
    iget-object v0, p0, Lcom/google/googlenav/aW;->t:Lat/H;

    invoke-virtual {v0}, Lat/H;->a()Lat/B;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/aW;->v:I

    iget v3, p0, Lcom/google/googlenav/aW;->w:I

    iget-object v6, p0, Lcom/google/googlenav/aW;->t:Lat/H;

    invoke-virtual {v6}, Lat/H;->b()Lat/Y;

    move-result-object v6

    invoke-virtual {v6}, Lat/Y;->a()I

    move-result v6

    invoke-static {v0, v1, v3, v6}, Lat/C;->a(Lat/B;III)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1118
    invoke-virtual {v5, v9, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1121
    :cond_46
    sget-boolean v0, Lcom/google/googlenav/aW;->a:Z

    if-eqz v0, :cond_62

    .line 1123
    const/4 v0, 0x7

    invoke-virtual {v5, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1124
    const/16 v0, 0x12

    invoke-virtual {v5, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1125
    const/16 v0, 0x2e

    invoke-virtual {v5, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1126
    const/16 v0, 0x33

    invoke-virtual {v5, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1127
    const/16 v0, 0x34

    invoke-virtual {v5, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1129
    :cond_62
    const/16 v0, 0x8

    invoke-virtual {v5, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1130
    const/16 v0, 0x11

    invoke-virtual {v5, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1131
    const/16 v0, 0x24

    invoke-virtual {v5, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1139
    const/4 v0, 0x6

    invoke-virtual {v5, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1142
    const/16 v0, 0x13

    invoke-virtual {v5, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1145
    const/16 v0, 0x14

    invoke-virtual {v5, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1148
    const/16 v0, 0x18

    invoke-virtual {v5, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1152
    const/16 v0, 0xe

    invoke-virtual {v5, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1156
    iget v0, p0, Lcom/google/googlenav/aW;->i:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_d7

    invoke-static {}, Lcom/google/googlenav/ui/bn;->c()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 1157
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/D;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 1160
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v1

    .line 1161
    invoke-virtual {v1}, Lcom/google/googlenav/ui/bn;->I()I

    move-result v3

    add-int/lit8 v3, v3, -0x14

    invoke-virtual {v0, v4, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1163
    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bn;->a(Z)I

    move-result v1

    add-int/lit8 v1, v1, -0x14

    invoke-virtual {v0, v8, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1165
    const/16 v1, 0x12

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1166
    invoke-virtual {v0, v10, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 1171
    invoke-virtual {v0, v10, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 1177
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    long-to-int v1, v6

    div-int/lit16 v1, v1, 0x400

    div-int/lit8 v1, v1, 0x3

    .line 1178
    const/16 v3, 0xc8

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v9, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1181
    const/16 v1, 0xc

    invoke-virtual {v5, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1184
    :cond_d7
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->W()I

    move-result v0

    invoke-virtual {v5, v10, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1186
    const/16 v0, 0x1a

    invoke-virtual {v5, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1188
    const/16 v0, 0x12

    invoke-virtual {v5, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1190
    const/16 v0, 0x16

    const/16 v1, 0x100

    invoke-virtual {v5, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1191
    const/16 v0, 0x19

    invoke-virtual {v5, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1198
    const/16 v0, 0x20

    invoke-virtual {v5, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1201
    const/16 v0, 0x21

    invoke-virtual {v5, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1203
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->aN()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 1204
    const/16 v0, 0x32

    invoke-virtual {v5, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1208
    :cond_109
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->P()Lat/M;

    move-result-object v0

    if-eqz v0, :cond_139

    .line 1209
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/do;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 1211
    invoke-virtual {v0, v4, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1212
    invoke-virtual {v0, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 1213
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/googlenav/aW;->P()Lat/M;

    move-result-object v6

    invoke-virtual {v6}, Lat/M;->j()[Lat/B;

    move-result-object v6

    invoke-static {v6}, Lat/M;->a([Lat/B;)[B

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBytes(I[B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1216
    const/4 v3, 0x4

    invoke-virtual {v1, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1217
    invoke-virtual {v0, v9, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1218
    const/16 v1, 0x1b

    invoke-virtual {v5, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1222
    :cond_139
    const/16 v0, 0x17

    invoke-virtual {v5, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1226
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->aB()Lat/B;

    move-result-object v0

    if-eqz v0, :cond_15b

    .line 1227
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/do;->h:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 1229
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->aB()Lat/B;

    move-result-object v1

    invoke-virtual {v1}, Lat/B;->g()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1231
    const/16 v1, 0x1c

    invoke-virtual {v5, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1235
    :cond_15b
    const/16 v0, 0x1e

    iget-boolean v1, p0, Lcom/google/googlenav/aW;->S:Z

    invoke-virtual {v5, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1238
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->av()Z

    move-result v0

    if-eqz v0, :cond_180

    .line 1239
    const/16 v0, 0x1f

    invoke-virtual {v5, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1240
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/eT;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 1241
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->aw()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1242
    const/16 v1, 0x23

    invoke-virtual {v5, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1247
    :cond_180
    const/16 v0, 0x2f

    invoke-virtual {v5, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1249
    iget-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-boolean v0, v0, Lcom/google/googlenav/bc;->z:Z

    if-eqz v0, :cond_190

    .line 1250
    const/16 v0, 0x31

    invoke-virtual {v5, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1253
    :cond_190
    iget-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-object v0, v0, Lcom/google/googlenav/bc;->B:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_19f

    .line 1254
    const/16 v0, 0x37

    iget-object v1, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-object v1, v1, Lcom/google/googlenav/bc;->B:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v5, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1258
    :cond_19f
    invoke-direct {p0, v5}, Lcom/google/googlenav/aW;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1261
    const/16 v0, 0x26

    invoke-virtual {v5, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1264
    iget-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-object v0, v0, Lcom/google/googlenav/bc;->u:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_1c3

    move v0, v2

    .line 1265
    :goto_1ae
    iget-object v1, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-object v1, v1, Lcom/google/googlenav/bc;->u:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    array-length v1, v1

    if-ge v0, v1, :cond_1c3

    .line 1266
    const/16 v1, 0x27

    iget-object v3, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-object v3, v3, Lcom/google/googlenav/bc;->u:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    aget-object v3, v3, v0

    invoke-virtual {v5, v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1265
    add-int/lit8 v0, v0, 0x1

    goto :goto_1ae

    .line 1271
    :cond_1c3
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->a()I

    move-result v0

    invoke-static {v0, v5, v4}, Lcom/google/googlenav/ah;->a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V

    .line 1274
    const/16 v0, 0x2b

    invoke-virtual {v5, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1281
    const/16 v0, 0x35

    invoke-virtual {v5, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1288
    const/16 v0, 0x36

    invoke-virtual {v5, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1292
    sget-boolean v0, Lcom/google/googlenav/aW;->b:Z

    if-eqz v0, :cond_27b

    .line 1293
    sget-object v0, Lcom/google/googlenav/aW;->Z:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e3
    :goto_1e3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_206

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1294
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1e3

    .line 1295
    new-instance v3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v6, Lcom/google/wireless/googlenav/proto/j2me/fz;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 1297
    invoke-virtual {v3, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1298
    const/16 v0, 0x2c

    invoke-virtual {v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_1e3

    .line 1304
    :cond_206
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->aJ()Ljava/util/Map;

    move-result-object v0

    .line 1305
    if-eqz v0, :cond_27b

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_27b

    .line 1306
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_21a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aZ;

    .line 1307
    new-instance v7, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/fz;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 1309
    invoke-virtual {v0}, Lcom/google/googlenav/aZ;->a()I

    move-result v1

    invoke-virtual {v7, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1310
    invoke-virtual {v0}, Lcom/google/googlenav/aZ;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_275

    move v3, v2

    .line 1311
    :goto_23b
    invoke-virtual {v0}, Lcom/google/googlenav/aZ;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_275

    .line 1312
    new-instance v8, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/fz;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v8, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 1314
    invoke-virtual {v0}, Lcom/google/googlenav/aZ;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ba;

    invoke-virtual {v1}, Lcom/google/googlenav/ba;->a()I

    move-result v1

    invoke-virtual {v8, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1315
    invoke-virtual {v0}, Lcom/google/googlenav/aZ;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ba;

    invoke-virtual {v1}, Lcom/google/googlenav/ba;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v9, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1317
    invoke-virtual {v7, v9, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1311
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_23b

    .line 1320
    :cond_275
    const/16 v0, 0x2d

    invoke-virtual {v5, v0, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_21a

    .line 1326
    :cond_27b
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->aK()Ljava/util/Set;

    move-result-object v0

    .line 1328
    if-eqz v0, :cond_2a5

    .line 1329
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_285
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bb;

    .line 1330
    new-instance v3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v6, Lcom/google/wireless/googlenav/proto/j2me/fz;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 1334
    invoke-virtual {v0}, Lcom/google/googlenav/bb;->a()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1335
    const/16 v0, 0x39

    invoke-virtual {v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_285

    .line 1341
    :cond_2a5
    const/16 v0, 0x2a

    invoke-virtual {p0}, Lcom/google/googlenav/aW;->D()Z

    move-result v1

    if-eqz v1, :cond_2b4

    invoke-virtual {p0}, Lcom/google/googlenav/aW;->af()Z

    move-result v1

    if-nez v1, :cond_2b4

    move v2, v4

    :cond_2b4
    invoke-virtual {v5, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1344
    iget-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-object v0, v0, Lcom/google/googlenav/bc;->D:LaC/N;

    if-eqz v0, :cond_2d4

    iget-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-object v0, v0, Lcom/google/googlenav/bc;->D:LaC/N;

    invoke-virtual {v0}, LaC/N;->f()Z

    move-result v0

    if-eqz v0, :cond_2d4

    .line 1345
    const/16 v0, 0x3a

    iget-object v1, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-object v1, v1, Lcom/google/googlenav/bc;->D:LaC/N;

    invoke-virtual {v1}, LaC/N;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1349
    :cond_2d4
    iget-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-boolean v0, v0, Lcom/google/googlenav/bc;->G:Z

    if-eqz v0, :cond_2df

    .line 1350
    const/16 v0, 0x3c

    invoke-virtual {v5, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1353
    :cond_2df
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v5, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 1354
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 986
    iput-boolean p1, p0, Lcom/google/googlenav/aW;->n:Z

    .line 987
    return-void
.end method

.method public a([Lcom/google/googlenav/ai;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2593
    if-nez p1, :cond_4

    .line 2613
    :goto_3
    return-void

    .line 2596
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 2597
    :goto_a
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->f()I

    move-result v2

    if-ge v0, v2, :cond_1a

    .line 2598
    iget-object v2, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    aget-object v2, v2, v0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2597
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1a
    move v0, v1

    .line 2602
    :goto_1b
    array-length v2, p1

    if-ge v1, v2, :cond_33

    .line 2603
    aget-object v4, p1, v1

    .line 2604
    invoke-virtual {v4}, Lcom/google/googlenav/ai;->aL()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2605
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v0, v2

    .line 2602
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 2607
    :cond_2f
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 2611
    :cond_33
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/ai;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/ai;

    iput-object v0, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    .line 2612
    invoke-direct {p0}, Lcom/google/googlenav/aW;->aY()V

    goto :goto_3
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0x1be

    const/16 v4, 0x17

    const/4 v1, 0x1

    .line 1409
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/googlenav/aW;->a(J)V

    .line 1411
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1414
    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/google/googlenav/aW;->A:I

    .line 1415
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/aW;->B:Ljava/lang/String;

    .line 1416
    const/16 v2, 0x19

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v2

    iput v2, p0, Lcom/google/googlenav/aW;->ag:I

    .line 1418
    iget v2, p0, Lcom/google/googlenav/aW;->A:I

    packed-switch v2, :pswitch_data_ba

    .line 1459
    :cond_33
    :goto_33
    :pswitch_33
    iput-boolean v1, p0, Lcom/google/googlenav/aW;->z:Z

    .line 1462
    sget-object v2, Lcom/google/googlenav/aW;->E:LaT/h;

    invoke-virtual {v2}, LaT/h;->b()V

    .line 1464
    invoke-direct {p0}, Lcom/google/googlenav/aW;->aT()V

    .line 1468
    iget-object v2, p0, Lcom/google/googlenav/aW;->V:Lcom/google/googlenav/aY;

    if-eqz v2, :cond_4a

    .line 1469
    iget-object v2, p0, Lcom/google/googlenav/aW;->V:Lcom/google/googlenav/aY;

    invoke-virtual {p0}, Lcom/google/googlenav/aW;->w()Z

    move-result v3

    invoke-interface {v2, p0, v3}, Lcom/google/googlenav/aY;->a(Lcom/google/googlenav/aW;Z)V

    .line 1477
    :cond_4a
    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 1478
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-nez v0, :cond_af

    move v0, v1

    :goto_5b
    invoke-virtual {v2, v0}, Lcom/google/googlenav/K;->d(Z)V

    .line 1485
    :goto_5e
    return v1

    .line 1421
    :pswitch_5f
    const-string v2, ""

    iput-object v2, p0, Lcom/google/googlenav/aW;->B:Ljava/lang/String;

    .line 1425
    :pswitch_63
    invoke-direct {p0, v0}, Lcom/google/googlenav/aW;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1426
    invoke-direct {p0, p1}, Lcom/google/googlenav/aW;->k(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1427
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->ab()Z

    move-result v2

    if-nez v2, :cond_7a

    .line 1428
    iput v1, p0, Lcom/google/googlenav/aW;->A:I

    .line 1429
    const/16 v2, 0x5f2

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/aW;->B:Ljava/lang/String;

    goto :goto_33

    .line 1430
    :cond_7a
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->W()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_33

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    if-nez v2, :cond_33

    .line 1432
    iput v1, p0, Lcom/google/googlenav/aW;->A:I

    .line 1433
    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/aW;->B:Ljava/lang/String;

    goto :goto_33

    .line 1440
    :pswitch_93
    invoke-direct {p0, v0}, Lcom/google/googlenav/aW;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1441
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->B()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/aW;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1443
    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/aW;->B:Ljava/lang/String;

    goto :goto_33

    .line 1453
    :pswitch_a7
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/aW;->o:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_33

    .line 1478
    :cond_af
    const/4 v0, 0x0

    goto :goto_5b

    .line 1482
    :cond_b1
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/K;->d(Z)V

    goto :goto_5e

    .line 1418
    nop

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_63
        :pswitch_93
        :pswitch_33
        :pswitch_5f
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_a7
    .end packed-switch
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 3
    .parameter

    .prologue
    .line 1389
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ga;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1391
    invoke-virtual {p0, v0}, Lcom/google/googlenav/aW;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    return v0
.end method

.method public aA()Z
    .registers 2

    .prologue
    .line 2477
    iget-boolean v0, p0, Lcom/google/googlenav/aW;->S:Z

    return v0
.end method

.method public aB()Lat/B;
    .registers 2

    .prologue
    .line 2481
    iget-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-object v0, v0, Lcom/google/googlenav/bc;->p:Lat/B;

    return-object v0
.end method

.method public aC()Z
    .registers 2

    .prologue
    .line 2485
    iget-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-boolean v0, v0, Lcom/google/googlenav/bc;->F:Z

    return v0
.end method

.method public aD()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 2507
    move v1, v0

    .line 2508
    :goto_2
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->f()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 2509
    iget-object v2, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->aZ()I

    move-result v2

    if-lez v2, :cond_17

    .line 2510
    add-int/lit8 v1, v1, 0x1

    .line 2508
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2515
    :cond_17
    return v1
.end method

.method public aE()[Lcom/google/googlenav/ai;
    .registers 2

    .prologue
    .line 2556
    iget-object v0, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    return-object v0
.end method

.method public aF()V
    .registers 5

    .prologue
    const/16 v3, 0xa

    .line 2617
    iget-object v0, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    array-length v0, v0

    if-le v0, v3, :cond_1a

    .line 2618
    new-array v1, v3, [Lcom/google/googlenav/ai;

    .line 2619
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v3, :cond_15

    .line 2620
    iget-object v2, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 2619
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2623
    :cond_15
    iput-object v1, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    .line 2624
    invoke-direct {p0}, Lcom/google/googlenav/aW;->aY()V

    .line 2626
    :cond_1a
    return-void
.end method

.method public aG()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 2642
    iget-object v0, p0, Lcom/google/googlenav/aW;->X:[Ljava/lang/String;

    return-object v0
.end method

.method public aH()[Lcom/google/googlenav/aZ;
    .registers 2

    .prologue
    .line 2646
    iget-object v0, p0, Lcom/google/googlenav/aW;->aa:[Lcom/google/googlenav/aZ;

    return-object v0
.end method

.method public aI()[Lcom/google/googlenav/bb;
    .registers 2

    .prologue
    .line 2655
    iget-object v0, p0, Lcom/google/googlenav/aW;->ab:[Lcom/google/googlenav/bb;

    return-object v0
.end method

.method public aJ()Ljava/util/Map;
    .registers 2

    .prologue
    .line 2687
    iget-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-object v0, v0, Lcom/google/googlenav/bc;->w:Ljava/util/Map;

    return-object v0
.end method

.method public aK()Ljava/util/Set;
    .registers 2

    .prologue
    .line 2699
    iget-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-object v0, v0, Lcom/google/googlenav/bc;->x:Ljava/util/Set;

    return-object v0
.end method

.method public aL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2703
    iget-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-object v0, v0, Lcom/google/googlenav/bc;->v:Ljava/lang/String;

    return-object v0
.end method

.method public aM()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 2818
    iget-object v0, p0, Lcom/google/googlenav/aW;->ae:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public aN()Z
    .registers 2

    .prologue
    .line 2822
    iget-boolean v0, p0, Lcom/google/googlenav/aW;->ad:Z

    return v0
.end method

.method public aO()Z
    .registers 2

    .prologue
    .line 2843
    iget-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-boolean v0, v0, Lcom/google/googlenav/bc;->I:Z

    return v0
.end method

.method public aa()Lcom/google/googlenav/layer/a;
    .registers 2

    .prologue
    .line 1816
    iget-object v0, p0, Lcom/google/googlenav/aW;->O:Lcom/google/googlenav/layer/a;

    return-object v0
.end method

.method public ab()Z
    .registers 2

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public ac()Lcom/google/googlenav/layer/m;
    .registers 2

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/google/googlenav/aW;->N:Lcom/google/googlenav/layer/m;

    return-object v0
.end method

.method public ad()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1834
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->f()I

    move-result v2

    if-ne v2, v0, :cond_15

    invoke-virtual {p0, v1}, Lcom/google/googlenav/aW;->b(I)Lcom/google/googlenav/E;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/E;->c()B

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_15

    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14
.end method

.method public ae()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1844
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->f()I

    move-result v0

    if-ne v0, v1, :cond_16

    invoke-virtual {p0, v2}, Lcom/google/googlenav/aW;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bA()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    :goto_15
    return v0

    :cond_16
    move v0, v2

    goto :goto_15
.end method

.method public af()Z
    .registers 2

    .prologue
    .line 1855
    iget-boolean v0, p0, Lcom/google/googlenav/aW;->P:Z

    if-eqz v0, :cond_4

    .line 1858
    :cond_4
    iget-boolean v0, p0, Lcom/google/googlenav/aW;->P:Z

    return v0
.end method

.method public ag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/google/googlenav/aW;->I:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1897
    const/4 v0, 0x0

    .line 1905
    :goto_9
    return-object v0

    .line 1900
    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/aW;->I:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/googlenav/ai;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/aW;->J:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1903
    iget-object v0, p0, Lcom/google/googlenav/aW;->J:Ljava/lang/String;

    goto :goto_9

    .line 1905
    :cond_1d
    iget-object v0, p0, Lcom/google/googlenav/aW;->I:Ljava/lang/String;

    goto :goto_9
.end method

.method public ah()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 13

    .prologue
    const/4 v11, 0x3

    const/4 v6, -0x1

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1956
    new-instance v5, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/fz;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 1958
    iget v0, p0, Lcom/google/googlenav/aW;->A:I

    invoke-virtual {v5, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1959
    iget-object v0, p0, Lcom/google/googlenav/aW;->B:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1960
    iget-object v0, p0, Lcom/google/googlenav/aW;->B:Ljava/lang/String;

    invoke-virtual {v5, v10, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1962
    :cond_1e
    iget v0, p0, Lcom/google/googlenav/aW;->ag:I

    if-eq v0, v6, :cond_29

    .line 1963
    const/16 v0, 0x19

    iget v3, p0, Lcom/google/googlenav/aW;->ag:I

    invoke-virtual {v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1965
    :cond_29
    iget-object v0, p0, Lcom/google/googlenav/aW;->h:Ljava/lang/String;

    invoke-virtual {v5, v11, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1966
    iget-object v0, p0, Lcom/google/googlenav/aW;->L:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 1967
    const/16 v0, 0xe

    iget-object v3, p0, Lcom/google/googlenav/aW;->L:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1969
    :cond_3d
    iget-object v0, p0, Lcom/google/googlenav/aW;->M:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 1970
    const/16 v0, 0xf

    iget-object v3, p0, Lcom/google/googlenav/aW;->M:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1972
    :cond_4c
    iget-object v0, p0, Lcom/google/googlenav/aW;->l:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 1973
    const/4 v0, 0x6

    iget-object v3, p0, Lcom/google/googlenav/aW;->l:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1976
    :cond_5a
    const/4 v0, 0x5

    invoke-virtual {v5, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1978
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->O()Lat/B;

    move-result-object v0

    iget v3, p0, Lcom/google/googlenav/aW;->v:I

    iget v4, p0, Lcom/google/googlenav/aW;->w:I

    invoke-static {v0, v3, v4, v6}, Lat/C;->a(Lat/B;III)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1980
    const/4 v3, 0x7

    invoke-virtual {v5, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1982
    const/16 v0, 0xb

    iget v3, p0, Lcom/google/googlenav/aW;->F:I

    invoke-virtual {v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1983
    invoke-direct {p0, v5}, Lcom/google/googlenav/aW;->l(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1985
    new-instance v3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/fz;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 1988
    iget-object v0, p0, Lcom/google/googlenav/aW;->G:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_136

    .line 1989
    iget-object v0, p0, Lcom/google/googlenav/aW;->G:Ljava/lang/String;

    invoke-virtual {v3, v10, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move v0, v1

    .line 1993
    :goto_8d
    iget-object v4, p0, Lcom/google/googlenav/aW;->H:Ljava/lang/String;

    invoke-static {v4}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9c

    .line 1994
    const/4 v0, 0x7

    iget-object v4, p0, Lcom/google/googlenav/aW;->H:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move v0, v1

    .line 1999
    :cond_9c
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->ag()Ljava/lang/String;

    move-result-object v4

    .line 2000
    invoke-static {v4}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_ac

    .line 2004
    const/16 v0, 0x8

    invoke-virtual {v3, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move v0, v1

    .line 2008
    :cond_ac
    if-eqz v0, :cond_b3

    .line 2009
    const/16 v0, 0x9

    invoke-virtual {v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2012
    :cond_b3
    iget-object v0, p0, Lcom/google/googlenav/aW;->N:Lcom/google/googlenav/layer/m;

    if-eqz v0, :cond_bc

    .line 2013
    const/16 v0, 0xc

    invoke-virtual {v5, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2016
    :cond_bc
    iget-object v0, p0, Lcom/google/googlenav/aW;->X:[Ljava/lang/String;

    if-eqz v0, :cond_d2

    move v0, v2

    .line 2017
    :goto_c1
    iget-object v3, p0, Lcom/google/googlenav/aW;->X:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_d2

    .line 2018
    const/16 v3, 0x11

    iget-object v4, p0, Lcom/google/googlenav/aW;->X:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v5, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 2017
    add-int/lit8 v0, v0, 0x1

    goto :goto_c1

    .line 2022
    :cond_d2
    iget-object v0, p0, Lcom/google/googlenav/aW;->aa:[Lcom/google/googlenav/aZ;

    if-eqz v0, :cond_135

    move v3, v2

    .line 2023
    :goto_d7
    iget-object v0, p0, Lcom/google/googlenav/aW;->aa:[Lcom/google/googlenav/aZ;

    array-length v0, v0

    if-ge v3, v0, :cond_135

    .line 2024
    iget-object v0, p0, Lcom/google/googlenav/aW;->aa:[Lcom/google/googlenav/aZ;

    aget-object v6, v0, v3

    .line 2025
    new-instance v7, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/fz;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 2027
    invoke-virtual {v6}, Lcom/google/googlenav/aZ;->a()I

    move-result v0

    invoke-virtual {v7, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2028
    invoke-virtual {v6}, Lcom/google/googlenav/aZ;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v10, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2029
    invoke-virtual {v6}, Lcom/google/googlenav/aZ;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12c

    move v4, v2

    .line 2030
    :goto_fc
    invoke-virtual {v6}, Lcom/google/googlenav/aZ;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_12c

    .line 2031
    new-instance v8, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/fz;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 2033
    invoke-virtual {v6}, Lcom/google/googlenav/aZ;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ba;

    .line 2034
    invoke-virtual {v0}, Lcom/google/googlenav/ba;->a()I

    move-result v9

    invoke-virtual {v8, v1, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2035
    invoke-virtual {v0}, Lcom/google/googlenav/ba;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v10, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2036
    invoke-virtual {v7, v11, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 2030
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_fc

    .line 2039
    :cond_12c
    const/16 v0, 0x12

    invoke-virtual {v5, v0, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 2023
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_d7

    .line 2042
    :cond_135
    return-object v5

    :cond_136
    move v0, v2

    goto/16 :goto_8d
.end method

.method public ai()[Lcom/google/googlenav/ui/aG;
    .registers 6

    .prologue
    .line 2165
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2168
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->P()Lat/M;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2169
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->P()Lat/M;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2172
    :cond_12
    const/4 v0, 0x0

    move v2, v0

    :goto_14
    iget-object v0, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    array-length v0, v0

    if-ge v2, v0, :cond_23

    .line 2173
    iget-object v0, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->D()Lat/g;

    move-result-object v1

    .line 2174
    if-nez v1, :cond_2b

    .line 2187
    :cond_23
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_47

    .line 2188
    const/4 v0, 0x0

    .line 2190
    :goto_2a
    return-object v0

    .line 2177
    :cond_2b
    invoke-interface {v1}, Lat/g;->a()I

    move-result v0

    .line 2178
    const/4 v4, 0x2

    if-eq v0, v4, :cond_35

    const/4 v4, 0x3

    if-ne v0, v4, :cond_43

    :cond_35
    move-object v0, v1

    .line 2180
    check-cast v0, Lcom/google/googlenav/ui/aG;

    invoke-interface {v0}, Lcom/google/googlenav/ui/aG;->h()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2182
    check-cast v1, Lcom/google/googlenav/ui/aG;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2172
    :cond_43
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14

    .line 2190
    :cond_47
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/ui/aG;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/ui/aG;

    goto :goto_2a
.end method

.method public aj()I
    .registers 2

    .prologue
    .line 2199
    iget v0, p0, Lcom/google/googlenav/aW;->F:I

    return v0
.end method

.method public ak()I
    .registers 2

    .prologue
    .line 2203
    iget v0, p0, Lcom/google/googlenav/aW;->p:I

    return v0
.end method

.method public al()I
    .registers 3

    .prologue
    .line 2207
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->ao()Z

    move-result v0

    if-eqz v0, :cond_e

    sget v0, Lcom/google/googlenav/aW;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 2208
    sget v0, Lcom/google/googlenav/aW;->d:I

    .line 2213
    :goto_d
    return v0

    .line 2210
    :cond_e
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->au()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2211
    const/16 v0, 0x14

    goto :goto_d

    .line 2213
    :cond_17
    const/16 v0, 0xa

    goto :goto_d
.end method

.method public am()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 2219
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->f()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/googlenav/aW;->al()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 2233
    :cond_b
    :goto_b
    return v0

    .line 2225
    :cond_c
    iget-boolean v1, p0, Lcom/google/googlenav/aW;->r:Z

    if-eqz v1, :cond_b

    .line 2229
    const v0, 0x7fffffff

    .line 2230
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->ak()I

    move-result v1

    if-lez v1, :cond_27

    .line 2231
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->ak()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/aW;->aj()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/googlenav/aW;->f()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 2233
    :cond_27
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->al()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_b
.end method

.method public an()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/google/googlenav/aW;->s:Ljava/lang/String;

    return-object v0
.end method

.method public ao()Z
    .registers 2

    .prologue
    .line 2241
    iget-boolean v0, p0, Lcom/google/googlenav/aW;->q:Z

    return v0
.end method

.method public ap()I
    .registers 3

    .prologue
    .line 2262
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 2263
    iget-object v1, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->ab()Z

    move-result v1

    if-nez v1, :cond_11

    .line 2267
    :goto_10
    return v0

    .line 2262
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2267
    :cond_14
    const/4 v0, -0x1

    goto :goto_10
.end method

.method public aq()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 2272
    move v1, v0

    .line 2273
    :goto_2
    iget-object v2, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    array-length v2, v2

    if-ge v0, v2, :cond_16

    .line 2274
    iget-object v2, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->ab()Z

    move-result v2

    if-nez v2, :cond_13

    .line 2275
    add-int/lit8 v1, v1, 0x1

    .line 2273
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2278
    :cond_16
    return v1
.end method

.method public ar()Z
    .registers 3

    .prologue
    .line 2304
    iget v0, p0, Lcom/google/googlenav/aW;->i:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public as()Z
    .registers 3

    .prologue
    .line 2314
    iget v0, p0, Lcom/google/googlenav/aW;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    invoke-virtual {p0}, Lcom/google/googlenav/aW;->ao()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public at()Z
    .registers 3

    .prologue
    .line 2333
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->aJ()Ljava/util/Map;

    move-result-object v0

    .line 2334
    if-eqz v0, :cond_10

    .line 2335
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 2337
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public au()Z
    .registers 3

    .prologue
    .line 2346
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->W()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public av()Z
    .registers 2

    .prologue
    .line 2360
    iget-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-boolean v0, v0, Lcom/google/googlenav/bc;->q:Z

    return v0
.end method

.method public aw()I
    .registers 2

    .prologue
    .line 2364
    iget-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget v0, v0, Lcom/google/googlenav/bc;->s:I

    return v0
.end method

.method public ax()Z
    .registers 2

    .prologue
    .line 2380
    iget-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-boolean v0, v0, Lcom/google/googlenav/bc;->m:Z

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/google/googlenav/aW;->H()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/google/googlenav/aW;->F()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-direct {p0}, Lcom/google/googlenav/aW;->aR()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-direct {p0}, Lcom/google/googlenav/aW;->aS()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public ay()J
    .registers 3

    .prologue
    .line 2389
    iget-wide v0, p0, Lcom/google/googlenav/aW;->W:J

    return-wide v0
.end method

.method public az()Z
    .registers 2

    .prologue
    .line 2473
    iget-boolean v0, p0, Lcom/google/googlenav/aW;->K:Z

    return v0
.end method

.method public b(I)Lcom/google/googlenav/E;
    .registers 3
    .parameter

    .prologue
    .line 2441
    if-ltz p1, :cond_7

    iget-object v0, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    array-length v0, v0

    if-lt p1, v0, :cond_9

    .line 2442
    :cond_7
    const/4 v0, 0x0

    .line 2444
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    aget-object v0, v0, p1

    goto :goto_8
.end method

.method public b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5
    .parameter

    .prologue
    .line 2056
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ga;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 2058
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2060
    iget-object v1, p0, Lcom/google/googlenav/aW;->N:Lcom/google/googlenav/layer/m;

    if-eqz v1, :cond_19

    .line 2061
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/aW;->N:Lcom/google/googlenav/layer/m;

    invoke-virtual {v2}, Lcom/google/googlenav/layer/m;->o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2064
    :cond_19
    return-object v0
.end method

.method public b(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 1915
    invoke-direct {p0}, Lcom/google/googlenav/aW;->aX()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1916
    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1917
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 777
    iput-object p1, p0, Lcom/google/googlenav/aW;->B:Ljava/lang/String;

    .line 778
    return-void
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 2492
    iput-boolean p1, p0, Lcom/google/googlenav/aW;->K:Z

    .line 2493
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 2431
    iget v0, p0, Lcom/google/googlenav/aW;->C:I

    return v0
.end method

.method public c(I)I
    .registers 3
    .parameter

    .prologue
    .line 2464
    invoke-direct {p0, p1}, Lcom/google/googlenav/aW;->h(I)I

    move-result v0

    return v0
.end method

.method public c(Z)V
    .registers 2
    .parameter

    .prologue
    .line 2826
    iput-boolean p1, p0, Lcom/google/googlenav/aW;->ad:Z

    .line 2827
    return-void
.end method

.method public d()B
    .registers 2

    .prologue
    .line 2436
    iget-byte v0, p0, Lcom/google/googlenav/aW;->D:B

    return v0
.end method

.method public d(I)V
    .registers 2
    .parameter

    .prologue
    .line 781
    iput p1, p0, Lcom/google/googlenav/aW;->A:I

    .line 782
    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 2356
    iget-object v0, p0, Lcom/google/googlenav/aW;->R:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e()Lcom/google/googlenav/E;
    .registers 2

    .prologue
    .line 2449
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/aW;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    return-object v0
.end method

.method public e(I)V
    .registers 2
    .parameter

    .prologue
    .line 965
    iput p1, p0, Lcom/google/googlenav/aW;->U:I

    .line 966
    return-void
.end method

.method public f()I
    .registers 2

    .prologue
    .line 2459
    iget-object v0, p0, Lcom/google/googlenav/aW;->e:[Lcom/google/googlenav/ai;

    array-length v0, v0

    return v0
.end method

.method public f(I)I
    .registers 3
    .parameter

    .prologue
    .line 2251
    if-ltz p1, :cond_7

    iget-object v0, p0, Lcom/google/googlenav/aW;->Q:[I

    array-length v0, v0

    if-lt p1, v0, :cond_9

    .line 2252
    :cond_7
    const/4 v0, -0x1

    .line 2254
    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/aW;->Q:[I

    aget v0, v0, p1

    goto :goto_8
.end method

.method public g(I)Lcom/google/googlenav/aZ;
    .registers 4
    .parameter

    .prologue
    .line 2676
    iget-object v0, p0, Lcom/google/googlenav/aW;->aa:[Lcom/google/googlenav/aZ;

    if-eqz v0, :cond_1c

    .line 2677
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/google/googlenav/aW;->aa:[Lcom/google/googlenav/aZ;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 2678
    iget-object v1, p0, Lcom/google/googlenav/aW;->aa:[Lcom/google/googlenav/aZ;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/googlenav/aZ;->a()I

    move-result v1

    if-ne v1, p1, :cond_19

    .line 2679
    iget-object v1, p0, Lcom/google/googlenav/aW;->aa:[Lcom/google/googlenav/aZ;

    aget-object v0, v1, v0

    .line 2683
    :goto_18
    return-object v0

    .line 2677
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2683
    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public i()I
    .registers 2

    .prologue
    .line 662
    iget v0, p0, Lcom/google/googlenav/aW;->af:I

    return v0
.end method

.method public i_()Z
    .registers 2

    .prologue
    .line 1061
    const/4 v0, 0x1

    return v0
.end method

.method public k()Lcom/google/googlenav/aX;
    .registers 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    iget-object v0, v0, Lcom/google/googlenav/bc;->h:Lcom/google/googlenav/aX;

    return-object v0
.end method

.method public k_()Z
    .registers 2

    .prologue
    .line 1101
    const/4 v0, 0x1

    return v0
.end method

.method public l()Lcom/google/googlenav/aY;
    .registers 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/google/googlenav/aW;->V:Lcom/google/googlenav/aY;

    return-object v0
.end method

.method public final l_()V
    .registers 2

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/google/googlenav/aW;->V:Lcom/google/googlenav/aY;

    if-eqz v0, :cond_9

    .line 1086
    iget-object v0, p0, Lcom/google/googlenav/aW;->V:Lcom/google/googlenav/aY;

    invoke-interface {v0, p0}, Lcom/google/googlenav/aY;->a(Lcom/google/googlenav/aW;)V

    .line 1088
    :cond_9
    return-void
.end method

.method public m()Lcom/google/googlenav/bc;
    .registers 2

    .prologue
    .line 750
    iget-object v0, p0, Lcom/google/googlenav/aW;->g:Lcom/google/googlenav/bc;

    return-object v0
.end method

.method public n()Z
    .registers 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/google/googlenav/aW;->B:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

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

    .prologue
    .line 766
    iget-object v0, p0, Lcom/google/googlenav/aW;->B:Ljava/lang/String;

    return-object v0
.end method

.method public p()I
    .registers 2

    .prologue
    .line 785
    iget v0, p0, Lcom/google/googlenav/aW;->A:I

    return v0
.end method

.method public r()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 793
    iget v1, p0, Lcom/google/googlenav/aW;->A:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public s()Z
    .registers 3

    .prologue
    .line 797
    iget v0, p0, Lcom/google/googlenav/aW;->A:I

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
    .registers 3

    .prologue
    .line 802
    iget v0, p0, Lcom/google/googlenav/aW;->ag:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public u()I
    .registers 3

    .prologue
    .line 815
    iget v0, p0, Lcom/google/googlenav/aW;->ag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 816
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 818
    :cond_b
    iget v0, p0, Lcom/google/googlenav/aW;->ag:I

    return v0
.end method

.method public v()Z
    .registers 2

    .prologue
    .line 822
    invoke-virtual {p0}, Lcom/google/googlenav/aW;->s()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/google/googlenav/aW;->F()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public w()Z
    .registers 3

    .prologue
    .line 834
    iget v0, p0, Lcom/google/googlenav/aW;->A:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public x()Z
    .registers 3

    .prologue
    .line 844
    iget v0, p0, Lcom/google/googlenav/aW;->A:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public y()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 851
    iget-object v0, p0, Lcom/google/googlenav/aW;->o:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public z()I
    .registers 2

    .prologue
    .line 859
    iget v0, p0, Lcom/google/googlenav/aW;->i:I

    return v0
.end method
