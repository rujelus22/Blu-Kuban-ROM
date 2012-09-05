.class public final Lcom/sdgtl/mediahub/spr/common/di;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sdgtl/mediahub/spr/common/dd;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:I

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:Ljava/util/ArrayList;

.field public L:Ljava/util/ArrayList;

.field public M:Z

.field public N:Z

.field public O:Ljava/lang/String;

.field public P:J

.field public Q:Ljava/lang/String;

.field public R:I

.field public S:I

.field public T:I

.field public a:J

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:I

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:I

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->M:Z

    return-void
.end method

.method public constructor <init>(Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;Ljava/lang/String;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    iget-wide v0, p2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->c:J

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->a:J

    iget-wide v0, p2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->d:J

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->b:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->e:I

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->l:Ljava/lang/String;

    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->e:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/common/di;->n:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->r:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->s:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->u:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->x:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->y:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->z:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->A:Ljava/lang/String;

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->d:Ljava/lang/String;

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    iput p4, p0, Lcom/sdgtl/mediahub/spr/common/di;->D:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->F:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->A:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->G:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->B:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->H:Ljava/lang/String;

    const-string v0, "N"

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->I:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->B:Ljava/lang/String;

    const-string v0, "02"

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->v:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->M:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->P:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    :cond_a0
    const-string v0, "01"

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    :goto_a4
    return-void

    :cond_a5
    const-string v0, "02"

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    goto :goto_a4
.end method

.method public constructor <init>(Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;Ljava/lang/String;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    iget-wide v0, p2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->c:J

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->a:J

    iget-wide v0, p2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->d:J

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->b:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->e:I

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->l:Ljava/lang/String;

    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->a:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->g:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->n:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->r:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->s:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->u:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->x:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->y:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->A:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->z:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->A:Ljava/lang/String;

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->d:Ljava/lang/String;

    iget-object v0, p2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    iput p4, p0, Lcom/sdgtl/mediahub/spr/common/di;->D:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->F:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->G:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->H:Ljava/lang/String;

    const-string v0, "N"

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->I:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->y:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->B:Ljava/lang/String;

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/common/di;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->v:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->M:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->P:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    :cond_a0
    const-string v0, "01"

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    :goto_a4
    return-void

    :cond_a5
    const-string v0, "02"

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    goto :goto_a4
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->u:Ljava/lang/String;

    return-object v0
.end method
