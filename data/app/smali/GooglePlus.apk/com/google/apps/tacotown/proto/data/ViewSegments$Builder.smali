.class public final Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ViewSegments.java"

# interfaces
.implements Lcom/google/apps/tacotown/proto/data/ViewSegmentsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/tacotown/proto/data/ViewSegments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/apps/tacotown/proto/data/ViewSegments;",
        "Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;",
        ">;",
        "Lcom/google/apps/tacotown/proto/data/ViewSegmentsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private segments_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/apps/tacotown/proto/data/Segment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 267
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->segments_:Ljava/util/List;

    .line 165
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->maybeForceBuilderInitialization()V

    .line 166
    return-void
.end method

.method static synthetic access$100()Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;
    .registers 1

    .prologue
    .line 159
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->create()Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;
    .registers 1

    .prologue
    .line 171
    new-instance v0, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;

    invoke-direct {v0}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSegmentsIsMutable()V
    .registers 3

    .prologue
    .line 270
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->segments_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->segments_:Ljava/util/List;

    .line 272
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->bitField0_:I

    .line 274
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 169
    return-void
.end method


# virtual methods
.method public addSegments(Lcom/google/apps/tacotown/proto/data/Segment;)Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 303
    if-nez p1, :cond_8

    .line 304
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 306
    :cond_8
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->ensureSegmentsIsMutable()V

    .line 307
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->segments_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    return-object p0
.end method

.method public build()Lcom/google/apps/tacotown/proto/data/ViewSegments;
    .registers 3

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/ViewSegments;

    move-result-object v0

    .line 191
    .local v0, result:Lcom/google/apps/tacotown/proto/data/ViewSegments;
    invoke-virtual {v0}, Lcom/google/apps/tacotown/proto/data/ViewSegments;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 192
    invoke-static {v0}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 194
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->build()Lcom/google/apps/tacotown/proto/data/ViewSegments;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/apps/tacotown/proto/data/ViewSegments;
    .registers 5

    .prologue
    .line 208
    new-instance v1, Lcom/google/apps/tacotown/proto/data/ViewSegments;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/apps/tacotown/proto/data/ViewSegments;-><init>(Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;Lcom/google/apps/tacotown/proto/data/ViewSegments$1;)V

    .line 209
    .local v1, result:Lcom/google/apps/tacotown/proto/data/ViewSegments;
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->bitField0_:I

    .line 210
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 211
    iget-object v2, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->segments_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->segments_:Ljava/util/List;

    .line 212
    iget v2, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->bitField0_:I

    .line 214
    :cond_1d
    iget-object v2, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->segments_:Ljava/util/List;

    #setter for: Lcom/google/apps/tacotown/proto/data/ViewSegments;->segments_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/apps/tacotown/proto/data/ViewSegments;->access$302(Lcom/google/apps/tacotown/proto/data/ViewSegments;Ljava/util/List;)Ljava/util/List;

    .line 215
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/ViewSegments;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;
    .registers 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 176
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->segments_:Ljava/util/List;

    .line 177
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->bitField0_:I

    .line 178
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->clear()Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->clear()Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;
    .registers 3

    .prologue
    .line 182
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->create()Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/ViewSegments;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/ViewSegments;)Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->clone()Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->clone()Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->clone()Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/ViewSegments;
    .registers 2

    .prologue
    .line 186
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/ViewSegments;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/ViewSegments;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/ViewSegments;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/ViewSegments;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/apps/tacotown/proto/data/ViewSegments;)Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 219
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/ViewSegments;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/ViewSegments;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 230
    :cond_6
    :goto_6
    return-object p0

    .line 220
    :cond_7
    #getter for: Lcom/google/apps/tacotown/proto/data/ViewSegments;->segments_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/apps/tacotown/proto/data/ViewSegments;->access$300(Lcom/google/apps/tacotown/proto/data/ViewSegments;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 221
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->segments_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 222
    #getter for: Lcom/google/apps/tacotown/proto/data/ViewSegments;->segments_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/apps/tacotown/proto/data/ViewSegments;->access$300(Lcom/google/apps/tacotown/proto/data/ViewSegments;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->segments_:Ljava/util/List;

    .line 223
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->bitField0_:I

    goto :goto_6

    .line 225
    :cond_26
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->ensureSegmentsIsMutable()V

    .line 226
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->segments_:Ljava/util/List;

    #getter for: Lcom/google/apps/tacotown/proto/data/ViewSegments;->segments_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/apps/tacotown/proto/data/ViewSegments;->access$300(Lcom/google/apps/tacotown/proto/data/ViewSegments;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 243
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_1e

    .line 248
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 250
    :sswitch_d
    return-object p0

    .line 255
    :sswitch_e
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Segment;->newBuilder()Lcom/google/apps/tacotown/proto/data/Segment$Builder;

    move-result-object v0

    .line 256
    .local v0, subBuilder:Lcom/google/apps/tacotown/proto/data/Segment$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 257
    invoke-virtual {v0}, Lcom/google/apps/tacotown/proto/data/Segment$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/Segment;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->addSegments(Lcom/google/apps/tacotown/proto/data/Segment;)Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;

    goto :goto_0

    .line 243
    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 159
    check-cast p1, Lcom/google/apps/tacotown/proto/data/ViewSegments;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/ViewSegments;)Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;

    move-result-object v0

    return-object v0
.end method
