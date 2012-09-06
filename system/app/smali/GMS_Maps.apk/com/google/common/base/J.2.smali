.class public final Lcom/google/common/base/J;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/common/base/G;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/common/base/G;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p1, p0, Lcom/google/common/base/J;->a:Lcom/google/common/base/G;

    .line 259
    invoke-static {p2}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/base/J;->b:Ljava/lang/String;

    .line 260
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/G;Ljava/lang/String;Lcom/google/common/base/H;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 253
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/J;-><init>(Lcom/google/common/base/G;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Appendable;Ljava/util/Map;)Ljava/lang/Appendable;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 269
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 270
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 271
    iget-object v2, p0, Lcom/google/common/base/J;->a:Lcom/google/common/base/G;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/G;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 272
    iget-object v2, p0, Lcom/google/common/base/J;->b:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 273
    iget-object v2, p0, Lcom/google/common/base/J;->a:Lcom/google/common/base/G;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/base/G;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 274
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 275
    iget-object v0, p0, Lcom/google/common/base/J;->a:Lcom/google/common/base/G;

    invoke-static {v0}, Lcom/google/common/base/G;->a(Lcom/google/common/base/G;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 276
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 277
    iget-object v2, p0, Lcom/google/common/base/J;->a:Lcom/google/common/base/G;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/G;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 278
    iget-object v2, p0, Lcom/google/common/base/J;->b:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 279
    iget-object v2, p0, Lcom/google/common/base/J;->a:Lcom/google/common/base/G;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/base/G;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_36

    .line 282
    :cond_6b
    return-object p1
.end method

.method public a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 292
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/J;->a(Ljava/lang/Appendable;Ljava/util/Map;)Ljava/lang/Appendable;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 296
    return-object p1

    .line 293
    :catch_4
    move-exception v0

    .line 294
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
