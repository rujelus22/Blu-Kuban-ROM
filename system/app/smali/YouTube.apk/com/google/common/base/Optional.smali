.class public abstract Lcom/google/common/base/Optional;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/ac;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/common/base/Optional;-><init>()V

    return-void
.end method

.method public static absent()Lcom/google/common/base/Optional;
    .registers 1

    .prologue
    .line 77
    invoke-static {}, Lcom/google/common/base/Optional$Absent;->access$000()Lcom/google/common/base/Optional$Absent;

    move-result-object v0

    return-object v0
.end method

.method public static fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;
    .registers 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 92
    if-nez p0, :cond_7

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Lcom/google/common/base/Optional$Present;

    invoke-direct {v0, p0}, Lcom/google/common/base/Optional$Present;-><init>(Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public static of(Ljava/lang/Object;)Lcom/google/common/base/Optional;
    .registers 3
    .parameter

    .prologue
    .line 84
    new-instance v0, Lcom/google/common/base/Optional$Present;

    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/Optional$Present;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static presentInstances(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 2
    .parameter

    .prologue
    .line 176
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v0, Lcom/google/common/base/ac;

    invoke-direct {v0, p0}, Lcom/google/common/base/ac;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method


# virtual methods
.method public abstract asSet()Ljava/util/Set;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
.end method

.method public abstract get()Ljava/lang/Object;
.end method

.method public abstract hashCode()I
.end method

.method public abstract isPresent()Z
.end method

.method public abstract or(Lcom/google/common/base/Optional;)Lcom/google/common/base/Optional;
.end method

.method public abstract or(Lcom/google/common/base/am;)Ljava/lang/Object;
.end method

.method public abstract or(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract orNull()Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
