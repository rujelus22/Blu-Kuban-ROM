.class final Lcom/google/common/collect/mo;
.super Lcom/google/common/collect/iv;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/TreeMultiset;

.field private b:Lcom/google/common/collect/TreeMultiset$Node;

.field private final c:Ljava/lang/Object;

.field private d:I


# direct methods
.method private constructor <init>(Lcom/google/common/collect/TreeMultiset;Ljava/lang/Object;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/google/common/collect/mo;->a:Lcom/google/common/collect/TreeMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/iv;-><init>()V

    .line 313
    #getter for: Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/mq;
    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset;->access$600(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/mq;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/TreeMultiset$Node;

    iput-object v0, p0, Lcom/google/common/collect/mo;->b:Lcom/google/common/collect/TreeMultiset$Node;

    .line 314
    iput-object p2, p0, Lcom/google/common/collect/mo;->c:Ljava/lang/Object;

    .line 315
    iput p3, p0, Lcom/google/common/collect/mo;->d:I

    .line 316
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/TreeMultiset;Ljava/lang/Object;IB)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 307
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/mo;-><init>(Lcom/google/common/collect/TreeMultiset;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/common/collect/mo;->a:Lcom/google/common/collect/TreeMultiset;

    #getter for: Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/mq;
    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->access$600(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/mq;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/mo;->b:Lcom/google/common/collect/TreeMultiset$Node;

    if-ne v0, v1, :cond_f

    .line 326
    iget v0, p0, Lcom/google/common/collect/mo;->d:I

    .line 330
    :goto_e
    return v0

    .line 329
    :cond_f
    iget-object v0, p0, Lcom/google/common/collect/mo;->a:Lcom/google/common/collect/TreeMultiset;

    #getter for: Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/mq;
    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->access$600(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/mq;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/collect/mq;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/TreeMultiset$Node;

    iput-object v0, p0, Lcom/google/common/collect/mo;->b:Lcom/google/common/collect/TreeMultiset$Node;

    .line 330
    iget-object v0, p0, Lcom/google/common/collect/mo;->a:Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/mo;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/mo;->d:I

    goto :goto_e
.end method

.method public final getElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/common/collect/mo;->c:Ljava/lang/Object;

    return-object v0
.end method
