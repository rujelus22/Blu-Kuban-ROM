.class final Lcom/google/common/base/BinaryPredicates$First;
.super Ljava/lang/Object;
.source "BinaryPredicates.java"

# interfaces
.implements Lcom/google/common/base/BinaryPredicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/BinaryPredicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "First"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/BinaryPredicate",
        "<TX;TY;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4accc803e407a24bL


# instance fields
.field final predicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<-TX;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/base/Predicate;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<-TX;>;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, this:Lcom/google/common/base/BinaryPredicates$First;,"Lcom/google/common/base/BinaryPredicates$First<TX;TY;>;"
    .local p1, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TX;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Predicate;

    iput-object v0, p0, Lcom/google/common/base/BinaryPredicates$First;->predicate:Lcom/google/common/base/Predicate;

    .line 355
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;TY;)Z"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, this:Lcom/google/common/base/BinaryPredicates$First;,"Lcom/google/common/base/BinaryPredicates$First<TX;TY;>;"
    .local p1, x:Ljava/lang/Object;,"TX;"
    .local p2, y:Ljava/lang/Object;,"TY;"
    iget-object v0, p0, Lcom/google/common/base/BinaryPredicates$First;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v0, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 363
    .local p0, this:Lcom/google/common/base/BinaryPredicates$First;,"Lcom/google/common/base/BinaryPredicates$First<TX;TY;>;"
    instance-of v1, p1, Lcom/google/common/base/BinaryPredicates$First;

    if-eqz v1, :cond_10

    move-object v0, p1

    .line 364
    check-cast v0, Lcom/google/common/base/BinaryPredicates$First;

    .line 365
    .local v0, other:Lcom/google/common/base/BinaryPredicates$First;,"Lcom/google/common/base/BinaryPredicates$First<**>;"
    iget-object v1, p0, Lcom/google/common/base/BinaryPredicates$First;->predicate:Lcom/google/common/base/Predicate;

    iget-object v2, v0, Lcom/google/common/base/BinaryPredicates$First;->predicate:Lcom/google/common/base/Predicate;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 367
    .end local v0           #other:Lcom/google/common/base/BinaryPredicates$First;,"Lcom/google/common/base/BinaryPredicates$First<**>;"
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 371
    .local p0, this:Lcom/google/common/base/BinaryPredicates$First;,"Lcom/google/common/base/BinaryPredicates$First<TX;TY;>;"
    iget-object v0, p0, Lcom/google/common/base/BinaryPredicates$First;->predicate:Lcom/google/common/base/Predicate;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
