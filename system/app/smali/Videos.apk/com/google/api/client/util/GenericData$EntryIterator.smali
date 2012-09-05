.class final Lcom/google/api/client/util/GenericData$EntryIterator;
.super Ljava/lang/Object;
.source "GenericData.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/GenericData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final fieldIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private startedUnknown:Z

.field final synthetic this$0:Lcom/google/api/client/util/GenericData;

.field private final unknownIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/api/client/util/GenericData;Lcom/google/api/client/util/DataMap$EntrySet;)V
    .registers 4
    .parameter
    .parameter "dataEntrySet"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/google/api/client/util/GenericData$EntryIterator;->this$0:Lcom/google/api/client/util/GenericData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-virtual {p2}, Lcom/google/api/client/util/DataMap$EntrySet;->iterator()Lcom/google/api/client/util/DataMap$EntryIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/GenericData$EntryIterator;->fieldIterator:Ljava/util/Iterator;

    .line 169
    iget-object v0, p1, Lcom/google/api/client/util/GenericData;->unknownFields:Lcom/google/api/client/util/ArrayMap;

    invoke-virtual {v0}, Lcom/google/api/client/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/GenericData$EntryIterator;->unknownIterator:Ljava/util/Iterator;

    .line 170
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/api/client/util/GenericData$EntryIterator;->fieldIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/api/client/util/GenericData$EntryIterator;->unknownIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/google/api/client/util/GenericData$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/google/api/client/util/GenericData$EntryIterator;->startedUnknown:Z

    if-nez v0, :cond_18

    .line 178
    iget-object v0, p0, Lcom/google/api/client/util/GenericData$EntryIterator;->fieldIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 179
    iget-object v0, p0, Lcom/google/api/client/util/GenericData$EntryIterator;->fieldIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 183
    :goto_14
    return-object v0

    .line 181
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/util/GenericData$EntryIterator;->startedUnknown:Z

    .line 183
    :cond_18
    iget-object v0, p0, Lcom/google/api/client/util/GenericData$EntryIterator;->unknownIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_14
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/google/api/client/util/GenericData$EntryIterator;->startedUnknown:Z

    if-eqz v0, :cond_9

    .line 188
    iget-object v0, p0, Lcom/google/api/client/util/GenericData$EntryIterator;->unknownIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 190
    :cond_9
    iget-object v0, p0, Lcom/google/api/client/util/GenericData$EntryIterator;->fieldIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 191
    return-void
.end method
