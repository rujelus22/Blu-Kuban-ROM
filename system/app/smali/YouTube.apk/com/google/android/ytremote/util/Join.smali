.class public final Lcom/google/android/ytremote/util/Join;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/Appendable;Ljava/lang/String;Ljava/util/Iterator;)Ljava/lang/Appendable;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 237
    invoke-static {p0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-static {p1}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 241
    :try_start_c
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/ytremote/util/Join;->a(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 242
    :goto_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 250
    :cond_19
    return-object p0

    .line 243
    :cond_1a
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 244
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/ytremote/util/Join;->a(Ljava/lang/Appendable;Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_24} :catch_25

    goto :goto_13

    .line 246
    :catch_25
    move-exception v0

    .line 247
    new-instance v1, Lcom/google/android/ytremote/util/Join$JoinException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/ytremote/util/Join$JoinException;-><init>(Ljava/io/IOException;Lcom/google/android/ytremote/util/Join$JoinException;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, p0, v0}, Lcom/google/android/ytremote/util/Join;->a(Ljava/lang/Appendable;Ljava/lang/String;Ljava/util/Iterator;)Ljava/lang/Appendable;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/Appendable;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 301
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/lang/CharSequence;

    :goto_6
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 302
    return-void

    .line 301
    :cond_a
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6
.end method
