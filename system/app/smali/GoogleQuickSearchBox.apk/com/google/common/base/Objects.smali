.class public final Lcom/google/common/base/Objects;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Objects$1;,
        Lcom/google/common/base/Objects$ToStringHelper;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 52
    if-eq p0, p1, :cond_a

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static varargs hashCode([Ljava/lang/Object;)I
    .registers 2
    .parameter "objects"

    .prologue
    .line 71
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;
    .registers 3
    .parameter "object"

    .prologue
    .line 96
    new-instance v0, Lcom/google/common/base/Objects$ToStringHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Objects$ToStringHelper;-><init>(Ljava/lang/Object;Lcom/google/common/base/Objects$1;)V

    return-object v0
.end method
