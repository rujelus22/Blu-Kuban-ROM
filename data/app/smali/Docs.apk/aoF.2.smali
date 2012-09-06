.class LaoF;
.super Ljava/lang/Object;
.source "Exceptions.java"


# direct methods
.method public static a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 2
    .parameter

    .prologue
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 39
    :cond_a
    invoke-static {p0}, LaoF;->b(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 2
    .parameter

    .prologue
    .line 44
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_7

    .line 45
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 46
    :cond_7
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_e

    .line 47
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 49
    :cond_e
    new-instance v0, LaoG;

    invoke-direct {v0, p0}, LaoG;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
