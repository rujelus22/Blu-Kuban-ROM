.class final Lcom/google/common/collect/W;
.super Lcom/google/common/collect/cV;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/common/collect/cV;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/W;->a:Ljava/util/Comparator;

    .line 37
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/common/collect/W;->a:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 56
    if-ne p1, p0, :cond_4

    .line 57
    const/4 v0, 0x1

    .line 63
    :goto_3
    return v0

    .line 59
    :cond_4
    instance-of v0, p1, Lcom/google/common/collect/W;

    if-eqz v0, :cond_13

    .line 60
    check-cast p1, Lcom/google/common/collect/W;

    .line 61
    iget-object v0, p0, Lcom/google/common/collect/W;->a:Ljava/util/Comparator;

    iget-object v1, p1, Lcom/google/common/collect/W;->a:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 63
    :cond_13
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/common/collect/W;->a:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/common/collect/W;->a:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
