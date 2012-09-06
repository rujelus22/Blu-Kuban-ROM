.class final Lcom/google/common/collect/fj;
.super Lcom/google/common/collect/iv;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/common/collect/fi;


# direct methods
.method constructor <init>(Lcom/google/common/collect/fi;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 798
    iput-object p1, p0, Lcom/google/common/collect/fj;->b:Lcom/google/common/collect/fi;

    iput-object p2, p0, Lcom/google/common/collect/fj;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/iv;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 3

    .prologue
    .line 805
    iget-object v0, p0, Lcom/google/common/collect/fj;->b:Lcom/google/common/collect/fi;

    iget-object v0, v0, Lcom/google/common/collect/fi;->b:Lcom/google/common/collect/fh;

    iget-object v0, v0, Lcom/google/common/collect/fh;->a:Lcom/google/common/collect/ff;

    iget-object v0, v0, Lcom/google/common/collect/ff;->a:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/iq;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/iq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/fj;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/collect/iq;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/google/common/collect/fj;->a:Ljava/lang/Object;

    return-object v0
.end method
