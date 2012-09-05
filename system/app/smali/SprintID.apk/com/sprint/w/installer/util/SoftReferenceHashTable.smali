.class public Lcom/sprint/w/installer/util/SoftReferenceHashTable;
.super Ljava/lang/Object;
.source "SoftReferenceHashTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<TK;",
            "Ljava/lang/ref/SoftReference",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 7
    .local p0, this:Lcom/sprint/w/installer/util/SoftReferenceHashTable;,"Lcom/sprint/w/installer/util/SoftReferenceHashTable<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/util/SoftReferenceHashTable;->mTable:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, this:Lcom/sprint/w/installer/util/SoftReferenceHashTable;,"Lcom/sprint/w/installer/util/SoftReferenceHashTable<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v2, p0, Lcom/sprint/w/installer/util/SoftReferenceHashTable;->mTable:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 19
    .local v1, val:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<TV;>;"
    if-nez v1, :cond_c

    .line 20
    const/4 v0, 0x0

    .line 24
    :cond_b
    :goto_b
    return-object v0

    .line 21
    :cond_c
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 22
    .local v0, ret:Ljava/lang/Object;,"TV;"
    if-nez v0, :cond_b

    .line 23
    iget-object v2, p0, Lcom/sprint/w/installer/util/SoftReferenceHashTable;->mTable:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 11
    .local p0, this:Lcom/sprint/w/installer/util/SoftReferenceHashTable;,"Lcom/sprint/w/installer/util/SoftReferenceHashTable<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/sprint/w/installer/util/SoftReferenceHashTable;->mTable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 12
    .local v0, old:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<TV;>;"
    if-nez v0, :cond_11

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_10
    return-object v1

    :cond_11
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_10
.end method
