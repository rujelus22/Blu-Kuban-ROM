.class final Lcom/google/common/collect/fu;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/util/List;II)Ljava/util/List;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-interface {p0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static a([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    return-void
.end method

.method static a([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method
