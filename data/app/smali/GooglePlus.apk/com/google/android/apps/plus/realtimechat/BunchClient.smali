.class public Lcom/google/android/apps/plus/realtimechat/BunchClient;
.super Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;
.source "BunchClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;,
        Lcom/google/android/apps/plus/realtimechat/BunchClient$ResponseFailedException;,
        Lcom/google/android/apps/plus/realtimechat/BunchClient$TimedOutException;,
        Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;,
        Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;
    }
.end annotation


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mClientVersion:Lcom/google/wireless/webapps/Version$ClientVersion;

.field private mConnected:Z

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private mListener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;

.field private final mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

.field private final mQueuedCommands:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;)V
    .registers 12
    .parameter "account"
    .parameter "context"
    .parameter "backend"
    .parameter "backendAddress"
    .parameter "listener"

    .prologue
    .line 250
    const-string v5, "bunch"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;-><init>(Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient$1;-><init>(Lcom/google/android/apps/plus/realtimechat/BunchClient;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 113
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    invoke-direct {v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    .line 251
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mQueuedCommands:Ljava/util/Collection;

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mConnected:Z

    .line 253
    iput-object p5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mListener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;

    .line 254
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/realtimechat/BunchClient;Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->retrySendRequest(Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getRequestTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static areConversationListRequestsEqual(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Z
    .registers 7
    .parameter "l"
    .parameter "r"

    .prologue
    const/4 v0, 0x1

    .line 805
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getType()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getType()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    move-result-object v2

    if-ne v1, v2, :cond_3a

    .line 806
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getTimestamp()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_24

    .line 816
    :cond_23
    :goto_23
    return v0

    .line 810
    :cond_24
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->hasConversationId()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->hasConversationId()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getConversationId()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_23

    .line 816
    :cond_3a
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private createBatchCommandBuilderWithClientVersion()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .registers 3

    .prologue
    .line 757
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mClientVersion:Lcom/google/wireless/webapps/Version$ClientVersion;

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->setClientVersionMessage(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method private expectResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Z
    .registers 3
    .parameter "command"

    .prologue
    .line 826
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasReceiptRequest()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 827
    const/4 v0, 0x0

    .line 829
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private static getRequestTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Ljava/lang/String;
    .registers 2
    .parameter "request"

    .prologue
    .line 1235
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasChatMessageRequest()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1236
    const-string v0, "ChatMessageRequest"

    .line 1290
    :goto_8
    return-object v0

    .line 1237
    :cond_9
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasConversationJoinRequest()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1238
    const-string v0, "ConversationJoinRequest"

    goto :goto_8

    .line 1239
    :cond_12
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasConversationListRequest()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1240
    const-string v0, "ConversationListRequest"

    goto :goto_8

    .line 1241
    :cond_1b
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasConversationPreferenceRequest()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1242
    const-string v0, "ConversationPreferenceRequest"

    goto :goto_8

    .line 1243
    :cond_24
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasConversationRenameRequest()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1244
    const-string v0, "ConversationRenameRequest"

    goto :goto_8

    .line 1245
    :cond_2d
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasConversationRequest()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1246
    const-string v0, "ConversationRequest"

    goto :goto_8

    .line 1247
    :cond_36
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasConversationSearchRequest()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1248
    const-string v0, "ConversationSearchRequest"

    goto :goto_8

    .line 1249
    :cond_3f
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasDeviceRegistrationRequest()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1250
    const-string v0, "DeviceRegistrationRequest"

    goto :goto_8

    .line 1251
    :cond_48
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasEventSearchRequest()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1252
    const-string v0, "EventSearchRequest"

    goto :goto_8

    .line 1253
    :cond_51
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasEventStreamRequest()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1254
    const-string v0, "EventStreamRequest"

    goto :goto_8

    .line 1255
    :cond_5a
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasGlobalConversationPreferencesRequest()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1256
    const-string v0, "GlobalConversationPreferencesRequest"

    goto :goto_8

    .line 1257
    :cond_63
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasHangoutInviteFinishRequest()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1258
    const-string v0, "HangoutInviteFinishRequest"

    goto :goto_8

    .line 1259
    :cond_6c
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasHangoutInviteKeepAliveRequest()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1260
    const-string v0, "HangoutInviteKeepAliveRequest"

    goto :goto_8

    .line 1261
    :cond_75
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasHangoutInviteReplyRequest()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 1262
    const-string v0, "HangoutInviteReplyRequest"

    goto :goto_8

    .line 1263
    :cond_7e
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasHangoutRingFinishRequest()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 1264
    const-string v0, "HangoutRingFinishRequest"

    goto :goto_8

    .line 1265
    :cond_87
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasInviteRequest()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 1266
    const-string v0, "InviteRequest"

    goto/16 :goto_8

    .line 1267
    :cond_91
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasLeaveConversationRequest()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 1268
    const-string v0, "LeaveConversationRequest"

    goto/16 :goto_8

    .line 1269
    :cond_9b
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasPingRequest()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 1270
    const-string v0, "PingRequest"

    goto/16 :goto_8

    .line 1271
    :cond_a5
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasPresenceRequest()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 1272
    const-string v0, "PresenceRequest"

    goto/16 :goto_8

    .line 1273
    :cond_af
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasReceiptRequest()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 1274
    const-string v0, "ReceiptRequest"

    goto/16 :goto_8

    .line 1275
    :cond_b9
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasReplyToInviteRequest()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 1276
    const-string v0, "ReplyToInviteRequest"

    goto/16 :goto_8

    .line 1277
    :cond_c3
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasSetAclsRequest()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 1278
    const-string v0, "SetAclsRequest"

    goto/16 :goto_8

    .line 1279
    :cond_cd
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasSuggestionsRequest()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 1280
    const-string v0, "SuggestionsRequest"

    goto/16 :goto_8

    .line 1281
    :cond_d7
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasTileEventRequest()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 1282
    const-string v0, "TileEventRequest"

    goto/16 :goto_8

    .line 1283
    :cond_e1
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasTypingRequest()Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 1284
    const-string v0, "TypingRequest"

    goto/16 :goto_8

    .line 1285
    :cond_eb
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasUserCreationRequest()Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 1286
    const-string v0, "UserCreationRequest"

    goto/16 :goto_8

    .line 1287
    :cond_f5
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasUserInfoRequest()Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 1288
    const-string v0, "UserInfoRequest"

    goto/16 :goto_8

    .line 1290
    :cond_ff
    const-string v0, "Unknown"

    goto/16 :goto_8
.end method

.method private static getResponseTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)Ljava/lang/String;
    .registers 2
    .parameter "response"

    .prologue
    .line 1322
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasChatMessageResponse()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1323
    const-string v0, "ChatMessageResponse"

    .line 1381
    :goto_8
    return-object v0

    .line 1324
    :cond_9
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasConversationJoinResponse()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1325
    const-string v0, "ConversationJoinResponse"

    goto :goto_8

    .line 1326
    :cond_12
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasConversationListResponse()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1327
    const-string v0, "ConversationListResponse"

    goto :goto_8

    .line 1328
    :cond_1b
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasConversationPreferenceResponse()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1329
    const-string v0, "ConversationPreferenceResponse"

    goto :goto_8

    .line 1330
    :cond_24
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasConversationRenameResponse()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1331
    const-string v0, "ConversationRenameResponse"

    goto :goto_8

    .line 1332
    :cond_2d
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasConversationResponse()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1333
    const-string v0, "ConversationResponse"

    goto :goto_8

    .line 1334
    :cond_36
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasConversationSearchResponse()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1335
    const-string v0, "ConversationSearchResponse"

    goto :goto_8

    .line 1336
    :cond_3f
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasDeviceRegistrationResponse()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1337
    const-string v0, "DeviceRegistrationResponse"

    goto :goto_8

    .line 1338
    :cond_48
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasError()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1339
    const-string v0, "Error"

    goto :goto_8

    .line 1340
    :cond_51
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasEventSearchResponse()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1341
    const-string v0, "EventSearchResponse"

    goto :goto_8

    .line 1342
    :cond_5a
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasEventSteamResponse()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1343
    const-string v0, "EventSteamResponse"

    goto :goto_8

    .line 1344
    :cond_63
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasGlobalConversationPreferencesResponse()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1345
    const-string v0, "GlobalConversationPreferencesResponse"

    goto :goto_8

    .line 1346
    :cond_6c
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasHangoutInviteFinishResponse()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1347
    const-string v0, "HangoutInviteFinishResponse"

    goto :goto_8

    .line 1348
    :cond_75
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasHangoutInviteKeepAliveResponse()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 1349
    const-string v0, "HangoutInviteKeepAliveResponse"

    goto :goto_8

    .line 1350
    :cond_7e
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasHangoutInviteReplyResponse()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 1351
    const-string v0, "HangoutInviteReplyResponse"

    goto :goto_8

    .line 1352
    :cond_87
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasHangoutInviteResponse()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 1353
    const-string v0, "HangoutInviteResponse"

    goto/16 :goto_8

    .line 1354
    :cond_91
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasHangoutRingFinishResponse()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 1355
    const-string v0, "HangoutRingFinishResponse"

    goto/16 :goto_8

    .line 1356
    :cond_9b
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasInviteResponse()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 1357
    const-string v0, "InviteResponse"

    goto/16 :goto_8

    .line 1358
    :cond_a5
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasLeaveConversationResponse()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 1359
    const-string v0, "LeaveConversationResponse"

    goto/16 :goto_8

    .line 1360
    :cond_af
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasPingResponse()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 1361
    const-string v0, "PingResponse"

    goto/16 :goto_8

    .line 1362
    :cond_b9
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasPresenceResponse()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 1363
    const-string v0, "PresenceResponse"

    goto/16 :goto_8

    .line 1364
    :cond_c3
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasReceiptResponse()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 1365
    const-string v0, "ReceiptResponse"

    goto/16 :goto_8

    .line 1366
    :cond_cd
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasReplyToInviteResponse()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 1367
    const-string v0, "ReplyToInviteResponse"

    goto/16 :goto_8

    .line 1368
    :cond_d7
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasSetAclsResponse()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 1369
    const-string v0, "SetAclsResponse"

    goto/16 :goto_8

    .line 1370
    :cond_e1
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasSuggestionsResponse()Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 1371
    const-string v0, "SuggestionsResponse"

    goto/16 :goto_8

    .line 1372
    :cond_eb
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasTileEventResponse()Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 1373
    const-string v0, "TileEventResponse"

    goto/16 :goto_8

    .line 1374
    :cond_f5
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasTypingResponse()Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 1375
    const-string v0, "TypingResponse"

    goto/16 :goto_8

    .line 1376
    :cond_ff
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasUserCreationResponse()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 1377
    const-string v0, "UserCreationResponse"

    goto/16 :goto_8

    .line 1378
    :cond_109
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasUserInfoResponse()Z

    move-result v0

    if-eqz v0, :cond_113

    .line 1379
    const-string v0, "UserInfoResponse"

    goto/16 :goto_8

    .line 1381
    :cond_113
    const-string v0, "Unknown"

    goto/16 :goto_8
.end method

.method private getRetryDelay(I)J
    .registers 4
    .parameter "retryCount"

    .prologue
    .line 1151
    const-wide/16 v0, 0x3e8

    .line 1152
    .local v0, delay:J
    shl-long/2addr v0, p1

    .line 1153
    return-wide v0
.end method

.method private getRetryTimeout(I)J
    .registers 4
    .parameter "retryCount"

    .prologue
    .line 1162
    const-wide/16 v0, 0x3a98

    .line 1163
    .local v0, timeout:J
    shl-long/2addr v0, p1

    .line 1164
    return-wide v0
.end method

.method private static getStateUpdateTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;)Ljava/lang/String;
    .registers 2
    .parameter "update"

    .prologue
    .line 1296
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasChatMessage()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1297
    const-string v0, "ChatMessage"

    .line 1317
    :goto_8
    return-object v0

    .line 1298
    :cond_9
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasGroupConversationRename()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1299
    const-string v0, "GroupConversationRename"

    goto :goto_8

    .line 1300
    :cond_12
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasInvalidateLocalCache()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1301
    const-string v0, "InvalidateLocalCache"

    goto :goto_8

    .line 1302
    :cond_1b
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasMembershipChange()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1303
    const-string v0, "MembershipChange"

    goto :goto_8

    .line 1304
    :cond_24
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasMigration()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1305
    const-string v0, "Migration"

    goto :goto_8

    .line 1306
    :cond_2d
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasNewConversation()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1307
    const-string v0, "NewConversation"

    goto :goto_8

    .line 1308
    :cond_36
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasPresence()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1309
    const-string v0, "Presence"

    goto :goto_8

    .line 1310
    :cond_3f
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasReceipt()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1311
    const-string v0, "Receipt"

    goto :goto_8

    .line 1312
    :cond_48
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasTileEvent()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1313
    const-string v0, "TileEvent"

    goto :goto_8

    .line 1314
    :cond_51
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasTyping()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1315
    const-string v0, "Typing"

    goto :goto_8

    .line 1317
    :cond_5a
    const-string v0, "Unknown"

    goto :goto_8
.end method

.method private handleError(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;II)V
    .registers 16
    .parameter "request"
    .parameter "status"
    .parameter "requestId"
    .parameter "retryCount"

    .prologue
    const/4 v10, 0x5

    .line 1080
    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    if-eq p2, v1, :cond_d

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_UNEXPECTED:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    if-eq p2, v1, :cond_d

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ERROR_TEMPORARY:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    if-ne p2, v1, :cond_a4

    .line 1083
    :cond_d
    const/4 v1, 0x3

    if-ge p4, v1, :cond_6f

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v1, :cond_6f

    .line 1084
    invoke-static {p1}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->retry(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v3

    .line 1086
    .local v3, newRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    invoke-direct {p0, p4}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getRetryDelay(I)J

    move-result-wide v8

    .line 1087
    .local v8, retryDelay:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1088
    .local v4, timestamp:J
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;

    add-int/lit8 v6, p4, 0x1

    move-object v1, p0

    move v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;-><init>(Lcom/google/android/apps/plus/realtimechat/BunchClient;ILcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;JI)V

    .line 1090
    .local v0, newPendingRequest:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1092
    .local v7, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1094
    const-string v1, "BunchClient"

    invoke-static {v1, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1095
    const-string v1, "BunchClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bunch server error: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " retrying in "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    .end local v0           #newPendingRequest:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    .end local v3           #newRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .end local v4           #timestamp:J
    .end local v7           #msg:Landroid/os/Message;
    .end local v8           #retryDelay:J
    :cond_6e
    :goto_6e
    return-void

    .line 1100
    :cond_6f
    const-string v1, "BunchClient"

    invoke-static {v1, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1101
    const-string v1, "BunchClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bunch server error: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " giving up"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 1107
    :cond_a4
    const-string v1, "BunchClient"

    invoke-static {v1, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1108
    const-string v1, "BunchClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bunch server error: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " fatal"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e
.end method

.method private processResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;Ljava/util/List;)V
    .registers 44
    .parameter "response"
    .parameter "operationState"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;",
            "Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 861
    .local p3, bunchResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getRequestClientId()Ljava/lang/String;

    move-result-object v6

    .line 862
    .local v6, clientId:Ljava/lang/String;
    const/16 v23, 0x0

    .line 863
    .local v23, pendingRequest:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    monitor-enter p0

    .line 865
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v36

    const-wide/32 v38, 0x15f90

    sub-long v20, v36, v38

    .line 866
    .local v20, oldestValid:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->trimOutdatedRequestIds(J)Ljava/util/List;

    move-result-object v34

    .line 868
    .local v34, timedOutRequests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;>;"
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_22
    :goto_22
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_c7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;

    .line 869
    .local v33, timedOut:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    if-eqz v33, :cond_22

    .line 870
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->retryOnTimeout(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Z

    move-result v36

    if-eqz v36, :cond_5d

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    move-object/from16 v36, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->addRequest(Ljava/lang/String;Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;)V

    goto :goto_22

    .line 893
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v20           #oldestValid:J
    .end local v33           #timedOut:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    .end local v34           #timedOutRequests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;>;"
    :catchall_5a
    move-exception v36

    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_7 .. :try_end_5c} :catchall_5a

    throw v36

    .line 875
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v20       #oldestValid:J
    .restart local v33       #timedOut:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    .restart local v34       #timedOutRequests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;>;"
    :cond_5d
    :try_start_5d
    const-string v36, "BunchClient"

    const/16 v37, 0x4

    invoke-static/range {v36 .. v37}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v36

    if-eqz v36, :cond_22

    .line 876
    const-string v36, "BunchClient"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "request "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getRequestTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " type ["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "] timed out"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    new-instance v12, Lcom/google/android/apps/plus/realtimechat/BunchClient$TimedOutException;

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v12, v0, v1}, Lcom/google/android/apps/plus/realtimechat/BunchClient$TimedOutException;-><init>(Lcom/google/android/apps/plus/realtimechat/BunchClient;Lcom/google/android/apps/plus/realtimechat/BunchClient$1;)V

    .line 881
    .local v12, exception:Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v36

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v37

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2, v12}, Lcom/google/android/apps/plus/content/EsNetworkData;->insertData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/network/HttpTransactionMetrics;Ljava/lang/Exception;)V

    goto/16 :goto_22

    .line 888
    .end local v12           #exception:Ljava/lang/Exception;
    .end local v33           #timedOut:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    :cond_c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->getData(Ljava/lang/String;)Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;

    move-result-object v23

    .line 889
    if-eqz v23, :cond_e8

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    move-object/from16 v36, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->removeRequest(Ljava/lang/String;)V

    .line 893
    :cond_e8
    monitor-exit p0
    :try_end_e9
    .catchall {:try_start_5d .. :try_end_e9} :catchall_5a

    .line 895
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v27

    .line 896
    .local v27, responseTimestamp:J
    if-eqz v23, :cond_281

    .line 899
    const-string v36, "BunchClient"

    const/16 v37, 0x4

    invoke-static/range {v36 .. v37}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v36

    if-eqz v36, :cond_129

    .line 900
    const-string v36, "BunchClient"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Received "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getResponseTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " ["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getRequestClientId()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "] processing"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_129
    new-instance v29, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequestId:I

    move/from16 v36, v0

    const/16 v37, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v36

    move/from16 v2, v37

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;-><init>(IILcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)V

    .line 908
    .local v29, result:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    new-instance v16, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;-><init>()V

    .line 911
    .local v16, inMetrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;
    new-instance v22, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    invoke-direct/range {v22 .. v22}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;-><init>()V

    .line 912
    .local v22, outMetrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getSerializedSize()I

    move-result v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->setBytesTransferred(J)V

    .line 913
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getSerializedSize()I

    move-result v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->setBytesTransferred(J)V

    .line 914
    new-instance v7, Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v7, v0, v1}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;-><init>(Lorg/apache/http/io/HttpTransportMetrics;Lorg/apache/http/io/HttpTransportMetrics;)V

    .line 916
    .local v7, connectionMetrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;
    invoke-virtual {v7}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->incrementRequestCount()V

    .line 917
    invoke-virtual {v7}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->incrementResponseCount()V

    .line 918
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->setConnectionMetrics(Lorg/apache/http/HttpConnectionMetrics;)V

    .line 920
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onEndTransaction()V

    .line 921
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onStartResultProcessing()V

    .line 934
    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequestId:I

    move/from16 v25, v0

    .line 935
    .local v25, requestId:I
    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRetryCount:I

    move/from16 v30, v0

    .line 936
    .local v30, retryCount:I
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-object/from16 v24, v0

    .line 938
    .local v24, request:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mListener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;

    move-object/from16 v19, v0

    .line 939
    .local v19, listener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;
    sget-object v31, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 940
    .local v31, status:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasUserInfoResponse()Z

    move-result v36

    if-eqz v36, :cond_2bc

    .line 941
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getUserInfoResponse()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->updateAcl(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)V

    .line 1049
    :cond_1cc
    :goto_1cc
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 1050
    .local v13, finishedTimestamp:J
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onEndResultProcessing()V

    .line 1052
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mTimestamp:J

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    .line 1053
    .local v26, requestTimestamp:Ljava/lang/Long;
    const-string v36, "BunchClient"

    const/16 v37, 0x4

    invoke-static/range {v36 .. v37}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v36

    if-eqz v36, :cond_255

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-object/from16 v36, v0

    if-eqz v36, :cond_255

    .line 1054
    const-string v36, "BunchClient"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "command type ["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getRequestTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "] roundTripTime "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v38

    sub-long v38, v27, v38

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " ms processingTime "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    sub-long v38, v13, v27

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " inBytes "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getSerializedSize()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " outBytes "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getSerializedSize()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_255
    const/4 v12, 0x0

    .line 1063
    .restart local v12       #exception:Ljava/lang/Exception;
    sget-object v36, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_269

    .line 1064
    new-instance v36, Lcom/google/android/apps/plus/realtimechat/BunchClient$ResponseFailedException;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/realtimechat/BunchClient$ResponseFailedException;-><init>(Lcom/google/android/apps/plus/realtimechat/BunchClient;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)V

    .line 1066
    :cond_269
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v36

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v37

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2, v12}, Lcom/google/android/apps/plus/content/EsNetworkData;->insertData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/network/HttpTransactionMetrics;Ljava/lang/Exception;)V

    .line 1068
    .end local v7           #connectionMetrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;
    .end local v12           #exception:Ljava/lang/Exception;
    .end local v13           #finishedTimestamp:J
    .end local v16           #inMetrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;
    .end local v19           #listener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;
    .end local v22           #outMetrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;
    .end local v24           #request:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .end local v25           #requestId:I
    .end local v26           #requestTimestamp:Ljava/lang/Long;
    .end local v29           #result:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;
    .end local v30           #retryCount:I
    .end local v31           #status:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :cond_280
    :goto_280
    return-void

    .line 926
    :cond_281
    const-string v36, "BunchClient"

    const/16 v37, 0x4

    invoke-static/range {v36 .. v37}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v36

    if-eqz v36, :cond_280

    .line 927
    const-string v36, "BunchClient"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Received "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getResponseTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " ["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getRequestClientId()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "] ignoring"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_280

    .line 942
    .restart local v7       #connectionMetrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;
    .restart local v16       #inMetrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;
    .restart local v19       #listener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;
    .restart local v22       #outMetrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;
    .restart local v24       #request:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .restart local v25       #requestId:I
    .restart local v29       #result:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;
    .restart local v30       #retryCount:I
    .restart local v31       #status:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :cond_2bc
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasSetAclsResponse()Z

    move-result v36

    if-nez v36, :cond_1cc

    .line 944
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasTypingResponse()Z

    move-result v36

    if-nez v36, :cond_1cc

    .line 946
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasPresenceResponse()Z

    move-result v36

    if-nez v36, :cond_1cc

    .line 948
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasTileEventResponse()Z

    move-result v36

    if-nez v36, :cond_1cc

    .line 950
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasReceiptResponse()Z

    move-result v36

    if-nez v36, :cond_1cc

    .line 952
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasPingResponse()Z

    move-result v36

    if-eqz v36, :cond_2fc

    .line 953
    const-string v36, "BunchClient"

    const/16 v37, 0x4

    invoke-static/range {v36 .. v37}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v36

    if-eqz v36, :cond_2f1

    .line 954
    const-string v36, "BunchClient"

    const-string v37, "Ping response from backend"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_2f1
    if-eqz v19, :cond_1cc

    .line 957
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;->onPingReceived(Lcom/google/android/apps/plus/realtimechat/BunchClient;)V

    goto/16 :goto_1cc

    .line 959
    :cond_2fc
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasUserCreationResponse()Z

    move-result v36

    if-eqz v36, :cond_336

    .line 960
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getUserCreationResponse()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v35

    .line 961
    .local v35, userCreationResponse:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;
    invoke-virtual/range {v35 .. v35}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v31

    .line 962
    sget-object v36, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_321

    .line 963
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    move/from16 v3, v25

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->handleError(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;II)V

    goto/16 :goto_1cc

    .line 965
    :cond_321
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v36

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v35

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsConversationsData;->processUserCreationResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto/16 :goto_1cc

    .line 968
    .end local v35           #userCreationResponse:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;
    :cond_336
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasSuggestionsResponse()Z

    move-result v36

    if-eqz v36, :cond_372

    .line 969
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v32

    .line 970
    .local v32, suggestionsResponse:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    invoke-virtual/range {v32 .. v32}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v31

    .line 971
    sget-object v36, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_35b

    .line 972
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    move/from16 v3, v25

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->handleError(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;II)V

    goto/16 :goto_1cc

    .line 974
    :cond_35b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v36

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v32

    move-object/from16 v3, v24

    move-object/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->processSuggestionsResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto/16 :goto_1cc

    .line 977
    .end local v32           #suggestionsResponse:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    :cond_372
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasConversationListResponse()Z

    move-result v36

    if-eqz v36, :cond_3aa

    .line 978
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getConversationListResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v8

    .line 980
    .local v8, conversationListResponse:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;
    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v31

    .line 981
    sget-object v36, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_397

    .line 982
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    move/from16 v3, v25

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->handleError(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;II)V

    goto/16 :goto_1cc

    .line 984
    :cond_397
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v36

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p2

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/apps/plus/content/EsConversationsData;->processConversationListResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto/16 :goto_1cc

    .line 987
    .end local v8           #conversationListResponse:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;
    :cond_3aa
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasEventSteamResponse()Z

    move-result v36

    if-eqz v36, :cond_3e2

    .line 988
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getEventSteamResponse()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v11

    .line 989
    .local v11, eventStreamResponse:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;
    invoke-virtual {v11}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v31

    .line 990
    sget-object v36, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_3cf

    .line 991
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    move/from16 v3, v25

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->handleError(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;II)V

    goto/16 :goto_1cc

    .line 993
    :cond_3cf
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v36

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p2

    invoke-static {v0, v1, v11, v2}, Lcom/google/android/apps/plus/content/EsConversationsData;->processEventStreamResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto/16 :goto_1cc

    .line 996
    .end local v11           #eventStreamResponse:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;
    :cond_3e2
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasConversationResponse()Z

    move-result v36

    if-eqz v36, :cond_41a

    .line 997
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v10

    .line 998
    .local v10, conversationResponse:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;
    invoke-virtual {v10}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v31

    .line 999
    sget-object v36, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_407

    .line 1000
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    move/from16 v3, v25

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->handleError(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;II)V

    goto/16 :goto_1cc

    .line 1002
    :cond_407
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v36

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p2

    invoke-static {v0, v1, v10, v2}, Lcom/google/android/apps/plus/content/EsConversationsData;->processConversationResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto/16 :goto_1cc

    .line 1005
    .end local v10           #conversationResponse:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;
    :cond_41a
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasChatMessageResponse()Z

    move-result v36

    if-eqz v36, :cond_452

    .line 1006
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getChatMessageResponse()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v5

    .line 1007
    .local v5, chatResponse:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;
    invoke-virtual {v5}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v31

    .line 1008
    sget-object v36, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_43f

    .line 1009
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    move/from16 v3, v25

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->handleError(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;II)V

    goto/16 :goto_1cc

    .line 1011
    :cond_43f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v36

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p2

    invoke-static {v0, v1, v5, v2}, Lcom/google/android/apps/plus/content/EsConversationsData;->processChatMessageResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto/16 :goto_1cc

    .line 1014
    .end local v5           #chatResponse:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;
    :cond_452
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasInviteResponse()Z

    move-result v36

    if-eqz v36, :cond_494

    .line 1015
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v17

    .line 1016
    .local v17, inviteResponse:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;
    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v31

    .line 1017
    sget-object v36, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_477

    .line 1018
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    move/from16 v3, v25

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->handleError(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;II)V

    goto/16 :goto_1cc

    .line 1020
    :cond_477
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v36

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v37

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v17

    move-object/from16 v3, v38

    move-object/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->processInviteResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto/16 :goto_1cc

    .line 1023
    .end local v17           #inviteResponse:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;
    :cond_494
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasConversationPreferenceResponse()Z

    move-result v36

    if-eqz v36, :cond_4cc

    .line 1024
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getConversationPreferenceResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v9

    .line 1026
    .local v9, conversationPrefResponse:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;
    invoke-virtual {v9}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v31

    .line 1027
    sget-object v36, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_4b9

    .line 1028
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    move/from16 v3, v25

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->handleError(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;II)V

    goto/16 :goto_1cc

    .line 1030
    :cond_4b9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v36

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p2

    invoke-static {v0, v1, v9, v2}, Lcom/google/android/apps/plus/content/EsConversationsData;->processConversationPreferenceResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto/16 :goto_1cc

    .line 1033
    .end local v9           #conversationPrefResponse:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;
    :cond_4cc
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasLeaveConversationResponse()Z

    move-result v36

    if-eqz v36, :cond_50c

    .line 1034
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getLeaveConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v18

    .line 1036
    .local v18, leaveConversationResponse:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;
    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v31

    .line 1037
    sget-object v36, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_4f1

    .line 1038
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    move/from16 v3, v25

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->handleError(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;II)V

    goto/16 :goto_1cc

    .line 1040
    :cond_4f1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v36

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v37

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v18

    move-object/from16 v3, v38

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsConversationsData;->processLeaveConversationResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    goto/16 :goto_1cc

    .line 1044
    .end local v18           #leaveConversationResponse:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;
    :cond_50c
    const-string v36, "BunchClient"

    const/16 v37, 0x5

    invoke-static/range {v36 .. v37}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v36

    if-eqz v36, :cond_1cc

    .line 1045
    const-string v36, "BunchClient"

    const-string v37, "Unexpected response from bunch server"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1cc
.end method

.method private processUpdate(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 6
    .parameter "update"
    .parameter "operationState"

    .prologue
    .line 842
    const-string v0, "BunchClient"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 843
    const-string v0, "BunchClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received stateUpdate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getStateUpdateTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_25
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->processBunchServerUpdate(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 847
    return-void
.end method

.method private retryOnTimeout(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Z
    .registers 3
    .parameter "request"

    .prologue
    .line 1137
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasUserCreationRequest()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasConversationListRequest()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasEventStreamRequest()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1140
    :cond_12
    const/4 v0, 0x1

    .line 1142
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private retrySendRequest(Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;)V
    .registers 11
    .parameter "pendingRequest"

    .prologue
    const/4 v8, 0x3

    .line 329
    const/4 v4, 0x0

    .line 330
    .local v4, success:Z
    const-string v5, "BunchClient"

    invoke-static {v5, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 331
    const-string v5, "BunchClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "retrySendRequest "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequestId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_24
    iget-object v0, p1, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    .line 334
    .local v0, command:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    monitor-enter p0

    .line 335
    :try_start_27
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->expectResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Z

    move-result v5

    if-eqz v5, :cond_12a

    .line 336
    const-string v5, "BunchClient"

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 337
    const-string v5, "BunchClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getRequestTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] expecting response"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mTimestamp:J

    .line 341
    new-instance v5, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-direct {v5}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;-><init>()V

    iput-object v5, p1, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    .line 342
    iget-object v5, p1, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RealTimeChat:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getRequestTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onBeginTransaction(Ljava/lang/String;)V

    .line 344
    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->addRequest(Ljava/lang/String;Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;)V

    .line 346
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->retryOnTimeout(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Z

    move-result v5

    if-eqz v5, :cond_e6

    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v5, :cond_e6

    .line 347
    iget v5, p1, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRetryCount:I

    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getRetryTimeout(I)J

    move-result-wide v2

    .line 348
    .local v2, retryTimeout:J
    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-virtual {v5, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 350
    .local v1, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 352
    const-string v5, "BunchClient"

    const/4 v6, 0x5

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_e6

    .line 353
    const-string v5, "BunchClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bunch request timeout "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    invoke-virtual {v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " checking in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #retryTimeout:J
    :cond_e6
    :goto_e6
    monitor-exit p0
    :try_end_e7
    .catchall {:try_start_27 .. :try_end_e7} :catchall_164

    .line 366
    iget-boolean v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mConnected:Z

    if-eqz v5, :cond_100

    .line 367
    const/4 v4, 0x1

    .line 368
    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->createBatchCommandBuilderWithClientVersion()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendMessage([B)Z

    move-result v4

    .line 373
    :cond_100
    if-nez v4, :cond_167

    .line 374
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->shouldEnqueueIfDisconnected(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Z

    move-result v5

    if-eqz v5, :cond_129

    .line 375
    const-string v5, "BunchClient"

    invoke-static {v5, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_117

    .line 376
    const-string v5, "BunchClient"

    const-string v6, "queueing"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_117
    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mQueuedCommands:Ljava/util/Collection;

    new-instance v6, Landroid/util/Pair;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_129
    :goto_129
    return-void

    .line 359
    :cond_12a
    :try_start_12a
    const-string v5, "BunchClient"

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_e6

    .line 360
    const-string v5, "BunchClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getRequestTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] not expecting response"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e6

    .line 364
    :catchall_164
    move-exception v5

    monitor-exit p0
    :try_end_166
    .catchall {:try_start_12a .. :try_end_166} :catchall_164

    throw v5

    .line 382
    :cond_167
    const-string v5, "BunchClient"

    invoke-static {v5, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_129

    .line 383
    const-string v5, "BunchClient"

    const-string v6, "sent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_129
.end method

.method private shouldSendQueuedCommand(Landroid/util/Pair;)Z
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 714
    .local p1, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;>;"
    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasChatMessageRequest()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 715
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 716
    .local v0, timeSince:J
    const-wide/16 v2, 0x4e20

    cmp-long v2, v0, v2

    if-lez v2, :cond_20

    .line 717
    const/4 v2, 0x0

    .line 720
    .end local v0           #timeSince:J
    :goto_1f
    return v2

    :cond_20
    const/4 v2, 0x1

    goto :goto_1f
.end method

.method private updateAcl(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)V
    .registers 9
    .parameter "response"

    .prologue
    const/4 v6, 0x3

    const v5, 0x7f080001

    .line 602
    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 603
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 604
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "BunchClient"

    invoke-static {v2, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 605
    const-string v2, "BunchClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAcl "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getAcl()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_34
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getAcl()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->getNumber()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_59

    .line 608
    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0803af

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 617
    :cond_55
    :goto_55
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 618
    return-void

    .line 610
    :cond_59
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getAcl()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->getNumber()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7b

    .line 611
    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0803b1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_55

    .line 613
    :cond_7b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getAcl()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->getNumber()I

    move-result v2

    if-ne v2, v6, :cond_55

    .line 614
    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0803b0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_55
.end method


# virtual methods
.method public checkResponseReceived(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V
    .registers 11
    .parameter "request"

    .prologue
    const/4 v8, 0x3

    .line 264
    const/4 v1, 0x0

    .line 265
    .local v1, newRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    monitor-enter p0

    .line 266
    :try_start_3
    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->getData(Ljava/lang/String;)Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;

    move-result-object v2

    .line 268
    .local v2, pendingRequest:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    if-eqz v2, :cond_75

    .line 269
    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->removeRequest(Ljava/lang/String;)V

    .line 271
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$TimedOutException;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/google/android/apps/plus/realtimechat/BunchClient$TimedOutException;-><init>(Lcom/google/android/apps/plus/realtimechat/BunchClient;Lcom/google/android/apps/plus/realtimechat/BunchClient$1;)V

    .line 272
    .local v0, exception:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-static {v5, v6, v7, v0}, Lcom/google/android/apps/plus/content/EsNetworkData;->insertData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/network/HttpTransactionMetrics;Ljava/lang/Exception;)V

    .line 275
    const-string v5, "BunchClient"

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 276
    const-string v5, "BunchClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retrying command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getRequestTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] expecting response"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_64
    iget v5, v2, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRetryCount:I

    add-int/lit8 v3, v5, 0x1

    .line 281
    .local v3, retryCount:I
    if-ge v3, v8, :cond_bb

    .line 282
    invoke-static {p1}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->retry(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v1

    .line 283
    iget v5, v2, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequestId:I

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v1, v5, v6}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;II)Z

    .line 293
    .end local v0           #exception:Ljava/lang/Exception;
    .end local v3           #retryCount:I
    :cond_75
    :goto_75
    monitor-exit p0
    :try_end_76
    .catchall {:try_start_3 .. :try_end_76} :catchall_ea

    .line 295
    const/4 v4, 0x0

    .line 296
    .local v4, success:Z
    if-eqz v1, :cond_fd

    .line 297
    iget-boolean v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mConnected:Z

    if-eqz v5, :cond_91

    .line 298
    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->createBatchCommandBuilderWithClientVersion()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendMessage([B)Z

    move-result v4

    .line 303
    :cond_91
    if-nez v4, :cond_ed

    .line 304
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->shouldEnqueueIfDisconnected(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 305
    const-string v5, "BunchClient"

    invoke-static {v5, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 306
    const-string v5, "BunchClient"

    const-string v6, "queueing"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_a8
    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mQueuedCommands:Ljava/util/Collection;

    new-instance v6, Landroid/util/Pair;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v6, v7, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_ba
    :goto_ba
    return-void

    .line 285
    .end local v4           #success:Z
    .restart local v0       #exception:Ljava/lang/Exception;
    .restart local v3       #retryCount:I
    :cond_bb
    const/4 v1, 0x0

    .line 286
    :try_start_bc
    const-string v5, "BunchClient"

    const/4 v6, 0x5

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 287
    const-string v5, "BunchClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bunch request timeout "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    invoke-virtual {v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " giving up"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 293
    .end local v0           #exception:Ljava/lang/Exception;
    .end local v2           #pendingRequest:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    .end local v3           #retryCount:I
    :catchall_ea
    move-exception v5

    monitor-exit p0
    :try_end_ec
    .catchall {:try_start_bc .. :try_end_ec} :catchall_ea

    throw v5

    .line 312
    .restart local v2       #pendingRequest:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    .restart local v4       #success:Z
    :cond_ed
    const-string v5, "BunchClient"

    invoke-static {v5, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 313
    const-string v5, "BunchClient"

    const-string v6, "sent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ba

    .line 317
    :cond_fd
    const-string v5, "BunchClient"

    invoke-static {v5, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 318
    const-string v5, "BunchClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "response received for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ba
.end method

.method public declared-synchronized connected()Z
    .registers 2

    .prologue
    .line 657
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mConnected:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect()V
    .registers 2

    .prologue
    .line 486
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mQueuedCommands:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 487
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->clear()V

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mListener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;

    .line 489
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1a

    .line 490
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 493
    :cond_1a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mConnected:Z

    .line 494
    invoke-super {p0}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->disconnect()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 495
    monitor-exit p0

    return-void

    .line 486
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasPendingCommands()Z
    .registers 12

    .prologue
    const/4 v6, 0x1

    .line 678
    monitor-enter p0

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/32 v9, 0x15f90

    sub-long v2, v7, v9

    .line 679
    .local v2, oldestValid:J
    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    invoke-virtual {v7, v2, v3}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->trimOutdatedRequestIds(J)Ljava/util/List;

    move-result-object v5

    .line 681
    .local v5, timedOutRequests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_96

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;

    .line 682
    .local v4, timedOut:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    if-eqz v4, :cond_15

    .line 683
    iget-object v7, v4, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    invoke-direct {p0, v7}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->retryOnTimeout(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 685
    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    iget-object v8, v4, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->addRequest(Ljava/lang/String;Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;)V
    :try_end_36
    .catchall {:try_start_2 .. :try_end_36} :catchall_37

    goto :goto_15

    .line 678
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #oldestValid:J
    .end local v4           #timedOut:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    .end local v5           #timedOutRequests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;>;"
    :catchall_37
    move-exception v6

    monitor-exit p0

    throw v6

    .line 688
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #oldestValid:J
    .restart local v4       #timedOut:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    .restart local v5       #timedOutRequests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;>;"
    :cond_3a
    :try_start_3a
    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    iget-object v8, v4, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->removeRequest(Ljava/lang/String;)V

    .line 690
    const-string v7, "BunchClient"

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_82

    .line 691
    const-string v7, "BunchClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "request "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    invoke-static {v9}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getRequestTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " type ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    invoke-virtual {v9}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] timed out"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_82
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/BunchClient$TimedOutException;

    const/4 v7, 0x0

    invoke-direct {v0, p0, v7}, Lcom/google/android/apps/plus/realtimechat/BunchClient$TimedOutException;-><init>(Lcom/google/android/apps/plus/realtimechat/BunchClient;Lcom/google/android/apps/plus/realtimechat/BunchClient$1;)V

    .line 696
    .local v0, exception:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v8

    iget-object v9, v4, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-static {v7, v8, v9, v0}, Lcom/google/android/apps/plus/content/EsNetworkData;->insertData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/network/HttpTransactionMetrics;Ljava/lang/Exception;)V

    goto :goto_15

    .line 701
    .end local v0           #exception:Ljava/lang/Exception;
    .end local v4           #timedOut:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    :cond_96
    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mQueuedCommands:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z
    :try_end_9b
    .catchall {:try_start_3a .. :try_end_9b} :catchall_37

    move-result v7

    if-nez v7, :cond_a0

    .line 710
    :cond_9e
    :goto_9e
    monitor-exit p0

    return v6

    .line 704
    :cond_a0
    :try_start_a0
    const-string v7, "BunchClient"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_bd

    .line 705
    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_bd

    .line 706
    const-string v7, "BunchClient"

    const-string v8, "hasPendingCommands"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->dump()V

    .line 710
    :cond_bd
    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->isEmpty()Z
    :try_end_c2
    .catchall {:try_start_a0 .. :try_end_c2} :catchall_37

    move-result v7

    if-eqz v7, :cond_9e

    const/4 v6, 0x0

    goto :goto_9e
.end method

.method protected declared-synchronized onConnected()V
    .registers 5

    .prologue
    .line 662
    monitor-enter p0

    :try_start_1
    const-string v1, "BunchClient"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 663
    const-string v1, "BunchClient"

    const-string v2, "onConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_11
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mConnected:Z

    .line 667
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mListener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;

    .line 668
    .local v0, listener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;
    if-eqz v0, :cond_1b

    .line 669
    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;->onConnected(Lcom/google/android/apps/plus/realtimechat/BunchClient;)V

    .line 671
    :cond_1b
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BunchHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 672
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 673
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    .line 674
    monitor-exit p0

    return-void

    .line 662
    .end local v0           #listener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;
    :catchall_3a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized onDisconnected(I)V
    .registers 10
    .parameter "reason"

    .prologue
    .line 622
    monitor-enter p0

    :try_start_1
    const-string v5, "BunchClient"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 623
    const-string v5, "BunchClient"

    const-string v6, "Disconnected from server"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_11
    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->getRequestIds()Ljava/util/List;

    move-result-object v4

    .line 627
    .local v4, requests:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 628
    .local v3, requestId:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    invoke-virtual {v5, v3}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->getData(Ljava/lang/String;)Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;

    move-result-object v2

    .line 629
    .local v2, request:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    if-eqz v2, :cond_1b

    .line 630
    const-string v5, "BunchClient"

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 631
    const-string v5, "BunchClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "request "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    invoke-static {v7}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getRequestTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] failed due to disconnect"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_66
    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    invoke-virtual {v5, v3}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->removeRequest(Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_1 .. :try_end_6b} :catchall_6c

    goto :goto_1b

    .line 622
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #request:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    .end local v3           #requestId:Ljava/lang/String;
    .end local v4           #requests:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_6c
    move-exception v5

    monitor-exit p0

    throw v5

    .line 639
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v4       #requests:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_6f
    :try_start_6f
    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v5, :cond_7b

    .line 640
    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->quit()Z

    .line 641
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 643
    :cond_7b
    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v5, :cond_90

    .line 644
    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 645
    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 646
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mBackgroundHandler:Landroid/os/Handler;

    .line 649
    :cond_90
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mConnected:Z

    .line 650
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mListener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;

    .line 651
    .local v1, listener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;
    if-eqz v1, :cond_9a

    .line 652
    invoke-interface {v1, p0, p1}, Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;->onDisconnected(Lcom/google/android/apps/plus/realtimechat/BunchClient;I)V
    :try_end_9a
    .catchall {:try_start_6f .. :try_end_9a} :catchall_6c

    .line 654
    :cond_9a
    monitor-exit p0

    return-void
.end method

.method protected onMessageReceived(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)V
    .registers 22
    .parameter "batchCommand"

    .prologue
    .line 518
    new-instance v10, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;

    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;-><init>(Ljava/lang/Long;)V

    .line 521
    .local v10, operationState:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 523
    .local v2, bunchResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;>;"
    const/16 v16, 0x0

    .line 528
    .local v16, userCreated:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->getStateUpdateList()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    .line 529
    .local v15, update:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->processUpdate(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto :goto_1a

    .line 531
    .end local v15           #update:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->getResponseList()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    .line 532
    .local v14, response:Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;
    invoke-virtual {v14}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasUserCreationResponse()Z

    move-result v17

    if-eqz v17, :cond_48

    .line 533
    const/16 v16, 0x1

    .line 535
    :cond_48
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10, v2}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->processResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;Ljava/util/List;)V

    goto :goto_34

    .line 538
    .end local v14           #response:Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;
    :cond_4e
    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->shouldTriggerNotifications()Z

    move-result v17

    if-eqz v17, :cond_61

    .line 539
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->update(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 542
    :cond_61
    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getClientVersionChanged()Z

    move-result v17

    if-eqz v17, :cond_6a

    .line 543
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->updateClientVersion()V

    .line 546
    :cond_6a
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 549
    .local v4, filteredRequests:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;>;"
    monitor-enter p0

    .line 552
    :try_start_70
    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getRequests()Ljava/util/List;

    move-result-object v13

    .line 553
    .local v13, requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v5           #i$:Ljava/util/Iterator;
    :cond_78
    :goto_78
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    .line 554
    .local v12, request:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    invoke-virtual {v12}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasConversationListRequest()Z

    move-result v17

    if-eqz v17, :cond_cf

    .line 556
    const/4 v7, 0x0

    .line 557
    .local v7, isExpectingConversationList:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_95
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;

    .line 558
    .local v11, pendingRequest:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    if-eqz v11, :cond_95

    iget-object v0, v11, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-object/from16 v17, v0

    if-eqz v17, :cond_95

    iget-object v0, v11, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasConversationListRequest()Z

    move-result v17

    if-eqz v17, :cond_95

    .line 560
    iget-object v0, v11, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getConversationListRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v3

    .line 562
    .local v3, convListRequest:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    invoke-virtual {v12}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getConversationListRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v9

    .line 564
    .local v9, newRequest:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    invoke-static {v3, v9}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->areConversationListRequestsEqual(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Z

    move-result v17

    if-eqz v17, :cond_95

    .line 566
    const/4 v7, 0x1

    .line 571
    .end local v3           #convListRequest:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    .end local v9           #newRequest:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    .end local v11           #pendingRequest:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    :cond_c6
    if-nez v7, :cond_78

    .line 572
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 585
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #isExpectingConversationList:Z
    .end local v12           #request:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .end local v13           #requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;>;"
    :catchall_cc
    move-exception v17

    monitor-exit p0
    :try_end_ce
    .catchall {:try_start_70 .. :try_end_ce} :catchall_cc

    throw v17

    .line 575
    .restart local v12       #request:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .restart local v13       #requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;>;"
    :cond_cf
    :try_start_cf
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 580
    .end local v12           #request:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    :cond_d3
    if-eqz v16, :cond_d8

    .line 581
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendQueuedCommands()V

    .line 584
    :cond_d8
    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendCommands(Ljava/util/Collection;I)Z

    .line 585
    monitor-exit p0
    :try_end_e2
    .catchall {:try_start_cf .. :try_end_e2} :catchall_cc

    .line 587
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mListener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;

    .line 588
    .local v8, listener:Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;
    if-eqz v8, :cond_ed

    .line 589
    move-object/from16 v0, p0

    invoke-interface {v8, v0, v2}, Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;->onResultsReceived(Lcom/google/android/apps/plus/realtimechat/BunchClient;Ljava/util/List;)V

    .line 591
    :cond_ed
    return-void
.end method

.method protected onMessageReceived([B)V
    .registers 6
    .parameter "message"

    .prologue
    .line 499
    monitor-enter p0

    .line 500
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mConnected:Z

    if-nez v2, :cond_17

    .line 501
    const-string v2, "BunchClient"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 502
    const-string v2, "BunchClient"

    const-string v3, "Message received after disconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_15
    monitor-exit p0

    .line 515
    :cond_16
    :goto_16
    return-void

    .line 506
    :cond_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_32

    .line 508
    :try_start_18
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->parseFrom([B)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    .line 509
    .local v0, batchCommand:Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->onMessageReceived(Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;)V
    :try_end_1f
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_18 .. :try_end_1f} :catch_20

    goto :goto_16

    .line 510
    .end local v0           #batchCommand:Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    :catch_20
    move-exception v1

    .line 511
    .local v1, exception:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v2, "BunchClient"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 512
    const-string v2, "BunchClient"

    const-string v3, "Invalid BatchCommand message received"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 506
    .end local v1           #exception:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_32
    move-exception v2

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v2
.end method

.method public processBunchServerUpdate(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 5
    .parameter "update"
    .parameter "operationState"

    .prologue
    .line 1125
    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/apps/plus/content/EsConversationsData;->processBunchServerUpdate(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 1127
    return-void
.end method

.method public sendCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;I)Z
    .registers 5
    .parameter "command"
    .parameter "requestId"

    .prologue
    .line 397
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 398
    .local v0, commands:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendCommands(Ljava/util/Collection;II)Z

    move-result v1

    return v1
.end method

.method public sendCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;II)Z
    .registers 6
    .parameter "command"
    .parameter "requestId"
    .parameter "retryCount"

    .prologue
    .line 404
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 405
    .local v0, commands:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendCommands(Ljava/util/Collection;II)Z

    move-result v1

    return v1
.end method

.method public sendCommands(Ljava/util/Collection;I)Z
    .registers 4
    .parameter
    .parameter "requestId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 411
    .local p1, commands:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendCommands(Ljava/util/Collection;II)Z

    move-result v0

    return v0
.end method

.method public sendCommands(Ljava/util/Collection;II)Z
    .registers 19
    .parameter
    .parameter "requestId"
    .parameter "retryCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, commands:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;>;"
    const/4 v12, 0x0

    .line 417
    .local v12, success:Z
    const-string v2, "BunchClient"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 418
    const-string v2, "BunchClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendCommands "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_24
    monitor-enter p0

    .line 421
    :try_start_25
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_29
    :goto_29
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ee

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    .line 422
    .local v4, command:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->expectResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 423
    const-string v2, "BunchClient"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 424
    const-string v2, "BunchClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending command "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getRequestTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " ["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "] expecting response"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 428
    .local v5, timestamp:J
    new-instance v1, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;

    move-object v2, p0

    move/from16 v3, p2

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;-><init>(Lcom/google/android/apps/plus/realtimechat/BunchClient;ILcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;JI)V

    .line 430
    .local v1, pendingRequest:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    new-instance v2, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-direct {v2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;-><init>()V

    iput-object v2, v1, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    .line 431
    iget-object v2, v1, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RealTimeChat:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getRequestTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onBeginTransaction(Ljava/lang/String;)V

    .line 433
    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->addRequest(Ljava/lang/String;Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;)V

    goto/16 :goto_29

    .line 442
    .end local v1           #pendingRequest:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    .end local v4           #command:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .end local v5           #timestamp:J
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_b0
    move-exception v2

    monitor-exit p0
    :try_end_b2
    .catchall {:try_start_25 .. :try_end_b2} :catchall_b0

    throw v2

    .line 436
    .restart local v4       #command:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_b3
    :try_start_b3
    const-string v2, "BunchClient"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 437
    const-string v2, "BunchClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending command "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getRequestTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " ["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "] not expecting response"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    .line 442
    .end local v4           #command:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    :cond_ee
    monitor-exit p0
    :try_end_ef
    .catchall {:try_start_b3 .. :try_end_ef} :catchall_b0

    .line 444
    iget-boolean v2, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mConnected:Z

    if-eqz v2, :cond_167

    .line 445
    const/4 v12, 0x1

    .line 446
    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->createBatchCommandBuilderWithClientVersion()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->addAllRequest(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendMessage([B)Z

    move-result v12

    .line 451
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_10e
    :goto_10e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_167

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    .line 452
    .restart local v4       #command:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->retryOnTimeout(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Z

    move-result v2

    if-eqz v2, :cond_10e

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v2, :cond_10e

    .line 453
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getRetryTimeout(I)J

    move-result-wide v10

    .line 454
    .local v10, retryTimeout:J
    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 456
    .local v9, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 458
    const-string v2, "BunchClient"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_10e

    .line 459
    const-string v2, "BunchClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bunch request timeout "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " checking in "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10e

    .line 466
    .end local v4           #command:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .end local v9           #msg:Landroid/os/Message;
    .end local v10           #retryTimeout:J
    :cond_167
    if-nez v12, :cond_1a2

    .line 467
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_16d
    :goto_16d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    .line 468
    .restart local v4       #command:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->shouldEnqueueIfDisconnected(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Z

    move-result v2

    if-eqz v2, :cond_16d

    .line 469
    const-string v2, "BunchClient"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_18f

    .line 470
    const-string v2, "BunchClient"

    const-string v3, "queueing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_18f
    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mQueuedCommands:Ljava/util/Collection;

    new-instance v3, Landroid/util/Pair;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v3, v7, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_16d

    .line 477
    .end local v4           #command:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    :cond_1a2
    const-string v2, "BunchClient"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1b2

    .line 478
    const-string v2, "BunchClient"

    const-string v3, "sent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_1b2
    return v12
.end method

.method public declared-synchronized sendKeepAlive()V
    .registers 5

    .prologue
    .line 763
    monitor-enter p0

    :try_start_1
    const-string v0, "BunchClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 764
    const-string v0, "BunchClient"

    const-string v1, "Sending ping to bunch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->ping(J)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;I)Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 767
    monitor-exit p0

    return-void

    .line 763
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendQueuedCommands()V
    .registers 9

    .prologue
    .line 724
    monitor-enter p0

    :try_start_1
    const-string v4, "BunchClient"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 725
    const-string v4, "BunchClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mQueuedCommands:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pending commands"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_2e
    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mQueuedCommands:Ljava/util/Collection;

    monitor-enter v5
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_78

    .line 728
    :try_start_31
    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->createBatchCommandBuilderWithClientVersion()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v0

    .line 730
    .local v0, batchCommand:Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mQueuedCommands:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3b
    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 731
    .local v2, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;>;"
    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->shouldSendQueuedCommand(Landroid/util/Pair;)Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 732
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    invoke-virtual {v0, v4}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    .line 733
    iget-object v6, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->getData(Ljava/lang/String;)Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;

    move-result-object v3

    .line 735
    .local v3, pendingRequest:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    if-nez v3, :cond_7b

    .line 736
    const-string v4, "BunchClient"

    const/4 v6, 0x5

    invoke-static {v4, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 737
    const-string v4, "BunchClient"

    const-string v6, "null pendingRequest in sendQueuedCommand"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 753
    .end local v0           #batchCommand:Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;>;"
    .end local v3           #pendingRequest:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    :catchall_75
    move-exception v4

    monitor-exit v5
    :try_end_77
    .catchall {:try_start_31 .. :try_end_77} :catchall_75

    :try_start_77
    throw v4
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_78

    .line 724
    :catchall_78
    move-exception v4

    monitor-exit p0

    throw v4

    .line 740
    .restart local v0       #batchCommand:Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;>;"
    .restart local v3       #pendingRequest:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    :cond_7b
    :try_start_7b
    new-instance v4, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-direct {v4}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;-><init>()V

    iput-object v4, v3, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    .line 741
    iget-object v6, v3, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;->mMetrics:Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RealTimeChat:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    invoke-static {v4}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getRequestTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->onBeginTransaction(Ljava/lang/String;)V

    goto :goto_3b

    .line 745
    .end local v3           #pendingRequest:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequest;
    :cond_a3
    const-string v4, "BunchClient"

    const/4 v6, 0x3

    invoke-static {v4, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 746
    const-string v4, "BunchClient"

    const-string v6, "dropping outdated command"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_b3
    iget-object v6, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mPendingRequestList:Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/google/android/apps/plus/realtimechat/BunchClient$PendingRequestList;->removeRequest(Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 751
    .end local v2           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;>;"
    :cond_c2
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendMessage([B)Z

    .line 752
    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mQueuedCommands:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->clear()V

    .line 753
    monitor-exit v5
    :try_end_d3
    .catchall {:try_start_7b .. :try_end_d3} :catchall_75

    .line 754
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized shouldEnqueueIfDisconnected(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Z
    .registers 14
    .parameter "command"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 1175
    monitor-enter p0

    if-nez p1, :cond_8

    .line 1231
    :cond_6
    :goto_6
    monitor-exit p0

    return v8

    .line 1179
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasInviteRequest()Z

    move-result v11

    if-nez v11, :cond_38

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasEventStreamRequest()Z

    move-result v11

    if-nez v11, :cond_38

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasConversationRenameRequest()Z

    move-result v11

    if-nez v11, :cond_38

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasLeaveConversationRequest()Z

    move-result v11

    if-nez v11, :cond_38

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasReceiptRequest()Z

    move-result v11

    if-nez v11, :cond_38

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasReplyToInviteRequest()Z

    move-result v11

    if-nez v11, :cond_38

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasSuggestionsRequest()Z

    move-result v11

    if-nez v11, :cond_38

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasSetAclsRequest()Z

    move-result v11

    if-eqz v11, :cond_3a

    :cond_38
    move v8, v9

    .line 1187
    goto :goto_6

    .line 1188
    :cond_3a
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasChatMessageRequest()Z

    move-result v11

    if-eqz v11, :cond_8c

    .line 1191
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getChatMessageRequest()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    .line 1192
    .local v0, chatMessage:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->hasMessageClientId()Z

    move-result v11

    if-eqz v11, :cond_85

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getMessageClientId()Ljava/lang/String;

    move-result-object v3

    .line 1194
    .local v3, messageClientId:Ljava/lang/String;
    :goto_4e
    iget-object v11, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mQueuedCommands:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_89

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 1195
    .local v4, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;>;"
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    .line 1196
    .local v5, queued:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    invoke-virtual {v5}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasChatMessageRequest()Z

    move-result v11

    if-eqz v11, :cond_54

    .line 1197
    invoke-virtual {v5}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getChatMessageRequest()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->hasMessageClientId()Z

    move-result v11

    if-eqz v11, :cond_87

    invoke-virtual {v5}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getChatMessageRequest()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getMessageClientId()Ljava/lang/String;

    move-result-object v6

    .line 1200
    .local v6, queuedMessageClientId:Ljava/lang/String;
    :goto_7c
    if-eqz v6, :cond_54

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_54

    goto :goto_6

    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #messageClientId:Ljava/lang/String;
    .end local v4           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;>;"
    .end local v5           #queued:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .end local v6           #queuedMessageClientId:Ljava/lang/String;
    :cond_85
    move-object v3, v10

    .line 1192
    goto :goto_4e

    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #messageClientId:Ljava/lang/String;
    .restart local v4       #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;>;"
    .restart local v5       #queued:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    :cond_87
    move-object v6, v10

    .line 1197
    goto :goto_7c

    .end local v4           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;>;"
    .end local v5           #queued:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    :cond_89
    move v8, v9

    .line 1207
    goto/16 :goto_6

    .line 1208
    .end local v0           #chatMessage:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #messageClientId:Ljava/lang/String;
    :cond_8c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasConversationRequest()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1211
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    .line 1212
    .local v0, chatMessage:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->hasConversationClientId()Z

    move-result v11

    if-eqz v11, :cond_d4

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getConversationClientId()Ljava/lang/String;

    move-result-object v1

    .line 1214
    .local v1, conversationClientId:Ljava/lang/String;
    :goto_a0
    iget-object v11, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mQueuedCommands:Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_a6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 1215
    .restart local v4       #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;>;"
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    .line 1216
    .restart local v5       #queued:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    invoke-virtual {v5}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasChatMessageRequest()Z

    move-result v11

    if-eqz v11, :cond_a6

    .line 1217
    invoke-virtual {v5}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v7

    .line 1219
    .local v7, queuedRequest:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    invoke-virtual {v7}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->hasConversationClientId()Z

    move-result v11

    if-eqz v11, :cond_d6

    invoke-virtual {v7}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getConversationClientId()Ljava/lang/String;

    move-result-object v6

    .line 1222
    .restart local v6       #queuedMessageClientId:Ljava/lang/String;
    :goto_ca
    if-eqz v6, :cond_a6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_cf
    .catchall {:try_start_8 .. :try_end_cf} :catchall_db

    move-result v11

    if-eqz v11, :cond_a6

    goto/16 :goto_6

    .end local v1           #conversationClientId:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;>;"
    .end local v5           #queued:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .end local v6           #queuedMessageClientId:Ljava/lang/String;
    .end local v7           #queuedRequest:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    :cond_d4
    move-object v1, v10

    .line 1212
    goto :goto_a0

    .restart local v1       #conversationClientId:Ljava/lang/String;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;>;"
    .restart local v5       #queued:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .restart local v7       #queuedRequest:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    :cond_d6
    move-object v6, v10

    .line 1219
    goto :goto_ca

    .end local v4           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;>;"
    .end local v5           #queued:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .end local v7           #queuedRequest:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    :cond_d8
    move v8, v9

    .line 1229
    goto/16 :goto_6

    .line 1175
    .end local v0           #chatMessage:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    .end local v1           #conversationClientId:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_db
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized updateClientVersion()V
    .registers 8

    .prologue
    .line 773
    monitor-enter p0

    const/4 v3, 0x0

    .line 775
    .local v3, versionCode:I
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v3, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_6f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_19} :catch_72

    .line 779
    :goto_19
    const/4 v1, 0x0

    .line 782
    .local v1, dbVersionCode:I
    :try_start_1a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryDatastoreVersion(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, dbVersion:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_29} :catch_5c

    move-result v1

    .line 791
    .end local v0           #dbVersion:Ljava/lang/String;
    :goto_2a
    :try_start_2a
    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->newBuilder()Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v4

    sget-object v5, Lcom/google/wireless/webapps/Version$ClientVersion$App;->GOOGLE_PLUS:Lcom/google/wireless/webapps/Version$ClientVersion$App;

    invoke-virtual {v4, v5}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->setApp(Lcom/google/wireless/webapps/Version$ClientVersion$App;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v4

    sget-object v5, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;->PUBLIC:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    invoke-virtual {v4, v5}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->setBuildType(Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v4

    sget-object v5, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;->ANDROID:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    invoke-virtual {v4, v5}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->setPlatformType(Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->setVersion(I)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->setDataVersion(I)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->setDeviceOs(Ljava/lang/String;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->setDeviceHardware(Ljava/lang/String;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->build()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/realtimechat/BunchClient;->mClientVersion:Lcom/google/wireless/webapps/Version$ClientVersion;
    :try_end_5a
    .catchall {:try_start_2a .. :try_end_5a} :catchall_6f

    .line 800
    monitor-exit p0

    return-void

    .line 785
    :catch_5c
    move-exception v2

    .line 786
    .local v2, ex:Ljava/lang/Exception;
    :try_start_5d
    const-string v4, "BunchClient"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 787
    const-string v4, "BunchClient"

    const-string v5, "Failed to parse database version"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_5d .. :try_end_6d} :catchall_6f

    .line 789
    :cond_6d
    const/4 v1, 0x0

    goto :goto_2a

    .line 773
    .end local v1           #dbVersionCode:I
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_6f
    move-exception v4

    monitor-exit p0

    throw v4

    .line 777
    :catch_72
    move-exception v4

    goto :goto_19
.end method
