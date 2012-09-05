.class public Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;
.super Ljava/lang/Object;
.source "AndroidToIntHashtable.java"

# interfaces
.implements Lcom/vlingo/client/core/util/ToIntHashtable;


# instance fields
.field private final hash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->hash:Ljava/util/Hashtable;

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "initialCapacity"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, p1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->hash:Ljava/util/Hashtable;

    .line 27
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->hash:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 31
    return-void
.end method

.method public contains(I)Z
    .registers 4
    .parameter "value"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->hash:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->hash:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)I
    .registers 4
    .parameter "key"

    .prologue
    .line 46
    iget-object v1, p0, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->hash:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 47
    .local v0, i:Ljava/lang/Integer;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_e
    return v1

    :cond_f
    const/4 v1, -0x1

    goto :goto_e
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->hash:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->hash:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;I)I
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 59
    iget-object v1, p0, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->hash:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 60
    .local v0, i:Ljava/lang/Integer;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_13
    return v1

    :cond_14
    const/4 v1, -0x1

    goto :goto_13
.end method

.method public remove(Ljava/lang/Object;)I
    .registers 4
    .parameter "key"

    .prologue
    .line 64
    iget-object v1, p0, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->hash:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 65
    .local v0, i:Ljava/lang/Integer;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_e
    return v1

    :cond_f
    const/4 v1, -0x1

    goto :goto_e
.end method

.method public size()I
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vlingo/client/android/core/util/AndroidToIntHashtable;->hash:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method
