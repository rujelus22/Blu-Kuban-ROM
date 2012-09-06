.class public final Lcom/jme3/util/IntMap$Entry;
.super Ljava/lang/Object;
.source "IntMap.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/IntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field final key:I

.field next:Lcom/jme3/util/IntMap$Entry;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/lang/Object;Lcom/jme3/util/IntMap$Entry;)V
    .registers 4
    .parameter "k"
    .parameter
    .parameter "n"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Lcom/jme3/util/IntMap$Entry;",
            ")V"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, this:Lcom/jme3/util/IntMap$Entry;,"Lcom/jme3/util/IntMap$Entry<TT;>;"
    .local p2, v:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput p1, p0, Lcom/jme3/util/IntMap$Entry;->key:I

    .line 279
    iput-object p2, p0, Lcom/jme3/util/IntMap$Entry;->value:Ljava/lang/Object;

    .line 280
    iput-object p3, p0, Lcom/jme3/util/IntMap$Entry;->next:Lcom/jme3/util/IntMap$Entry;

    .line 281
    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/util/IntMap$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jme3/util/IntMap$Entry",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/jme3/util/IntMap$Entry;,"Lcom/jme3/util/IntMap$Entry<TT;>;"
    const/4 v1, 0x0

    .line 299
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/IntMap$Entry;

    .line 300
    .local v0, clone:Lcom/jme3/util/IntMap$Entry;,"Lcom/jme3/util/IntMap$Entry<TT;>;"
    iget-object v2, p0, Lcom/jme3/util/IntMap$Entry;->next:Lcom/jme3/util/IntMap$Entry;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/jme3/util/IntMap$Entry;->next:Lcom/jme3/util/IntMap$Entry;

    invoke-virtual {v2}, Lcom/jme3/util/IntMap$Entry;->clone()Lcom/jme3/util/IntMap$Entry;

    move-result-object v2

    :goto_11
    iput-object v2, v0, Lcom/jme3/util/IntMap$Entry;->next:Lcom/jme3/util/IntMap$Entry;
    :try_end_13
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_13} :catch_16

    .line 304
    .end local v0           #clone:Lcom/jme3/util/IntMap$Entry;,"Lcom/jme3/util/IntMap$Entry<TT;>;"
    :goto_13
    return-object v0

    .restart local v0       #clone:Lcom/jme3/util/IntMap$Entry;,"Lcom/jme3/util/IntMap$Entry<TT;>;"
    :cond_14
    move-object v2, v1

    .line 300
    goto :goto_11

    .line 302
    .end local v0           #clone:Lcom/jme3/util/IntMap$Entry;,"Lcom/jme3/util/IntMap$Entry<TT;>;"
    :catch_16
    move-exception v2

    move-object v0, v1

    .line 304
    goto :goto_13
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 271
    .local p0, this:Lcom/jme3/util/IntMap$Entry;,"Lcom/jme3/util/IntMap$Entry<TT;>;"
    invoke-virtual {p0}, Lcom/jme3/util/IntMap$Entry;->clone()Lcom/jme3/util/IntMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getKey()I
    .registers 2

    .prologue
    .line 284
    .local p0, this:Lcom/jme3/util/IntMap$Entry;,"Lcom/jme3/util/IntMap$Entry<TT;>;"
    iget v0, p0, Lcom/jme3/util/IntMap$Entry;->key:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, this:Lcom/jme3/util/IntMap$Entry;,"Lcom/jme3/util/IntMap$Entry<TT;>;"
    iget-object v0, p0, Lcom/jme3/util/IntMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 293
    .local p0, this:Lcom/jme3/util/IntMap$Entry;,"Lcom/jme3/util/IntMap$Entry<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/jme3/util/IntMap$Entry;->key:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/util/IntMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
