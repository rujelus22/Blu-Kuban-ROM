.class Lcom/google/protobuf/LazyField$LazyEntry;
.super Ljava/lang/Object;
.source "LazyField.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/LazyField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LazyEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private entry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;",
            "Lcom/google/protobuf/LazyField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map$Entry;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Lcom/google/protobuf/LazyField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, this:Lcom/google/protobuf/LazyField$LazyEntry;,"Lcom/google/protobuf/LazyField$LazyEntry<TK;>;"
    .local p1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;Lcom/google/protobuf/LazyField;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/google/protobuf/LazyField$LazyEntry;->entry:Ljava/util/Map$Entry;

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map$Entry;Lcom/google/protobuf/LazyField$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    .local p0, this:Lcom/google/protobuf/LazyField$LazyEntry;,"Lcom/google/protobuf/LazyField$LazyEntry<TK;>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/LazyField$LazyEntry;-><init>(Ljava/util/Map$Entry;)V

    return-void
.end method


# virtual methods
.method public getField()Lcom/google/protobuf/LazyField;
    .registers 2

    .prologue
    .line 155
    .local p0, this:Lcom/google/protobuf/LazyField$LazyEntry;,"Lcom/google/protobuf/LazyField$LazyEntry<TK;>;"
    iget-object v0, p0, Lcom/google/protobuf/LazyField$LazyEntry;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/LazyField;

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, this:Lcom/google/protobuf/LazyField$LazyEntry;,"Lcom/google/protobuf/LazyField$LazyEntry<TK;>;"
    iget-object v0, p0, Lcom/google/protobuf/LazyField$LazyEntry;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 147
    .local p0, this:Lcom/google/protobuf/LazyField$LazyEntry;,"Lcom/google/protobuf/LazyField$LazyEntry<TK;>;"
    iget-object v1, p0, Lcom/google/protobuf/LazyField$LazyEntry;->entry:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/LazyField;

    .line 148
    .local v0, field:Lcom/google/protobuf/LazyField;
    if-nez v0, :cond_c

    .line 149
    const/4 v1, 0x0

    .line 151
    :goto_b
    return-object v1

    :cond_c
    invoke-virtual {v0}, Lcom/google/protobuf/LazyField;->getValue()Lcom/google/protobuf/MessageLite;

    move-result-object v1

    goto :goto_b
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "value"

    .prologue
    .line 160
    .local p0, this:Lcom/google/protobuf/LazyField$LazyEntry;,"Lcom/google/protobuf/LazyField$LazyEntry<TK;>;"
    instance-of v0, p1, Lcom/google/protobuf/MessageLite;

    if-nez v0, :cond_c

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/LazyField$LazyEntry;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/LazyField;

    check-cast p1, Lcom/google/protobuf/MessageLite;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/LazyField;->setValue(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method
