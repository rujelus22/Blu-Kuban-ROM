.class public final Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private unreadCount_:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33794
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 33795
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->maybeForceBuilderInitialization()V

    .line 33796
    return-void
.end method

.method static synthetic access$46600()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;
    .registers 1

    .prologue
    .line 33789
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;
    .registers 1

    .prologue
    .line 33801
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 33799
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33789
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;
    .registers 3

    .prologue
    .line 33820
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;

    move-result-object v0

    .line 33821
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 33822
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 33824
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33789
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;
    .registers 6

    .prologue
    .line 33838
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 33839
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->bitField0_:I

    .line 33840
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 33841
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 33842
    or-int/lit8 v2, v2, 0x1

    .line 33844
    :cond_10
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->unreadCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->unreadCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->access$46802(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;I)I

    .line 33845
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->access$46902(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;I)I

    .line 33846
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 33789
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 33789
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;
    .registers 2

    .prologue
    .line 33805
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 33806
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->unreadCount_:I

    .line 33807
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->bitField0_:I

    .line 33808
    return-object p0
.end method

.method public clearUnreadCount()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;
    .registers 2

    .prologue
    .line 33904
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->bitField0_:I

    .line 33905
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->unreadCount_:I

    .line 33907
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 33789
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 33789
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;
    .registers 3

    .prologue
    .line 33812
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;

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
    .line 33789
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 33789
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33789
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;
    .registers 2

    .prologue
    .line 33816
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getUnreadCount()I
    .registers 2

    .prologue
    .line 33895
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->unreadCount_:I

    return v0
.end method

.method public hasUnreadCount()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 33892
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->bitField0_:I

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
    .line 33858
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
    .line 33789
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 33789
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;

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
    .line 33789
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33866
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 33867
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 33872
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33874
    :sswitch_d
    return-object p0

    .line 33879
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->bitField0_:I

    .line 33880
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->unreadCount_:I

    goto :goto_0

    .line 33867
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 33850
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 33854
    :cond_6
    :goto_6
    return-object p0

    .line 33851
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->hasUnreadCount()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33852
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse;->getUnreadCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->setUnreadCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;

    goto :goto_6
.end method

.method public setUnreadCount(I)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33898
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->bitField0_:I

    .line 33899
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountResponse$Builder;->unreadCount_:I

    .line 33901
    return-object p0
.end method
