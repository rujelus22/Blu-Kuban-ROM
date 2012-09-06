.class Lcom/google/common/base/Randoms$ReadOnlyRandom;
.super Ljava/util/Random;
.source "Randoms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Randoms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadOnlyRandom"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xc765766f5fa5db6L


# instance fields
.field private initializationComplete:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/base/Randoms$ReadOnlyRandom;->initializationComplete:Z

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/base/Randoms$ReadOnlyRandom;->initializationComplete:Z

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/Randoms$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/google/common/base/Randoms$ReadOnlyRandom;-><init>()V

    return-void
.end method


# virtual methods
.method public setSeed(J)V
    .registers 5
    .parameter "seed"

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/google/common/base/Randoms$ReadOnlyRandom;->initializationComplete:Z

    if-eqz v0, :cond_c

    .line 124
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting the seed on the shared Random object is not permitted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_c
    invoke-super {p0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    .line 128
    return-void
.end method
