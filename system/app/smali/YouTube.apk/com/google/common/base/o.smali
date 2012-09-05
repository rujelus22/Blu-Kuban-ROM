.class public final Lcom/google/common/base/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/common/base/m;

.field private b:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/common/base/m;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/base/o;-><init>(Lcom/google/common/base/m;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/base/m;Ljava/lang/String;B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/google/common/base/o;->a:Lcom/google/common/base/m;

    .line 255
    iput-object p2, p0, Lcom/google/common/base/o;->b:Ljava/lang/String;

    .line 256
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/common/base/o;
    .registers 6
    .parameter

    .prologue
    .line 313
    new-instance v0, Lcom/google/common/base/o;

    iget-object v1, p0, Lcom/google/common/base/o;->a:Lcom/google/common/base/m;

    invoke-virtual {v1, p1}, Lcom/google/common/base/m;->b(Ljava/lang/String;)Lcom/google/common/base/m;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/base/o;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/o;-><init>(Lcom/google/common/base/m;Ljava/lang/String;B)V

    return-object v0
.end method

.method public final a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 291
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/google/common/base/o;->a:Lcom/google/common/base/m;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v2, p0, Lcom/google/common/base/o;->b:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v2, p0, Lcom/google/common/base/o;->a:Lcom/google/common/base/m;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/google/common/base/o;->a:Lcom/google/common/base/m;

    invoke-static {v0}, Lcom/google/common/base/m;->a(Lcom/google/common/base/m;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/google/common/base/o;->a:Lcom/google/common/base/m;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v2, p0, Lcom/google/common/base/o;->b:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v2, p0, Lcom/google/common/base/o;->a:Lcom/google/common/base/m;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6a} :catch_6b

    goto :goto_36

    .line 292
    :catch_6b
    move-exception v0

    .line 293
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 295
    :cond_72
    return-object p1
.end method
