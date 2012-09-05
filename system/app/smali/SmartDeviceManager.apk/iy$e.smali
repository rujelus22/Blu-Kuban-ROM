.class public final Liy$e;
.super Liy;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "e"
.end annotation


# instance fields
.field protected final g:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnd;Lht;Ljava/lang/reflect/Method;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    invoke-direct {p0, p1, p2, p3}, Liy;-><init>(Ljava/lang/String;Lnd;Lht;)V

    .line 269
    iput-object p4, p0, Liy$e;->g:Ljava/lang/reflect/Method;

    .line 270
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Liy$e;->g:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lfd;Lhc;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 284
    sget-object v1, Lfg;->VALUE_NULL:Lfg;

    if-ne v0, v1, :cond_9

    .line 308
    :goto_8
    return-void

    .line 294
    :cond_9
    :try_start_9
    iget-object v0, p0, Liy$e;->g:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_37

    move-result-object v0

    .line 304
    if-nez v0, :cond_3c

    .line 305
    new-instance v0, Lhg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem deserializing \'setterless\' property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Liy$e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': get method returned null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lhg;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :catch_37
    move-exception v0

    invoke-static {v0}, Liy$e;->a(Ljava/lang/Exception;)Ljava/io/IOException;

    goto :goto_8

    .line 307
    :cond_3c
    iget-object v1, p0, Liy$e;->c:Lhf;

    invoke-virtual {v1, p1, p2, v0}, Lhf;->a(Lfd;Lhc;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Should never call \'set\' on setterless property"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
