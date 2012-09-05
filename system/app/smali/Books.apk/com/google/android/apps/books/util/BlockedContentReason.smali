.class public final enum Lcom/google/android/apps/books/util/BlockedContentReason;
.super Ljava/lang/Enum;
.source "BlockedContentReason.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/util/BlockedContentReason$1;,
        Lcom/google/android/apps/books/util/BlockedContentReason$OfflineLimitException;,
        Lcom/google/android/apps/books/util/BlockedContentReason$BlockedContentException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/books/util/BlockedContentReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/books/util/BlockedContentReason;

.field public static final enum AccountBlacklisted:Lcom/google/android/apps/books/util/BlockedContentReason;

.field public static final enum AccountSharing:Lcom/google/android/apps/books/util/BlockedContentReason;

.field public static final enum NotBlocked:Lcom/google/android/apps/books/util/BlockedContentReason;

.field public static final enum OfflineLimit:Lcom/google/android/apps/books/util/BlockedContentReason;

.field public static final enum ServerBug:Lcom/google/android/apps/books/util/BlockedContentReason;

.field public static final enum TemporaryError:Lcom/google/android/apps/books/util/BlockedContentReason;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/google/android/apps/books/util/BlockedContentReason;

    const-string v1, "NotBlocked"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/books/util/BlockedContentReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->NotBlocked:Lcom/google/android/apps/books/util/BlockedContentReason;

    .line 20
    new-instance v0, Lcom/google/android/apps/books/util/BlockedContentReason;

    const-string v1, "TemporaryError"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/books/util/BlockedContentReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->TemporaryError:Lcom/google/android/apps/books/util/BlockedContentReason;

    .line 21
    new-instance v0, Lcom/google/android/apps/books/util/BlockedContentReason;

    const-string v1, "AccountSharing"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/books/util/BlockedContentReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->AccountSharing:Lcom/google/android/apps/books/util/BlockedContentReason;

    .line 22
    new-instance v0, Lcom/google/android/apps/books/util/BlockedContentReason;

    const-string v1, "OfflineLimit"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/books/util/BlockedContentReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->OfflineLimit:Lcom/google/android/apps/books/util/BlockedContentReason;

    .line 23
    new-instance v0, Lcom/google/android/apps/books/util/BlockedContentReason;

    const-string v1, "AccountBlacklisted"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/books/util/BlockedContentReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->AccountBlacklisted:Lcom/google/android/apps/books/util/BlockedContentReason;

    .line 24
    new-instance v0, Lcom/google/android/apps/books/util/BlockedContentReason;

    const-string v1, "ServerBug"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/util/BlockedContentReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->ServerBug:Lcom/google/android/apps/books/util/BlockedContentReason;

    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/apps/books/util/BlockedContentReason;

    sget-object v1, Lcom/google/android/apps/books/util/BlockedContentReason;->NotBlocked:Lcom/google/android/apps/books/util/BlockedContentReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/books/util/BlockedContentReason;->TemporaryError:Lcom/google/android/apps/books/util/BlockedContentReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/books/util/BlockedContentReason;->AccountSharing:Lcom/google/android/apps/books/util/BlockedContentReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/books/util/BlockedContentReason;->OfflineLimit:Lcom/google/android/apps/books/util/BlockedContentReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/books/util/BlockedContentReason;->AccountBlacklisted:Lcom/google/android/apps/books/util/BlockedContentReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/books/util/BlockedContentReason;->ServerBug:Lcom/google/android/apps/books/util/BlockedContentReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->$VALUES:[Lcom/google/android/apps/books/util/BlockedContentReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    return-void
.end method

.method public static assertNotBlocked(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)V
    .registers 8
    .parameter "pages"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/books/util/BlockedContentReason$BlockedContentException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getReasonContentBlocked()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    move-result-object v3

    .line 59
    .local v3, reasonBlocked:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;
    if-nez v3, :cond_7

    .line 68
    :pswitch_6
    return-void

    .line 61
    :cond_7
    invoke-virtual {v3}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->getReason()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->getNumber()I

    move-result v1

    .line 62
    .local v1, r:I
    invoke-static {v1}, Lcom/google/android/apps/books/util/BlockedContentReason;->getBlockedContentReason(I)Lcom/google/android/apps/books/util/BlockedContentReason;

    move-result-object v2

    .line 63
    .local v2, reason:Lcom/google/android/apps/books/util/BlockedContentReason;
    const-string v4, "BlockedPageReason"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 64
    const-string v4, "BlockedPageReason"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reason blocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/apps/books/util/BlockedContentReason;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_38
    sget-object v4, Lcom/google/android/apps/books/util/BlockedContentReason$1;->$SwitchMap$com$google$android$apps$books$util$BlockedContentReason:[I

    invoke-virtual {v2}, Lcom/google/android/apps/books/util/BlockedContentReason;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_82

    .line 73
    new-instance v4, Lcom/google/android/apps/books/util/BlockedContentReason$BlockedContentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Page blocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/apps/books/util/BlockedContentReason;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/apps/books/util/BlockedContentReason$BlockedContentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 70
    :pswitch_60
    invoke-virtual {v3}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->getNumAllowedOfflineDevices()I

    move-result v0

    .line 71
    .local v0, numDevicesLimit:I
    new-instance v4, Lcom/google/android/apps/books/util/BlockedContentReason$OfflineLimitException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Page blocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/apps/books/util/BlockedContentReason;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/google/android/apps/books/util/BlockedContentReason$OfflineLimitException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 66
    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_6
        :pswitch_60
    .end packed-switch
.end method

.method public static assertNotBlocked(Lorg/json/JSONObject;)V
    .registers 8
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/books/util/BlockedContentReason$BlockedContentException;
        }
    .end annotation

    .prologue
    .line 33
    const-string v4, "reason_content_blocked"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 34
    .local v3, reasonBlocked:Lorg/json/JSONObject;
    if-nez v3, :cond_9

    .line 43
    :pswitch_8
    return-void

    .line 36
    :cond_9
    const-string v4, "reason"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 37
    .local v1, r:I
    invoke-static {v1}, Lcom/google/android/apps/books/util/BlockedContentReason;->getBlockedContentReason(I)Lcom/google/android/apps/books/util/BlockedContentReason;

    move-result-object v2

    .line 38
    .local v2, reason:Lcom/google/android/apps/books/util/BlockedContentReason;
    const-string v4, "BlockedPageReason"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 39
    const-string v4, "BlockedPageReason"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reason blocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/apps/books/util/BlockedContentReason;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_38
    sget-object v4, Lcom/google/android/apps/books/util/BlockedContentReason$1;->$SwitchMap$com$google$android$apps$books$util$BlockedContentReason:[I

    invoke-virtual {v2}, Lcom/google/android/apps/books/util/BlockedContentReason;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_84

    .line 48
    new-instance v4, Lcom/google/android/apps/books/util/BlockedContentReason$BlockedContentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Page blocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/apps/books/util/BlockedContentReason;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/apps/books/util/BlockedContentReason$BlockedContentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 45
    :pswitch_60
    const-string v4, "num_allowed_offline_devices"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 46
    .local v0, numDevicesLimit:I
    new-instance v4, Lcom/google/android/apps/books/util/BlockedContentReason$OfflineLimitException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Page blocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/apps/books/util/BlockedContentReason;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/google/android/apps/books/util/BlockedContentReason$OfflineLimitException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 41
    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_8
        :pswitch_60
    .end packed-switch
.end method

.method public static getBlockedContentReason(I)Lcom/google/android/apps/books/util/BlockedContentReason;
    .registers 4
    .parameter "reason"

    .prologue
    .line 83
    packed-switch p0, :pswitch_data_3a

    .line 97
    const-string v0, "BlockedPageReason"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 98
    const-string v0, "BlockedPageReason"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_24
    sget-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->NotBlocked:Lcom/google/android/apps/books/util/BlockedContentReason;

    :goto_26
    return-object v0

    .line 85
    :pswitch_27
    sget-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->NotBlocked:Lcom/google/android/apps/books/util/BlockedContentReason;

    goto :goto_26

    .line 87
    :pswitch_2a
    sget-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->TemporaryError:Lcom/google/android/apps/books/util/BlockedContentReason;

    goto :goto_26

    .line 89
    :pswitch_2d
    sget-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->AccountSharing:Lcom/google/android/apps/books/util/BlockedContentReason;

    goto :goto_26

    .line 91
    :pswitch_30
    sget-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->OfflineLimit:Lcom/google/android/apps/books/util/BlockedContentReason;

    goto :goto_26

    .line 93
    :pswitch_33
    sget-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->AccountBlacklisted:Lcom/google/android/apps/books/util/BlockedContentReason;

    goto :goto_26

    .line 95
    :pswitch_36
    sget-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->ServerBug:Lcom/google/android/apps/books/util/BlockedContentReason;

    goto :goto_26

    .line 83
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/books/util/BlockedContentReason;
    .registers 2
    .parameter

    .prologue
    .line 18
    const-class v0, Lcom/google/android/apps/books/util/BlockedContentReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/BlockedContentReason;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/books/util/BlockedContentReason;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/android/apps/books/util/BlockedContentReason;->$VALUES:[Lcom/google/android/apps/books/util/BlockedContentReason;

    invoke-virtual {v0}, [Lcom/google/android/apps/books/util/BlockedContentReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/books/util/BlockedContentReason;

    return-object v0
.end method
