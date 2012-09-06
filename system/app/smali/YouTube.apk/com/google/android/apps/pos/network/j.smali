.class public final Lcom/google/android/apps/pos/network/j;
.super Lcom/google/android/apps/pos/network/t;
.source "SourceFile"


# instance fields
.field private params:Lcom/google/android/apps/pos/network/k;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "params"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/t;-><init>()V

    .line 543
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string v0, "pos.plusones.delete"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/j;->method:Ljava/lang/String;

    .line 546
    new-instance v0, Lcom/google/android/apps/pos/network/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/pos/network/k;-><init>(B)V

    iput-object v0, p0, Lcom/google/android/apps/pos/network/j;->params:Lcom/google/android/apps/pos/network/k;

    .line 547
    iget-object v0, p0, Lcom/google/android/apps/pos/network/j;->params:Lcom/google/android/apps/pos/network/k;

    invoke-static {v0, p1}, Lcom/google/android/apps/pos/network/k;->a(Lcom/google/android/apps/pos/network/k;Ljava/lang/String;)Ljava/lang/String;

    .line 548
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/apps/pos/network/j;
    .registers 2
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Lcom/google/android/apps/pos/network/j;->requestId:Ljava/lang/String;

    .line 553
    return-object p0
.end method

.method final bridge synthetic b(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;
    .registers 3
    .parameter

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/android/apps/pos/network/j;->params:Lcom/google/android/apps/pos/network/k;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/k;->source:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic c(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;
    .registers 2
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/google/android/apps/pos/network/j;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic d(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;
    .registers 3
    .parameter

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/android/apps/pos/network/j;->params:Lcom/google/android/apps/pos/network/k;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/k;->container:Ljava/lang/String;

    return-object p0
.end method
