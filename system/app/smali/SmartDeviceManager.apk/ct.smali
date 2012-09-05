.class public abstract Lct;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/io/Serializable;
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 35
    :try_start_0
    invoke-static {p0}, Lk;->a(Ljava/io/Serializable;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 38
    :goto_4
    return-object v0

    .line 36
    :catch_5
    move-exception v0

    .line 37
    const-string v1, "got base64 encoding error"

    invoke-static {v1, v0}, Li;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lct;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 58
    invoke-virtual {p0}, Lct;->a()Ljava/io/Serializable;

    move-result-object v0

    .line 59
    if-nez v0, :cond_9

    move-object v0, v4

    .line 67
    :goto_8
    return-object v0

    .line 61
    :cond_9
    :try_start_9
    new-instance v1, Lhn;

    invoke-direct {v1}, Lhn;-><init>()V

    invoke-virtual {v1}, Lhn;->a()Lhq;

    move-result-object v2

    sget-object v3, Lhx$a;->NON_NULL:Lhx$a;

    invoke-virtual {v2, v3}, Lhq;->a(Lhx$a;)V

    .line 62
    invoke-virtual {v1, v0}, Lhn;->a(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1a} :catch_1c

    move-result-object v0

    goto :goto_8

    .line 65
    :catch_1c
    move-exception v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got json error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->e(Ljava/lang/String;)V

    move-object v0, v4

    .line 67
    goto :goto_8
.end method
