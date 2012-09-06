.class public final Lcom/google/common/collect/dl;
.super Lcom/google/common/collect/dn;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/google/common/collect/dn;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableListMultimap;
    .registers 2

    .prologue
    .line 221
    invoke-super {p0}, Lcom/google/common/collect/dn;->b()Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableListMultimap;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dl;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/dn;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dn;

    .line 165
    return-object p0
.end method

.method public final bridge synthetic b()Lcom/google/common/collect/ImmutableMultimap;
    .registers 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/google/common/collect/dn;->b()Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableListMultimap;

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dn;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/dl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dl;

    move-result-object v0

    return-object v0
.end method
