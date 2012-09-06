.class public final Lcom/google/common/base/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/common/base/x;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/common/base/x;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p1, p0, Lcom/google/common/base/z;->a:Lcom/google/common/base/x;

    .line 352
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/base/z;->b:Ljava/lang/String;

    .line 353
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/x;Ljava/lang/String;B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 346
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/z;-><init>(Lcom/google/common/base/x;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 475
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/common/base/z;->a:Lcom/google/common/base/x;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/x;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/google/common/base/z;->b:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/google/common/base/z;->a:Lcom/google/common/base/x;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/base/x;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_2e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/google/common/base/z;->a:Lcom/google/common/base/x;

    invoke-static {v0}, Lcom/google/common/base/x;->a(Lcom/google/common/base/x;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/common/base/z;->a:Lcom/google/common/base/x;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/x;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/google/common/base/z;->b:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/google/common/base/z;->a:Lcom/google/common/base/x;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/base/x;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_62} :catch_63

    goto :goto_2e

    .line 476
    :catch_63
    move-exception v0

    .line 477
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 479
    :cond_6a
    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/common/base/z;
    .registers 5
    .parameter
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 527
    new-instance v0, Lcom/google/common/base/z;

    iget-object v1, p0, Lcom/google/common/base/z;->a:Lcom/google/common/base/x;

    invoke-virtual {v1, p1}, Lcom/google/common/base/x;->b(Ljava/lang/String;)Lcom/google/common/base/x;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/base/z;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/z;-><init>(Lcom/google/common/base/x;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 369
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/z;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method
