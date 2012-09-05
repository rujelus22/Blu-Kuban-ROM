.class public Lcom/vlingo/client/localsearch/service/LocalSearchListingCache;
.super Lcom/vlingo/client/util/BoundedSizeMap;
.source "LocalSearchListingCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vlingo/client/util/BoundedSizeMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/vlingo/client/localsearch/service/LocalSearchListing;",
        ">;"
    }
.end annotation


# static fields
.field static final CACHE_SIZE:I = 0x1e

.field private static final serialVersionUID:J = -0x62815940b39cb2b9L


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/vlingo/client/util/BoundedSizeMap;-><init>(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public add(Lcom/vlingo/client/localsearch/service/LocalSearchListing;)V
    .registers 3
    .parameter "bi"

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getListingID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListingCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public get(Ljava/lang/Object;)Lcom/vlingo/client/localsearch/service/LocalSearchListing;
    .registers 3
    .parameter "listingID"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/vlingo/client/util/BoundedSizeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    .line 37
    .local v0, bi:Lcom/vlingo/client/localsearch/service/LocalSearchListing;
    if-eqz v0, :cond_10

    .line 39
    invoke-virtual {p0, p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListingCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListingCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_10
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListingCache;->get(Ljava/lang/Object;)Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    move-result-object v0

    return-object v0
.end method
