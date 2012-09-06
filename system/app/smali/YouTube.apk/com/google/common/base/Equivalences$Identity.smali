.class final Lcom/google/common/base/Equivalences$Identity;
.super Lcom/google/common/base/Equivalence;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final INSTANCE:Lcom/google/common/base/Equivalences$Identity; = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    new-instance v0, Lcom/google/common/base/Equivalences$Identity;

    invoke-direct {v0}, Lcom/google/common/base/Equivalences$Identity;-><init>()V

    sput-object v0, Lcom/google/common/base/Equivalences$Identity;->INSTANCE:Lcom/google/common/base/Equivalences$Identity;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/common/base/Equivalence;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 93
    sget-object v0, Lcom/google/common/base/Equivalences$Identity;->INSTANCE:Lcom/google/common/base/Equivalences$Identity;

    return-object v0
.end method


# virtual methods
.method protected final doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method protected final doHash(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 89
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
