.class public final Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;",
        "Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotificationOrBuilder;"
    }
.end annotation


# instance fields
.field private active_:Z

.field private bitField0_:I

.field private phoneNumber_:Ljava/lang/Object;

.field private truncateMessage_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 10997
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 11123
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 10998
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->maybeForceBuilderInitialization()V

    .line 10999
    return-void
.end method

.method static synthetic access$12600()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;
    .registers 1

    .prologue
    .line 10992
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;
    .registers 1

    .prologue
    .line 11004
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 11002
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;
    .registers 3

    .prologue
    .line 11027
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    move-result-object v0

    .line 11028
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 11029
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 11031
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10992
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;
    .registers 6

    .prologue
    .line 11035
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 11036
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->bitField0_:I

    .line 11037
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 11038
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 11039
    or-int/lit8 v2, v2, 0x1

    .line 11041
    :cond_10
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->active_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->active_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->access$12802(Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;Z)Z

    .line 11042
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 11043
    or-int/lit8 v2, v2, 0x2

    .line 11045
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->phoneNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->phoneNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->access$12902(Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11046
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 11047
    or-int/lit8 v2, v2, 0x4

    .line 11049
    :cond_28
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->truncateMessage_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->truncateMessage_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->access$13002(Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;Z)Z

    .line 11050
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->access$13102(Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;I)I

    .line 11051
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10992
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 11008
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 11009
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->active_:Z

    .line 11010
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->bitField0_:I

    .line 11011
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 11012
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->bitField0_:I

    .line 11013
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->truncateMessage_:Z

    .line 11014
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->bitField0_:I

    .line 11015
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10992
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10992
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearActive()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;
    .registers 2

    .prologue
    .line 11116
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->bitField0_:I

    .line 11117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->active_:Z

    .line 11119
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;
    .registers 2

    .prologue
    .line 11159
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->bitField0_:I

    .line 11160
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 11162
    return-object p0
.end method

.method public clearTruncateMessage()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;
    .registers 2

    .prologue
    .line 11190
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->bitField0_:I

    .line 11191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->truncateMessage_:Z

    .line 11193
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;
    .registers 3

    .prologue
    .line 11019
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 10992
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10992
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10992
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;

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
    .line 10992
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActive()Z
    .registers 2

    .prologue
    .line 11107
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->active_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;
    .registers 2

    .prologue
    .line 11023
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 10992
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10992
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 11128
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 11129
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 11130
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11131
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 11134
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

.method public getPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 11139
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 11140
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 11141
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11143
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 11146
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getTruncateMessage()Z
    .registers 2

    .prologue
    .line 11181
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->truncateMessage_:Z

    return v0
.end method

.method public hasActive()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 11104
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPhoneNumber()Z
    .registers 3

    .prologue
    .line 11125
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->bitField0_:I

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

.method public hasTruncateMessage()Z
    .registers 3

    .prologue
    .line 11178
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 11071
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->hasActive()Z

    move-result v1

    if-nez v1, :cond_8

    .line 11079
    :cond_7
    :goto_7
    return v0

    .line 11075
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->hasPhoneNumber()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 11079
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 11055
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 11067
    :cond_6
    :goto_6
    return-object p0

    .line 11056
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->hasActive()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 11057
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->getActive()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->setActive(Z)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;

    .line 11059
    :cond_14
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 11060
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->bitField0_:I

    .line 11061
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->phoneNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->access$12900(Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 11064
    :cond_26
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->hasTruncateMessage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11065
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->getTruncateMessage()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->setTruncateMessage(Z)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11086
    const/4 v2, 0x0

    .line 11088
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 11093
    if-eqz v2, :cond_10

    .line 11094
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;

    .line 11097
    :cond_10
    return-object p0

    .line 11089
    :catch_11
    move-exception v1

    .line 11090
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    move-object v2, v0

    .line 11091
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 11093
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 11094
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;

    :cond_21
    throw v3
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
    .line 10992
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 10992
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification;)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;

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
    .line 10992
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setActive(Z)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11110
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->bitField0_:I

    .line 11111
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->active_:Z

    .line 11113
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11150
    if-nez p1, :cond_8

    .line 11151
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11153
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->bitField0_:I

    .line 11154
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 11156
    return-object p0
.end method

.method public setPhoneNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11166
    if-nez p1, :cond_8

    .line 11167
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11169
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->bitField0_:I

    .line 11170
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 11172
    return-object p0
.end method

.method public setTruncateMessage(Z)Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11184
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->bitField0_:I

    .line 11185
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettings$SmsVmailNotification$Builder;->truncateMessage_:Z

    .line 11187
    return-object p0
.end method
