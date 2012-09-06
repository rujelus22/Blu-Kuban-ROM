.class public final Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$SettingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;",
        "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$SettingOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private emailEnabled_:Z

.field private enabled_:Z

.field private type_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 36971
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 37109
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->type_:Ljava/lang/Object;

    .line 37145
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->description_:Ljava/lang/Object;

    .line 36972
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->maybeForceBuilderInitialization()V

    .line 36973
    return-void
.end method

.method static synthetic access$49700()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
    .registers 1

    .prologue
    .line 36966
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
    .registers 1

    .prologue
    .line 36978
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 36976
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36966
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;
    .registers 3

    .prologue
    .line 37003
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    move-result-object v0

    .line 37004
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 37005
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 37007
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36966
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;
    .registers 6

    .prologue
    .line 37021
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;-><init>(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 37022
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    .line 37023
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 37024
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 37025
    or-int/lit8 v2, v2, 0x1

    .line 37027
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->type_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->type_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->access$49902(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37028
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 37029
    or-int/lit8 v2, v2, 0x2

    .line 37031
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->description_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->description_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->access$50002(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37032
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 37033
    or-int/lit8 v2, v2, 0x4

    .line 37035
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->emailEnabled_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->emailEnabled_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->access$50102(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;Z)Z

    .line 37036
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 37037
    or-int/lit8 v2, v2, 0x8

    .line 37039
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->enabled_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->enabled_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->access$50202(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;Z)Z

    .line 37040
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->access$50302(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;I)I

    .line 37041
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 36966
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 36966
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 36982
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 36983
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->type_:Ljava/lang/Object;

    .line 36984
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    .line 36985
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->description_:Ljava/lang/Object;

    .line 36986
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    .line 36987
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->emailEnabled_:Z

    .line 36988
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    .line 36989
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->enabled_:Z

    .line 36990
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    .line 36991
    return-object p0
.end method

.method public clearDescription()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
    .registers 2

    .prologue
    .line 37169
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    .line 37170
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->description_:Ljava/lang/Object;

    .line 37172
    return-object p0
.end method

.method public clearEmailEnabled()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 37195
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    .line 37196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->emailEnabled_:Z

    .line 37198
    return-object p0
.end method

.method public clearEnabled()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
    .registers 2

    .prologue
    .line 37216
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    .line 37217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->enabled_:Z

    .line 37219
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
    .registers 2

    .prologue
    .line 37133
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    .line 37134
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->type_:Ljava/lang/Object;

    .line 37136
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 36966
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 36966
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
    .registers 3

    .prologue
    .line 36995
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

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
    .line 36966
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 36966
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36966
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;
    .registers 2

    .prologue
    .line 36999
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 4

    .prologue
    .line 37150
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->description_:Ljava/lang/Object;

    .line 37151
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 37152
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 37153
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->description_:Ljava/lang/Object;

    .line 37156
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getEmailEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 37186
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->emailEnabled_:Z

    return v0
.end method

.method public getEnabled()Z
    .registers 2

    .prologue
    .line 37207
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->enabled_:Z

    return v0
.end method

.method public getType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 37114
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->type_:Ljava/lang/Object;

    .line 37115
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 37116
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 37117
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->type_:Ljava/lang/Object;

    .line 37120
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 37147
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

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

.method public hasEmailEnabled()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 37183
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasEnabled()Z
    .registers 3

    .prologue
    .line 37204
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 37111
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

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
    .line 37062
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
    .line 36966
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 36966
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

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
    .line 36966
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37070
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 37071
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_42

    .line 37076
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37078
    :sswitch_d
    return-object p0

    .line 37083
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    .line 37084
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->type_:Ljava/lang/Object;

    goto :goto_0

    .line 37088
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    .line 37089
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->description_:Ljava/lang/Object;

    goto :goto_0

    .line 37093
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    .line 37094
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->emailEnabled_:Z

    goto :goto_0

    .line 37098
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    .line 37099
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->enabled_:Z

    goto :goto_0

    .line 37071
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 37045
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 37058
    :cond_6
    :goto_6
    return-object p0

    .line 37046
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 37047
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->setType(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

    .line 37049
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 37050
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->setDescription(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

    .line 37052
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->hasEmailEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 37053
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getEmailEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->setEmailEnabled(Z)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

    .line 37055
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->hasEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37056
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->setEnabled(Z)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

    goto :goto_6
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37160
    if-nez p1, :cond_8

    .line 37161
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37163
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    .line 37164
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->description_:Ljava/lang/Object;

    .line 37166
    return-object p0
.end method

.method public setEmailEnabled(Z)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 37189
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    .line 37190
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->emailEnabled_:Z

    .line 37192
    return-object p0
.end method

.method public setEnabled(Z)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37210
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    .line 37211
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->enabled_:Z

    .line 37213
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37124
    if-nez p1, :cond_8

    .line 37125
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37127
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->bitField0_:I

    .line 37128
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->type_:Ljava/lang/Object;

    .line 37130
    return-object p0
.end method
