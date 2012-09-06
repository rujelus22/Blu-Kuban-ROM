.class public final Lcom/google/common/base/Join;
.super Ljava/lang/Object;
.source "Join.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static iterable(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 3
    .parameter "first"
    .parameter "rest"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v0, Lcom/google/common/base/Join$1;

    invoke-direct {v0, p1, p0}, Lcom/google/common/base/Join$1;-><init>([Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static join(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/Appendable;
    .registers 6
    .parameter
    .parameter "delimiter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 169
    .local p0, appendable:Ljava/lang/Appendable;,"TT;"
    .local p2, tokens:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Lcom/google/common/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/Appendable;Ljava/lang/Iterable;)Ljava/lang/Appendable;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v1

    return-object v1

    .line 170
    :catch_f
    move-exception v0

    .line 171
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static varargs join(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Appendable;
    .registers 5
    .parameter
    .end parameter
    .parameter "delimiter"
    .end parameter
    .parameter "firstToken"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "otherTokens"
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 216
    .local p0, appendable:Ljava/lang/Appendable;,"TT;"
    invoke-static {p2, p3}, Lcom/google/common/base/Join;->iterable(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/common/base/Join;->join(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Appendable;
    .registers 7
    .parameter
    .parameter "keyValueSeparator"
    .parameter "entryDelimiter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<**>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 241
    .local p0, appendable:Ljava/lang/Appendable;,"TT;"
    .local p3, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    :try_start_0
    invoke-static {p2}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Lcom/google/common/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/base/Joiner;->withKeyValueSeparator(Ljava/lang/String;)Lcom/google/common/base/Joiner$MapJoiner;

    move-result-object v1

    invoke-virtual {v1, p0, p3}, Lcom/google/common/base/Joiner$MapJoiner;->appendTo(Ljava/lang/Appendable;Ljava/util/Map;)Ljava/lang/Appendable;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v1

    return-object v1

    .line 245
    :catch_13
    move-exception v0

    .line 246
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static join(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Appendable;
    .registers 4
    .parameter
    .parameter "delimiter"
    .parameter "tokens"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 192
    .local p0, appendable:Ljava/lang/Appendable;,"TT;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/common/base/Join;->join(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 4
    .parameter "delimiter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 65
    .local p1, tokens:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-static {p0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs join(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .parameter "delimiter"
    .end parameter
    .parameter "firstToken"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "otherTokens"
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 104
    invoke-static {p0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/google/common/base/Join;->iterable(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .parameter "keyValueSeparator"
    .parameter "entryDelimiter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    invoke-static {p1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/Joiner;->withKeyValueSeparator(Ljava/lang/String;)Lcom/google/common/base/Joiner$MapJoiner;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/common/base/Joiner$MapJoiner;->join(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/lang/String;Ljava/util/Iterator;)Ljava/lang/String;
    .registers 4
    .parameter "delimiter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Iterator",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 123
    .local p1, tokens:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    invoke-static {p0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/Joiner;->join(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter "delimiter"
    .parameter "tokens"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    invoke-static {p0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
