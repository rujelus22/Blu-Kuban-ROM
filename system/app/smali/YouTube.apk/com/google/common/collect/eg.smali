.class final Lcom/google/common/collect/eg;
.super Lcom/google/common/collect/i;
.source "SourceFile"


# instance fields
.field final synthetic a:[Ljava/lang/Object;


# direct methods
.method constructor <init>(I[Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1038
    iput-object p2, p0, Lcom/google/common/collect/eg;->a:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/common/collect/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/google/common/collect/eg;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
