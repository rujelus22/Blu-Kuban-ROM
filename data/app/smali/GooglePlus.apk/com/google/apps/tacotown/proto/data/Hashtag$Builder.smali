.class public final Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Hashtag.java"

# interfaces
.implements Lcom/google/apps/tacotown/proto/data/HashtagOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/tacotown/proto/data/Hashtag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/apps/tacotown/proto/data/Hashtag;",
        "Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;",
        ">;",
        "Lcom/google/apps/tacotown/proto/data/HashtagOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private searchText_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 272
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->searchText_:Ljava/lang/Object;

    .line 177
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->maybeForceBuilderInitialization()V

    .line 178
    return-void
.end method

.method static synthetic access$100()Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;
    .registers 1

    .prologue
    .line 171
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->create()Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;
    .registers 1

    .prologue
    .line 183
    new-instance v0, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;

    invoke-direct {v0}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 181
    return-void
.end method


# virtual methods
.method public build()Lcom/google/apps/tacotown/proto/data/Hashtag;
    .registers 3

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/Hashtag;

    move-result-object v0

    .line 203
    .local v0, result:Lcom/google/apps/tacotown/proto/data/Hashtag;
    invoke-virtual {v0}, Lcom/google/apps/tacotown/proto/data/Hashtag;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 204
    invoke-static {v0}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 206
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->build()Lcom/google/apps/tacotown/proto/data/Hashtag;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/apps/tacotown/proto/data/Hashtag;
    .registers 6

    .prologue
    .line 220
    new-instance v1, Lcom/google/apps/tacotown/proto/data/Hashtag;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/apps/tacotown/proto/data/Hashtag;-><init>(Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;Lcom/google/apps/tacotown/proto/data/Hashtag$1;)V

    .line 221
    .local v1, result:Lcom/google/apps/tacotown/proto/data/Hashtag;
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->bitField0_:I

    .line 222
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 223
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 224
    or-int/lit8 v2, v2, 0x1

    .line 226
    :cond_10
    iget-object v3, p0, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->searchText_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/tacotown/proto/data/Hashtag;->searchText_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/data/Hashtag;->access$302(Lcom/google/apps/tacotown/proto/data/Hashtag;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    #setter for: Lcom/google/apps/tacotown/proto/data/Hashtag;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/apps/tacotown/proto/data/Hashtag;->access$402(Lcom/google/apps/tacotown/proto/data/Hashtag;I)I

    .line 228
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/Hashtag;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;
    .registers 2

    .prologue
    .line 187
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 188
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->searchText_:Ljava/lang/Object;

    .line 189
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->bitField0_:I

    .line 190
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->clear()Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->clear()Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;
    .registers 3

    .prologue
    .line 194
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->create()Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/data/Hashtag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/Hashtag;)Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->clone()Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->clone()Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;

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
    .line 171
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->clone()Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/Hashtag;
    .registers 2

    .prologue
    .line 198
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Hashtag;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/Hashtag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/Hashtag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/Hashtag;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/apps/tacotown/proto/data/Hashtag;)Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 232
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Hashtag;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/Hashtag;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 236
    :cond_6
    :goto_6
    return-object p0

    .line 233
    :cond_7
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Hashtag;->hasSearchText()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 234
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/data/Hashtag;->getSearchText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->setSearchText(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 249
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 254
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    :sswitch_d
    return-object p0

    .line 261
    :sswitch_e
    iget v1, p0, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->bitField0_:I

    .line 262
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->searchText_:Ljava/lang/Object;

    goto :goto_0

    .line 249
    nop

    :sswitch_data_1c
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
    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 171
    check-cast p1, Lcom/google/apps/tacotown/proto/data/Hashtag;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/Hashtag;)Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;

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
    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSearchText(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 287
    if-nez p1, :cond_8

    .line 288
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 290
    :cond_8
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->bitField0_:I

    .line 291
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Hashtag$Builder;->searchText_:Ljava/lang/Object;

    .line 293
    return-object p0
.end method
