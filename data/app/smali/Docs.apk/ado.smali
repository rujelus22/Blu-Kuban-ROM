.class public abstract Lado;
.super Ljava/lang/Object;
.source "HttpTransport.java"


# static fields
.field static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const-class v0, Lado;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lado;->a:Ljava/util/logging/Logger;

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
.method a()Ladh;
    .registers 3

    .prologue
    .line 98
    new-instance v0, Ladh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ladh;-><init>(Lado;Ladf;)V

    return-object v0
.end method

.method public final a()Ladj;
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lado;->a(Ladk;)Ladj;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ladk;)Ladj;
    .registers 3
    .parameter

    .prologue
    .line 89
    new-instance v0, Ladj;

    invoke-direct {v0, p0, p1}, Ladj;-><init>(Lado;Ladk;)V

    return-object v0
.end method

.method protected abstract a(Ljava/lang/String;)Ladr;
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract b(Ljava/lang/String;)Ladr;
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method protected c(Ljava/lang/String;)Ladr;
    .registers 3
    .parameter

    .prologue
    .line 154
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected d(Ljava/lang/String;)Ladr;
    .registers 3
    .parameter

    .prologue
    .line 168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract e(Ljava/lang/String;)Ladr;
.end method

.method protected abstract f(Ljava/lang/String;)Ladr;
.end method
