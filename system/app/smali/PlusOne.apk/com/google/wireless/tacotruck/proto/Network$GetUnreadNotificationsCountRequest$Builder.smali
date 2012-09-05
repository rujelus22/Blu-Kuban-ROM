.class public final Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private coalesceCircleNotifications_:Z

.field private includedNotificationType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 32814
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 32969
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    .line 32815
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->maybeForceBuilderInitialization()V

    .line 32816
    return-void
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 1

    .prologue
    .line 32821
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureIncludedNotificationTypeIsMutable()V
    .registers 3

    .prologue
    .line 32972
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 32973
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    .line 32974
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    .line 32976
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 32819
    return-void
.end method


# virtual methods
.method public addAllIncludedNotificationType(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 33007
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->ensureIncludedNotificationTypeIsMutable()V

    .line 33008
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 33010
    return-object p0
.end method

.method public addIncludedNotificationType(Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32997
    if-nez p1, :cond_8

    .line 32998
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33000
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->ensureIncludedNotificationTypeIsMutable()V

    .line 33001
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33003
    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32809
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;
    .registers 6

    .prologue
    .line 32860
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 32861
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    .line 32862
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 32863
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 32864
    or-int/lit8 v2, v2, 0x1

    .line 32866
    :cond_10
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->coalesceCircleNotifications_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->coalesceCircleNotifications_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->access$45502(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;Z)Z

    .line 32867
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 32868
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    .line 32869
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    .line 32871
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->access$45602(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;Ljava/util/List;)Ljava/util/List;

    .line 32872
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->access$45702(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;I)I

    .line 32873
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 32809
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 32809
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 2

    .prologue
    .line 32825
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 32826
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->coalesceCircleNotifications_:Z

    .line 32827
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    .line 32828
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    .line 32829
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    .line 32830
    return-object p0
.end method

.method public clearCoalesceCircleNotifications()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 2

    .prologue
    .line 32962
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    .line 32963
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->coalesceCircleNotifications_:Z

    .line 32965
    return-object p0
.end method

.method public clearIncludedNotificationType()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 2

    .prologue
    .line 33013
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    .line 33014
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    .line 33016
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 32809
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 32809
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 3

    .prologue
    .line 32834
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

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
    .line 32809
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCoalesceCircleNotifications()Z
    .registers 2

    .prologue
    .line 32953
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->coalesceCircleNotifications_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 32809
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32809
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;
    .registers 2

    .prologue
    .line 32838
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getIncludedNotificationType(I)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    .registers 3
    .parameter "index"

    .prologue
    .line 32984
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    return-object v0
.end method

.method public getIncludedNotificationTypeCount()I
    .registers 2

    .prologue
    .line 32981
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIncludedNotificationTypeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32978
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCoalesceCircleNotifications()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 32950
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

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
    .line 32809
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

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
    .line 32809
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32903
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 32904
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_4a

    .line 32909
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 32911
    :sswitch_d
    return-object p0

    .line 32916
    :sswitch_e
    iget v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    .line 32917
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->coalesceCircleNotifications_:Z

    goto :goto_0

    .line 32921
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 32922
    .local v2, rawValue:I
    invoke-static {v2}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->valueOf(I)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    move-result-object v4

    .line 32923
    .local v4, value:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    if-eqz v4, :cond_0

    .line 32924
    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->addIncludedNotificationType(Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    goto :goto_0

    .line 32929
    .end local v2           #rawValue:I
    .end local v4           #value:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    :sswitch_29
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 32930
    .local v0, length:I
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 32931
    .local v1, oldLimit:I
    :cond_31
    :goto_31
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_45

    .line 32932
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 32933
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->valueOf(I)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    move-result-object v4

    .line 32934
    .restart local v4       #value:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    if-eqz v4, :cond_31

    .line 32935
    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->addIncludedNotificationType(Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    goto :goto_31

    .line 32938
    .end local v2           #rawValue:I
    .end local v4           #value:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    :cond_45
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 32904
    nop

    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x12 -> :sswitch_29
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 32877
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 32891
    :cond_6
    :goto_6
    return-object p0

    .line 32878
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->hasCoalesceCircleNotifications()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 32879
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->getCoalesceCircleNotifications()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->setCoalesceCircleNotifications(Z)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;

    .line 32881
    :cond_14
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->access$45600(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 32882
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 32883
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->access$45600(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    .line 32884
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    goto :goto_6

    .line 32886
    :cond_33
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->ensureIncludedNotificationTypeIsMutable()V

    .line 32887
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->includedNotificationType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;->access$45600(Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setCoalesceCircleNotifications(Z)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32956
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->bitField0_:I

    .line 32957
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->coalesceCircleNotifications_:Z

    .line 32959
    return-object p0
.end method

.method public setIncludedNotificationType(ILcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;)Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 32988
    if-nez p2, :cond_8

    .line 32989
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32991
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->ensureIncludedNotificationTypeIsMutable()V

    .line 32992
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetUnreadNotificationsCountRequest$Builder;->includedNotificationType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 32994
    return-object p0
.end method
