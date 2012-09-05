.class public Lcom/google/googlenav/ui/wizard/dg;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/ui/wizard/dq;

.field private final b:Lcom/google/googlenav/ui/wizard/E;

.field private final c:Lcom/google/googlenav/ui/wizard/dm;

.field private final d:Lcom/google/googlenav/ui/wizard/aL;

.field private final e:Lcom/google/googlenav/ui/wizard/hM;

.field private final f:Lcom/google/googlenav/ui/wizard/dk;

.field private g:Lcom/google/googlenav/h;

.field private h:Lcom/google/googlenav/ui/wizard/dl;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/ui/wizard/E;Lcom/google/googlenav/ui/wizard/dm;Lcom/google/googlenav/ui/wizard/aL;Lcom/google/googlenav/ui/wizard/dl;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dg;->e:Lcom/google/googlenav/ui/wizard/hM;

    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/dg;->d:Lcom/google/googlenav/ui/wizard/aL;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/dg;->b:Lcom/google/googlenav/ui/wizard/E;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/dg;->c:Lcom/google/googlenav/ui/wizard/dm;

    iput-object p5, p0, Lcom/google/googlenav/ui/wizard/dg;->h:Lcom/google/googlenav/ui/wizard/dl;

    new-instance v0, Lcom/google/googlenav/ui/wizard/di;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/di;-><init>(Lcom/google/googlenav/ui/wizard/dg;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dg;->a:Lcom/google/googlenav/ui/wizard/dq;

    new-instance v0, Lcom/google/googlenav/ui/wizard/dk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/wizard/dk;-><init>(Lcom/google/googlenav/ui/wizard/dg;Lcom/google/googlenav/ui/wizard/dh;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dg;->f:Lcom/google/googlenav/ui/wizard/dk;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dg;->b:Lcom/google/googlenav/ui/wizard/E;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dg;->f:Lcom/google/googlenav/ui/wizard/dk;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/E;->a(Lcom/google/googlenav/ui/wizard/I;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/ui/wizard/dm;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dg;->c:Lcom/google/googlenav/ui/wizard/dm;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/h;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dg;->g:Lcom/google/googlenav/h;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/ui/wizard/E;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dg;->b:Lcom/google/googlenav/ui/wizard/E;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/ui/wizard/hM;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dg;->e:Lcom/google/googlenav/ui/wizard/hM;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/ui/wizard/dl;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dg;->h:Lcom/google/googlenav/ui/wizard/dl;

    return-object v0
.end method

.method static synthetic f(Lcom/google/googlenav/ui/wizard/dg;)Lcom/google/googlenav/ui/wizard/aL;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dg;->d:Lcom/google/googlenav/ui/wizard/aL;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/wizard/dq;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dg;->a:Lcom/google/googlenav/ui/wizard/dq;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/h;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dg;->g:Lcom/google/googlenav/h;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dg;->c:Lcom/google/googlenav/ui/wizard/dm;

    const/16 v1, 0x4f8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dm;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dg;->b:Lcom/google/googlenav/ui/wizard/E;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/E;->a()V

    return-void
.end method

.method public b(Lcom/google/googlenav/h;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dg;->g:Lcom/google/googlenav/h;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dg;->c:Lcom/google/googlenav/ui/wizard/dm;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dg;->c:Lcom/google/googlenav/ui/wizard/dm;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/dm;->a(Lcom/google/googlenav/h;)V

    :cond_b
    return-void
.end method
