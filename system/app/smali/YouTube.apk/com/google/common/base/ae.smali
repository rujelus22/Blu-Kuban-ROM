.class final Lcom/google/common/base/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, Lcom/google/common/base/af;

    invoke-direct {v0}, Lcom/google/common/base/af;-><init>()V

    sput-object v0, Lcom/google/common/base/ae;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static a()J
    .registers 2

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static a(Lcom/google/common/base/d;)Lcom/google/common/base/d;
    .registers 2
    .parameter

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/common/base/d;->b()Lcom/google/common/base/d;

    move-result-object v0

    return-object v0
.end method
