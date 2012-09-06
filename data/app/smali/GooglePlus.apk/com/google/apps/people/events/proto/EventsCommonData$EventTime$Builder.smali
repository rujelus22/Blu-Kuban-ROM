.class public final Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "EventsCommonData.java"

# interfaces
.implements Lcom/google/apps/people/events/proto/EventsCommonData$EventTimeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;",
        "Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;",
        ">;",
        "Lcom/google/apps/people/events/proto/EventsCommonData$EventTimeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private timeMs_:J

.field private timezone_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2176
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2307
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->timezone_:Ljava/lang/Object;

    .line 2177
    invoke-direct {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->maybeForceBuilderInitialization()V

    .line 2178
    return-void
.end method

.method static synthetic access$2600()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;
    .registers 1

    .prologue
    .line 2171
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->create()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;
    .registers 1

    .prologue
    .line 2183
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

    invoke-direct {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2181
    return-void
.end method


# virtual methods
.method public build()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;
    .registers 3

    .prologue
    .line 2204
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v0

    .line 2205
    .local v0, result:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;
    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2206
    invoke-static {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2208
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2171
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->build()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;
    .registers 6

    .prologue
    .line 2222
    new-instance v1, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;-><init>(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;Lcom/google/apps/people/events/proto/EventsCommonData$1;)V

    .line 2223
    .local v1, result:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->bitField0_:I

    .line 2224
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2225
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 2226
    or-int/lit8 v2, v2, 0x1

    .line 2228
    :cond_10
    iget-wide v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->timeMs_:J

    #setter for: Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->timeMs_:J
    invoke-static {v1, v3, v4}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->access$2802(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;J)J

    .line 2229
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 2230
    or-int/lit8 v2, v2, 0x2

    .line 2232
    :cond_1c
    iget-object v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->timezone_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->timezone_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->access$2902(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2233
    #setter for: Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->access$3002(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;I)I

    .line 2234
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2171
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;
    .registers 3

    .prologue
    .line 2187
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2188
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->timeMs_:J

    .line 2189
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->bitField0_:I

    .line 2190
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->timezone_:Ljava/lang/Object;

    .line 2191
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->bitField0_:I

    .line 2192
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2171
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->clear()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2171
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->clear()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;
    .registers 3

    .prologue
    .line 2196
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->create()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;)Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2171
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->clone()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2171
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->clone()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

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
    .line 2171
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->clone()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;
    .registers 2

    .prologue
    .line 2200
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2171
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2171
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 2249
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;)Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 2238
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2245
    :cond_6
    :goto_6
    return-object p0

    .line 2239
    :cond_7
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->hasTimeMs()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2240
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->getTimeMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->setTimeMs(J)Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

    .line 2242
    :cond_14
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->hasTimezone()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2243
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->getTimezone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->setTimezone(Ljava/lang/String;)Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2257
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2258
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 2263
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2265
    :sswitch_d
    return-object p0

    .line 2270
    :sswitch_e
    iget v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->bitField0_:I

    .line 2271
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->timeMs_:J

    goto :goto_0

    .line 2275
    :sswitch_1b
    iget v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->bitField0_:I

    .line 2276
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->timezone_:Ljava/lang/Object;

    goto :goto_0

    .line 2258
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_1b
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
    .line 2171
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2171
    check-cast p1, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;)Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

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
    .line 2171
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTimeMs(J)Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2294
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->bitField0_:I

    .line 2295
    iput-wide p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->timeMs_:J

    .line 2297
    return-object p0
.end method

.method public setTimezone(Ljava/lang/String;)Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2322
    if-nez p1, :cond_8

    .line 2323
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2325
    :cond_8
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->bitField0_:I

    .line 2326
    iput-object p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->timezone_:Ljava/lang/Object;

    .line 2328
    return-object p0
.end method
