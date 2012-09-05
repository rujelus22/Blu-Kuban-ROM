.class public final Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SettingsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$SettingsRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 18171
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 18271
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    .line 18172
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->maybeForceBuilderInitialization()V

    .line 18173
    return-void
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;
    .registers 1

    .prologue
    .line 18178
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 18176
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18166
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;
    .registers 6

    .prologue
    .line 18215
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 18216
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->bitField0_:I

    .line 18217
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 18218
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 18219
    or-int/lit8 v2, v2, 0x1

    .line 18221
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->access$24502(Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    .line 18222
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->access$24602(Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;I)I

    .line 18223
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 18166
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18166
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;
    .registers 2

    .prologue
    .line 18182
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 18183
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    .line 18184
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->bitField0_:I

    .line 18185
    return-object p0
.end method

.method public clearUserPreferences()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;
    .registers 2

    .prologue
    .line 18307
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    .line 18309
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->bitField0_:I

    .line 18310
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 18166
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 18166
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;
    .registers 3

    .prologue
    .line 18189
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;)Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;

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
    .line 18166
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 18166
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18166
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;
    .registers 2

    .prologue
    .line 18193
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getUserPreferences()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
    .registers 2

    .prologue
    .line 18276
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    return-object v0
.end method

.method public hasUserPreferences()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 18273
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 18166
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;

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
    .line 18166
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18243
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 18244
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 18249
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 18251
    :sswitch_d
    return-object p0

    .line 18256
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    .line 18257
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->hasUserPreferences()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 18258
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->getUserPreferences()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    .line 18260
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 18261
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->setUserPreferences(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;

    goto :goto_0

    .line 18244
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;)Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 18227
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 18231
    :cond_6
    :goto_6
    return-object p0

    .line 18228
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->hasUserPreferences()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18229
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->getUserPreferences()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->mergeUserPreferences(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;

    goto :goto_6
.end method

.method public mergeUserPreferences(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 18295
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 18297
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    .line 18303
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->bitField0_:I

    .line 18304
    return-object p0

    .line 18300
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    goto :goto_1f
.end method

.method public setUserPreferences(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 18289
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    .line 18291
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->bitField0_:I

    .line 18292
    return-object p0
.end method

.method public setUserPreferences(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18279
    if-nez p1, :cond_8

    .line 18280
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18282
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    .line 18284
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->bitField0_:I

    .line 18285
    return-object p0
.end method
