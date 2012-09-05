.class public final Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PlusOneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;",
        "Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 929
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$2000()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;
    .registers 1

    .prologue
    .line 923
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->create()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;
    .registers 3

    .prologue
    .line 932
    new-instance v0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;

    invoke-direct {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;-><init>()V

    .line 933
    .local v0, builder:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;
    new-instance v1, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;-><init>(Lcom/google/android/plus1/proto/PlusOneProtos$1;)V

    iput-object v1, v0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    .line 934
    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;
    .registers 2

    .prologue
    .line 962
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 963
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    invoke-static {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 965
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->buildPartial()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;
    .registers 4

    .prologue
    .line 978
    iget-object v1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    if-nez v1, :cond_c

    .line 979
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 982
    :cond_c
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    .line 983
    .local v0, returnMe:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    .line 984
    return-object v0
.end method

.method public clone()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;
    .registers 3

    .prologue
    .line 951
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->create()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    invoke-virtual {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->mergeFrom(Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->clone()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->clone()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;

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
    .line 923
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->clone()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 959
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    invoke-virtual {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 988
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->getDefaultInstance()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 998
    :cond_6
    :goto_6
    return-object p0

    .line 989
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->hasOptedIntoPlusOne()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 990
    invoke-virtual {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->getOptedIntoPlusOne()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->setOptedIntoPlusOne(Z)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;

    .line 992
    :cond_14
    invoke-virtual {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 993
    invoke-virtual {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;

    .line 995
    :cond_21
    invoke-virtual {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->hasThumbnailUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 996
    invoke-virtual {p1}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->setThumbnailUrl(Ljava/lang/String;)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1006
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1007
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_26

    .line 1011
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1012
    :sswitch_d
    return-object p0

    .line 1017
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->setOptedIntoPlusOne(Z)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;

    goto :goto_0

    .line 1021
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;

    goto :goto_0

    .line 1025
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->setThumbnailUrl(Ljava/lang/String;)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;

    goto :goto_0

    .line 1007
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
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
    .line 923
    invoke-virtual {p0, p1, p2}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;

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
    .line 923
    invoke-virtual {p0, p1, p2}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1059
    if-nez p1, :cond_8

    .line 1060
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1062
    :cond_8
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->hasDisplayName:Z
    invoke-static {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->access$2402(Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;Z)Z

    .line 1063
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->displayName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->access$2502(Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;Ljava/lang/String;)Ljava/lang/String;

    .line 1064
    return-object p0
.end method

.method public setOptedIntoPlusOne(Z)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->hasOptedIntoPlusOne:Z
    invoke-static {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->access$2202(Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;Z)Z

    .line 1042
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->optedIntoPlusOne_:Z
    invoke-static {v0, p1}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->access$2302(Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;Z)Z

    .line 1043
    return-object p0
.end method

.method public setThumbnailUrl(Ljava/lang/String;)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1080
    if-nez p1, :cond_8

    .line 1081
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1083
    :cond_8
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->hasThumbnailUrl:Z
    invoke-static {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->access$2602(Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;Z)Z

    .line 1084
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->result:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    #setter for: Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->thumbnailUrl_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->access$2702(Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;Ljava/lang/String;)Ljava/lang/String;

    .line 1085
    return-object p0
.end method
