.class public final Lcom/google/android/apps/pos/network/q;
.super Lcom/google/android/apps/pos/network/t;
.source "SourceFile"


# instance fields
.field private params:Lcom/google/android/apps/pos/network/r;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/t;-><init>()V

    .line 418
    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string v0, "pos.plusones.insert"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/q;->key:Ljava/lang/String;

    .line 421
    const-string v0, "pos.plusones.insert"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/q;->method:Ljava/lang/String;

    .line 422
    new-instance v0, Lcom/google/android/apps/pos/network/r;

    invoke-direct {v0}, Lcom/google/android/apps/pos/network/r;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/pos/network/q;->params:Lcom/google/android/apps/pos/network/r;

    .line 423
    iget-object v0, p0, Lcom/google/android/apps/pos/network/q;->params:Lcom/google/android/apps/pos/network/r;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/r;->id:Ljava/lang/String;

    .line 424
    return-void
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;
    .registers 3
    .parameter

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/android/apps/pos/network/q;->params:Lcom/google/android/apps/pos/network/r;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/r;->source:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic b(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;
    .registers 3
    .parameter

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/android/apps/pos/network/q;->params:Lcom/google/android/apps/pos/network/r;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/r;->container:Ljava/lang/String;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/apps/pos/network/q;
    .registers 3
    .parameter

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/android/apps/pos/network/q;->params:Lcom/google/android/apps/pos/network/r;

    invoke-static {v0, p1}, Lcom/google/android/apps/pos/network/r;->a(Lcom/google/android/apps/pos/network/r;Ljava/lang/String;)Ljava/lang/String;

    .line 452
    return-object p0
.end method
