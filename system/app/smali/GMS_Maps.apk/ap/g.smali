.class public LaP/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(LaP/h;)V
    .registers 3
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaP/g;->a:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p0, p1}, LaP/g;->a(LaP/h;)V

    .line 31
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, LaP/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(I)LaP/h;
    .registers 3
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, LaP/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaP/h;

    return-object v0
.end method

.method public a(LaP/h;)V
    .registers 4
    .parameter

    .prologue
    .line 51
    if-nez p1, :cond_a

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Segment cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_a
    iget-object v0, p0, LaP/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public b()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, LaP/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_8
    if-ge v2, v3, :cond_1e

    .line 62
    iget-object v0, p0, LaP/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaP/h;

    invoke-virtual {v0}, LaP/h;->n()Z

    move-result v0

    if-nez v0, :cond_1a

    move v0, v1

    .line 66
    :goto_19
    return v0

    .line 61
    :cond_1a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 66
    :cond_1e
    const/4 v0, 0x1

    goto :goto_19
.end method
