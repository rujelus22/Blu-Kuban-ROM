.class public final Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "HangoutStartContext.java"

# interfaces
.implements Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarksOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;",
        "Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;",
        ">;",
        "Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarksOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientLaunch_:J

.field private serverCreateRedirectEnd_:J

.field private serverCreateRoomEnd_:J

.field private serverCreateRoomStart_:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1144
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1145
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->maybeForceBuilderInitialization()V

    .line 1146
    return-void
.end method

.method static synthetic access$1100()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;
    .registers 1

    .prologue
    .line 1139
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->create()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;
    .registers 1

    .prologue
    .line 1151
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

    invoke-direct {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1149
    return-void
.end method


# virtual methods
.method public build()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;
    .registers 3

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    move-result-object v0

    .line 1177
    .local v0, result:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;
    invoke-virtual {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1178
    invoke-static {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1180
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->build()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;
    .registers 6

    .prologue
    .line 1194
    new-instance v1, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;-><init>(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$1;)V

    .line 1195
    .local v1, result:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->bitField0_:I

    .line 1196
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1197
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1198
    or-int/lit8 v2, v2, 0x1

    .line 1200
    :cond_10
    iget-wide v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->clientLaunch_:J

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->clientLaunch_:J
    invoke-static {v1, v3, v4}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->access$1302(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;J)J

    .line 1201
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 1202
    or-int/lit8 v2, v2, 0x2

    .line 1204
    :cond_1c
    iget-wide v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->serverCreateRoomStart_:J

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->serverCreateRoomStart_:J
    invoke-static {v1, v3, v4}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->access$1402(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;J)J

    .line 1205
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 1206
    or-int/lit8 v2, v2, 0x4

    .line 1208
    :cond_28
    iget-wide v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->serverCreateRoomEnd_:J

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->serverCreateRoomEnd_:J
    invoke-static {v1, v3, v4}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->access$1502(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;J)J

    .line 1209
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 1210
    or-int/lit8 v2, v2, 0x8

    .line 1212
    :cond_35
    iget-wide v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->serverCreateRedirectEnd_:J

    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->serverCreateRedirectEnd_:J
    invoke-static {v1, v3, v4}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->access$1602(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;J)J

    .line 1213
    #setter for: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->access$1702(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;I)I

    .line 1214
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 1155
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1156
    iput-wide v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->clientLaunch_:J

    .line 1157
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->bitField0_:I

    .line 1158
    iput-wide v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->serverCreateRoomStart_:J

    .line 1159
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->bitField0_:I

    .line 1160
    iput-wide v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->serverCreateRoomEnd_:J

    .line 1161
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->bitField0_:I

    .line 1162
    iput-wide v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->serverCreateRedirectEnd_:J

    .line 1163
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->bitField0_:I

    .line 1164
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->clear()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->clear()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;
    .registers 3

    .prologue
    .line 1168
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->create()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->buildPartial()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->mergeFrom(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->clone()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->clone()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

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
    .line 1139
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->clone()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;
    .registers 2

    .prologue
    .line 1172
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 1235
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 1218
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1231
    :cond_6
    :goto_6
    return-object p0

    .line 1219
    :cond_7
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->hasClientLaunch()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1220
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->getClientLaunch()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->setClientLaunch(J)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

    .line 1222
    :cond_14
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->hasServerCreateRoomStart()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1223
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->getServerCreateRoomStart()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->setServerCreateRoomStart(J)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

    .line 1225
    :cond_21
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->hasServerCreateRoomEnd()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1226
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->getServerCreateRoomEnd()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->setServerCreateRoomEnd(J)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

    .line 1228
    :cond_2e
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->hasServerCreateRedirectEnd()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1229
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;->getServerCreateRedirectEnd()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->setServerCreateRedirectEnd(J)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1243
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1244
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_42

    .line 1249
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1251
    :sswitch_d
    return-object p0

    .line 1256
    :sswitch_e
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->bitField0_:I

    .line 1257
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->clientLaunch_:J

    goto :goto_0

    .line 1261
    :sswitch_1b
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->bitField0_:I

    .line 1262
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->serverCreateRoomStart_:J

    goto :goto_0

    .line 1266
    :sswitch_28
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->bitField0_:I

    .line 1267
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->serverCreateRoomEnd_:J

    goto :goto_0

    .line 1271
    :sswitch_35
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->bitField0_:I

    .line 1272
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->serverCreateRedirectEnd_:J

    goto :goto_0

    .line 1244
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
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
    .line 1139
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1139
    check-cast p1, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->mergeFrom(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

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
    .line 1139
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClientLaunch(J)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1290
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->bitField0_:I

    .line 1291
    iput-wide p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->clientLaunch_:J

    .line 1293
    return-object p0
.end method

.method public setServerCreateRedirectEnd(J)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1353
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->bitField0_:I

    .line 1354
    iput-wide p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->serverCreateRedirectEnd_:J

    .line 1356
    return-object p0
.end method

.method public setServerCreateRoomEnd(J)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1332
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->bitField0_:I

    .line 1333
    iput-wide p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->serverCreateRoomEnd_:J

    .line 1335
    return-object p0
.end method

.method public setServerCreateRoomStart(J)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1311
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->bitField0_:I

    .line 1312
    iput-wide p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$LatencyMarks$Builder;->serverCreateRoomStart_:J

    .line 1314
    return-object p0
.end method
