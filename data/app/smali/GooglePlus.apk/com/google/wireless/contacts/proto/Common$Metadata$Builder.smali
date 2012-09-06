.class public final Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Common.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Common$MetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Common$Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Common$Metadata;",
        "Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Common$MetadataOrBuilder;"
    }
.end annotation


# instance fields
.field private acl_:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

.field private bitField0_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 311
    sget-object v0, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;->PUBLIC:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->acl_:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    .line 212
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->maybeForceBuilderInitialization()V

    .line 213
    return-void
.end method

.method static synthetic access$100()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    .registers 1

    .prologue
    .line 206
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->create()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    .registers 1

    .prologue
    .line 218
    new-instance v0, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 216
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->build()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Common$Metadata;
    .registers 3

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    .line 238
    .local v0, result:Lcom/google/wireless/contacts/proto/Common$Metadata;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 239
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 241
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Common$Metadata;
    .registers 6

    .prologue
    .line 255
    new-instance v1, Lcom/google/wireless/contacts/proto/Common$Metadata;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Common$Metadata;-><init>(Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;Lcom/google/wireless/contacts/proto/Common$1;)V

    .line 256
    .local v1, result:Lcom/google/wireless/contacts/proto/Common$Metadata;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->bitField0_:I

    .line 257
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 258
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 259
    or-int/lit8 v2, v2, 0x1

    .line 261
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->acl_:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    #setter for: Lcom/google/wireless/contacts/proto/Common$Metadata;->acl_:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Common$Metadata;->access$302(Lcom/google/wireless/contacts/proto/Common$Metadata;Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;)Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    .line 262
    #setter for: Lcom/google/wireless/contacts/proto/Common$Metadata;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Common$Metadata;->access$402(Lcom/google/wireless/contacts/proto/Common$Metadata;I)I

    .line 263
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->clear()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->clear()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    .registers 2

    .prologue
    .line 222
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 223
    sget-object v0, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;->PUBLIC:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->acl_:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    .line 224
    iget v0, p0, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->bitField0_:I

    .line 225
    return-object p0
.end method

.method public clearAcl()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    .registers 2

    .prologue
    .line 328
    iget v0, p0, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->bitField0_:I

    .line 329
    sget-object v0, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;->PUBLIC:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->acl_:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    .line 331
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->clone()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->clone()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    .registers 3

    .prologue
    .line 229
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->create()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

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
    .line 206
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->clone()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAcl()Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->acl_:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Common$Metadata;
    .registers 2

    .prologue
    .line 233
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    return-object v0
.end method

.method public hasAcl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 313
    iget v1, p0, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 275
    const/4 v0, 0x1

    return v0
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
    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 206
    check-cast p1, Lcom/google/wireless/contacts/proto/Common$Metadata;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

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
    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 284
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_22

    .line 289
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 291
    :sswitch_d
    return-object p0

    .line 296
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 297
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;->valueOf(I)Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    move-result-object v2

    .line 298
    .local v2, value:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;
    if-eqz v2, :cond_0

    .line 299
    iget v3, p0, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->bitField0_:I

    .line 300
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->acl_:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    goto :goto_0

    .line 284
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 267
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 271
    :cond_6
    :goto_6
    return-object p0

    .line 268
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$Metadata;->hasAcl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 269
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getAcl()Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->setAcl(Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    goto :goto_6
.end method

.method public setAcl(Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 319
    if-nez p1, :cond_8

    .line 320
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 322
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->bitField0_:I

    .line 323
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->acl_:Lcom/google/wireless/contacts/proto/Common$Metadata$ACL;

    .line 325
    return-object p0
.end method
