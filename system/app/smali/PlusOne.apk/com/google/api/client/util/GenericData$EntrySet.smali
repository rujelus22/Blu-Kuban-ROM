.class final Lcom/google/api/client/util/GenericData$EntrySet;
.super Ljava/util/AbstractSet;
.source "GenericData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/GenericData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final dataEntrySet:Lcom/google/api/client/util/DataMap$EntrySet;

.field final synthetic this$0:Lcom/google/api/client/util/GenericData;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/GenericData;)V
    .registers 3
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/api/client/util/GenericData$EntrySet;->this$0:Lcom/google/api/client/util/GenericData;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 160
    new-instance v0, Lcom/google/api/client/util/DataMap;

    invoke-direct {v0, p1}, Lcom/google/api/client/util/DataMap;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/api/client/util/DataMap;->entrySet()Lcom/google/api/client/util/DataMap$EntrySet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/GenericData$EntrySet;->dataEntrySet:Lcom/google/api/client/util/DataMap$EntrySet;

    .line 161
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/api/client/util/GenericData$EntrySet;->this$0:Lcom/google/api/client/util/GenericData;

    #getter for: Lcom/google/api/client/util/GenericData;->unknownFields:Lcom/google/api/client/util/ArrayMap;
    invoke-static {v0}, Lcom/google/api/client/util/GenericData;->access$000(Lcom/google/api/client/util/GenericData;)Lcom/google/api/client/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/util/ArrayMap;->clear()V

    .line 176
    iget-object v0, p0, Lcom/google/api/client/util/GenericData$EntrySet;->dataEntrySet:Lcom/google/api/client/util/DataMap$EntrySet;

    invoke-virtual {v0}, Lcom/google/api/client/util/DataMap$EntrySet;->clear()V

    .line 177
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Lcom/google/api/client/util/GenericData$EntryIterator;

    iget-object v1, p0, Lcom/google/api/client/util/GenericData$EntrySet;->this$0:Lcom/google/api/client/util/GenericData;

    iget-object v2, p0, Lcom/google/api/client/util/GenericData$EntrySet;->dataEntrySet:Lcom/google/api/client/util/DataMap$EntrySet;

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/util/GenericData$EntryIterator;-><init>(Lcom/google/api/client/util/GenericData;Lcom/google/api/client/util/DataMap$EntrySet;)V

    return-object v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/api/client/util/GenericData$EntrySet;->this$0:Lcom/google/api/client/util/GenericData;

    #getter for: Lcom/google/api/client/util/GenericData;->unknownFields:Lcom/google/api/client/util/ArrayMap;
    invoke-static {v0}, Lcom/google/api/client/util/GenericData;->access$000(Lcom/google/api/client/util/GenericData;)Lcom/google/api/client/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/util/ArrayMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/api/client/util/GenericData$EntrySet;->dataEntrySet:Lcom/google/api/client/util/DataMap$EntrySet;

    invoke-virtual {v1}, Lcom/google/api/client/util/DataMap$EntrySet;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
