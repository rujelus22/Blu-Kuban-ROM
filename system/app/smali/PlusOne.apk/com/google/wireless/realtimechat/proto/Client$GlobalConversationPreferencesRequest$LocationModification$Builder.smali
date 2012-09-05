.class public final Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;",
        "Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModificationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

.field private type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 21643
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 21761
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;->ADD:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    .line 21785
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 21644
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->maybeForceBuilderInitialization()V

    .line 21645
    return-void
.end method

.method static synthetic access$29000()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;
    .registers 1

    .prologue
    .line 21638
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;
    .registers 1

    .prologue
    .line 21650
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 21648
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;
    .registers 3

    .prologue
    .line 21671
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    move-result-object v0

    .line 21672
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 21673
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 21675
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21638
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;
    .registers 6

    .prologue
    .line 21689
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;-><init>(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 21690
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->bitField0_:I

    .line 21691
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 21692
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 21693
    or-int/lit8 v2, v2, 0x1

    .line 21695
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->access$29202(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    .line 21696
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 21697
    or-int/lit8 v2, v2, 0x2

    .line 21699
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->access$29302(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 21700
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->access$29402(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;I)I

    .line 21701
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 21638
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 21638
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;
    .registers 2

    .prologue
    .line 21654
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21655
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;->ADD:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    .line 21656
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->bitField0_:I

    .line 21657
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 21658
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->bitField0_:I

    .line 21659
    return-object p0
.end method

.method public clearLocation()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;
    .registers 2

    .prologue
    .line 21821
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 21823
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->bitField0_:I

    .line 21824
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;
    .registers 2

    .prologue
    .line 21778
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->bitField0_:I

    .line 21779
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;->ADD:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    .line 21781
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 21638
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 21638
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;
    .registers 3

    .prologue
    .line 21663
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;

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
    .line 21638
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 21638
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21638
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;
    .registers 2

    .prologue
    .line 21667
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/google/wireless/realtimechat/proto/Data$Location;
    .registers 2

    .prologue
    .line 21790
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    return-object v0
.end method

.method public getType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;
    .registers 2

    .prologue
    .line 21766
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    return-object v0
.end method

.method public hasLocation()Z
    .registers 3

    .prologue
    .line 21787
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 21763
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->bitField0_:I

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
    .line 21638
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;

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
    .line 21638
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21724
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 21725
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_3e

    .line 21730
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 21732
    :sswitch_d
    return-object p0

    .line 21737
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 21738
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    move-result-object v3

    .line 21739
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;
    if-eqz v3, :cond_0

    .line 21740
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->bitField0_:I

    .line 21741
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    goto :goto_0

    .line 21746
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;
    :sswitch_21
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v1

    .line 21747
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->hasLocation()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 21748
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->getLocation()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    .line 21750
    :cond_32
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 21751
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->setLocation(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;

    goto :goto_0

    .line 21725
    nop

    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 21705
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 21712
    :cond_6
    :goto_6
    return-object p0

    .line 21706
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 21707
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->getType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;

    .line 21709
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21710
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->getLocation()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->mergeLocation(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;

    goto :goto_6
.end method

.method public mergeLocation(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 21809
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 21811
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$Location;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 21817
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->bitField0_:I

    .line 21818
    return-object p0

    .line 21814
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    goto :goto_1f
.end method

.method public setLocation(Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 21803
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 21805
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->bitField0_:I

    .line 21806
    return-object p0
.end method

.method public setLocation(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21793
    if-nez p1, :cond_8

    .line 21794
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21796
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 21798
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->bitField0_:I

    .line 21799
    return-object p0
.end method

.method public setType(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 21769
    if-nez p1, :cond_8

    .line 21770
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21772
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->bitField0_:I

    .line 21773
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$PreferencesModificationType;

    .line 21775
    return-object p0
.end method
