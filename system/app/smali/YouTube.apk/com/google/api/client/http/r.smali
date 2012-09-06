.class public abstract Lcom/google/api/client/http/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const-class v0, Lcom/google/api/client/http/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/r;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/api/client/http/n;
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/api/client/http/r;->a(Lcom/google/api/client/http/o;)Lcom/google/api/client/http/n;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/api/client/http/o;)Lcom/google/api/client/http/n;
    .registers 3
    .parameter

    .prologue
    .line 89
    new-instance v0, Lcom/google/api/client/http/n;

    invoke-direct {v0, p0, p1}, Lcom/google/api/client/http/n;-><init>(Lcom/google/api/client/http/r;Lcom/google/api/client/http/o;)V

    return-object v0
.end method

.method protected abstract a(Ljava/lang/String;)Lcom/google/api/client/http/u;
.end method

.method final b()Lcom/google/api/client/http/l;
    .registers 3

    .prologue
    .line 98
    new-instance v0, Lcom/google/api/client/http/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/http/l;-><init>(Lcom/google/api/client/http/r;Lcom/google/api/client/http/HttpMethod;)V

    return-object v0
.end method

.method protected abstract b(Ljava/lang/String;)Lcom/google/api/client/http/u;
.end method

.method protected c(Ljava/lang/String;)Lcom/google/api/client/http/u;
    .registers 3
    .parameter

    .prologue
    .line 154
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method protected d(Ljava/lang/String;)Lcom/google/api/client/http/u;
    .registers 3
    .parameter

    .prologue
    .line 168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract e(Ljava/lang/String;)Lcom/google/api/client/http/u;
.end method

.method protected abstract f(Ljava/lang/String;)Lcom/google/api/client/http/u;
.end method
