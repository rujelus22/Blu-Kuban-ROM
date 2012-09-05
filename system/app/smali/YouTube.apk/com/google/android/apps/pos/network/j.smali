.class public final Lcom/google/android/apps/pos/network/j;
.super Lcom/google/android/apps/pos/network/t;
.source "SourceFile"


# instance fields
.field private params:Lcom/google/android/apps/pos/network/k;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "params"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/t;-><init>()V

    .line 517
    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    const-string v0, "pos.plusones.delete"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/j;->key:Ljava/lang/String;

    .line 520
    const-string v0, "pos.plusones.delete"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/j;->method:Ljava/lang/String;

    .line 521
    new-instance v0, Lcom/google/android/apps/pos/network/k;

    invoke-direct {v0}, Lcom/google/android/apps/pos/network/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/pos/network/j;->params:Lcom/google/android/apps/pos/network/k;

    .line 522
    iget-object v0, p0, Lcom/google/android/apps/pos/network/j;->params:Lcom/google/android/apps/pos/network/k;

    invoke-static {v0, p1}, Lcom/google/android/apps/pos/network/k;->a(Lcom/google/android/apps/pos/network/k;Ljava/lang/String;)Ljava/lang/String;

    .line 523
    return-void
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;
    .registers 3
    .parameter

    .prologue
    .line 491
    iget-object v0, p0, Lcom/google/android/apps/pos/network/j;->params:Lcom/google/android/apps/pos/network/k;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/k;->source:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic b(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;
    .registers 3
    .parameter

    .prologue
    .line 491
    iget-object v0, p0, Lcom/google/android/apps/pos/network/j;->params:Lcom/google/android/apps/pos/network/k;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/k;->container:Ljava/lang/String;

    return-object p0
.end method
