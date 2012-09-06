.class final Lcom/google/common/collect/cc;
.super Lcom/google/common/collect/k;
.source "SourceFile"


# instance fields
.field final synthetic a:[Ljava/lang/Object;

.field final synthetic b:I


# direct methods
.method constructor <init>(I[Ljava/lang/Object;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1014
    iput-object p2, p0, Lcom/google/common/collect/cc;->a:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/common/collect/cc;->b:I

    invoke-direct {p0, p1}, Lcom/google/common/collect/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/google/common/collect/cc;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/cc;->b:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
