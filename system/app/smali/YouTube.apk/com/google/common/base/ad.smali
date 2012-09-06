.class final Lcom/google/common/base/ad;
.super Lcom/google/common/base/AbstractIterator;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/base/ac;

.field private final b:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/base/ac;)V
    .registers 3
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/common/base/ad;->a:Lcom/google/common/base/ac;

    invoke-direct {p0}, Lcom/google/common/base/AbstractIterator;-><init>()V

    .line 180
    iget-object v0, p0, Lcom/google/common/base/ad;->a:Lcom/google/common/base/ac;

    iget-object v0, v0, Lcom/google/common/base/ac;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/base/ad;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 183
    :cond_0
    iget-object v0, p0, Lcom/google/common/base/ad;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 184
    iget-object v0, p0, Lcom/google/common/base/ad;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Optional;

    .line 185
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    .line 189
    :goto_1a
    return-object v0

    :cond_1b
    invoke-virtual {p0}, Lcom/google/common/base/ad;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1a
.end method
