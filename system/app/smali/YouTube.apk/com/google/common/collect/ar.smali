.class final Lcom/google/common/collect/ar;
.super Lcom/google/common/collect/i;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/aq;


# direct methods
.method constructor <init>(Lcom/google/common/collect/aq;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/google/common/collect/ar;->a:Lcom/google/common/collect/aq;

    invoke-direct {p0, p2}, Lcom/google/common/collect/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 474
    new-instance v0, Lcom/google/common/collect/as;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/as;-><init>(Lcom/google/common/collect/ar;I)V

    return-object v0
.end method
