.class public Lcom/google/protobuf/LazyField;
.super Ljava/lang/Object;
.source "LazyField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/LazyField$1;,
        Lcom/google/protobuf/LazyField$LazyIterator;,
        Lcom/google/protobuf/LazyField$LazyEntry;
    }
.end annotation


# instance fields
.field private bytes:Lcom/google/protobuf/ByteString;

.field private final defaultInstance:Lcom/google/protobuf/MessageLite;

.field private final extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

.field private volatile isDirty:Z

.field private volatile value:Lcom/google/protobuf/MessageLite;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/ByteString;)V
    .registers 5
    .parameter "defaultInstance"
    .parameter "extensionRegistry"
    .parameter "bytes"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/LazyField;->isDirty:Z

    .line 41
    iput-object p1, p0, Lcom/google/protobuf/LazyField;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 42
    iput-object p2, p0, Lcom/google/protobuf/LazyField;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 43
    iput-object p3, p0, Lcom/google/protobuf/LazyField;->bytes:Lcom/google/protobuf/ByteString;

    .line 44
    return-void
.end method

.method private ensureInitialized()V
    .registers 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/protobuf/LazyField;->value:Lcom/google/protobuf/MessageLite;

    if-eqz v0, :cond_5

    .line 125
    :goto_4
    return-void

    .line 111
    :cond_5
    monitor-enter p0

    .line 112
    :try_start_6
    iget-object v0, p0, Lcom/google/protobuf/LazyField;->value:Lcom/google/protobuf/MessageLite;

    if-eqz v0, :cond_f

    .line 113
    monitor-exit p0

    goto :goto_4

    .line 124
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw v0

    .line 116
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/google/protobuf/LazyField;->bytes:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_25

    .line 117
    iget-object v0, p0, Lcom/google/protobuf/LazyField;->defaultInstance:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/LazyField;->bytes:Lcom/google/protobuf/ByteString;

    iget-object v2, p0, Lcom/google/protobuf/LazyField;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-interface {v0, v1, v2}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    iput-object v0, p0, Lcom/google/protobuf/LazyField;->value:Lcom/google/protobuf/MessageLite;
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_25} :catch_27

    .line 124
    :cond_25
    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_c

    goto :goto_4

    .line 120
    :catch_27
    move-exception v0

    goto :goto_25
.end method

.method public static isEagerlyParseMessageSets()Z
    .registers 1

    .prologue
    .line 32
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->isEagerlyParseMessageSets()Z

    move-result v0

    return v0
.end method

.method public static setEagerlyParseMessageSets(Z)V
    .registers 1
    .parameter "isEagerlyParse"

    .prologue
    .line 36
    invoke-static {p0}, Lcom/google/protobuf/ExtensionRegistryLite;->setEagerlyParseMessageSets(Z)V

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/google/protobuf/LazyField;->ensureInitialized()V

    .line 98
    iget-object v0, p0, Lcom/google/protobuf/LazyField;->value:Lcom/google/protobuf/MessageLite;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getSerializedSize()I
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/protobuf/LazyField;->isDirty:Z

    if-eqz v0, :cond_b

    .line 70
    iget-object v0, p0, Lcom/google/protobuf/LazyField;->value:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    .line 72
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/LazyField;->bytes:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    goto :goto_a
.end method

.method public getValue()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/protobuf/LazyField;->ensureInitialized()V

    .line 48
    iget-object v0, p0, Lcom/google/protobuf/LazyField;->value:Lcom/google/protobuf/MessageLite;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/protobuf/LazyField;->ensureInitialized()V

    .line 92
    iget-object v0, p0, Lcom/google/protobuf/LazyField;->value:Lcom/google/protobuf/MessageLite;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setValue(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;
    .registers 4
    .parameter "value"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/protobuf/LazyField;->value:Lcom/google/protobuf/MessageLite;

    .line 57
    .local v0, originalValue:Lcom/google/protobuf/MessageLite;
    iput-object p1, p0, Lcom/google/protobuf/LazyField;->value:Lcom/google/protobuf/MessageLite;

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/LazyField;->bytes:Lcom/google/protobuf/ByteString;

    .line 59
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/protobuf/LazyField;->isDirty:Z

    .line 60
    return-object v0
.end method

.method public toByteString()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/google/protobuf/LazyField;->isDirty:Z

    if-nez v0, :cond_7

    .line 77
    iget-object v0, p0, Lcom/google/protobuf/LazyField;->bytes:Lcom/google/protobuf/ByteString;

    .line 85
    :goto_6
    return-object v0

    .line 79
    :cond_7
    monitor-enter p0

    .line 80
    :try_start_8
    iget-boolean v0, p0, Lcom/google/protobuf/LazyField;->isDirty:Z

    if-nez v0, :cond_13

    .line 81
    iget-object v0, p0, Lcom/google/protobuf/LazyField;->bytes:Lcom/google/protobuf/ByteString;

    monitor-exit p0

    goto :goto_6

    .line 86
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v0

    .line 83
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/google/protobuf/LazyField;->value:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/LazyField;->bytes:Lcom/google/protobuf/ByteString;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/LazyField;->isDirty:Z

    .line 85
    iget-object v0, p0, Lcom/google/protobuf/LazyField;->bytes:Lcom/google/protobuf/ByteString;

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_10

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/protobuf/LazyField;->ensureInitialized()V

    .line 104
    iget-object v0, p0, Lcom/google/protobuf/LazyField;->value:Lcom/google/protobuf/MessageLite;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
