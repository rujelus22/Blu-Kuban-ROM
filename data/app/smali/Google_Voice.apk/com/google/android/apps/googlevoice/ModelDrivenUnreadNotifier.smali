.class public Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;
.super Ljava/lang/Object;
.source "ModelDrivenUnreadNotifier.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/UnreadNotifier;
.implements Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;


# instance fields
.field private actualInboxSnapshot:Lcom/google/android/apps/googlevoice/model/LabelSnapshot;

.field private final checkinLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

.field private final notifiedMessageIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final notifier:Lcom/google/android/apps/googlevoice/Notifier;

.field private userAwareInboxSnapshot:Lcom/google/android/apps/googlevoice/model/LabelSnapshot;

.field private final voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/Notifier;Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;)V
    .registers 6
    .parameter "notifier"
    .parameter "voiceModel"
    .parameter "checkinLog"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->notifiedMessageIds:Ljava/util/Set;

    .line 77
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->notifier:Lcom/google/android/apps/googlevoice/Notifier;

    .line 78
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    .line 79
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->checkinLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    .line 80
    invoke-interface {p2, p0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->addListener(Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;)Z

    .line 81
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->takeInboxSnapshot()Lcom/google/android/apps/googlevoice/model/LabelSnapshot;

    move-result-object v0

    .line 82
    .local v0, inboxSnapshot:Lcom/google/android/apps/googlevoice/model/LabelSnapshot;
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->userAwareInboxSnapshot:Lcom/google/android/apps/googlevoice/model/LabelSnapshot;

    .line 83
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->actualInboxSnapshot:Lcom/google/android/apps/googlevoice/model/LabelSnapshot;

    .line 84
    return-void
.end method

.method private logCheckinMessage(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 275
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_7

    .line 276
    invoke-static {p1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 278
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->checkinLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    if-eqz v0, :cond_10

    .line 279
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->checkinLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;->addEntry(Ljava/lang/String;)V

    .line 281
    :cond_10
    return-void
.end method

.method private onSnapshotsUpdated()V
    .registers 14

    .prologue
    .line 191
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MDUM: onSnapshotsUpdated()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->getStackTrace()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->logCheckinMessage(Ljava/lang/String;)V

    .line 192
    const-string v6, "MDUN: actualSnapshotTimestamp: %d,userAwareSnapshotTimestamp: %d, diff: %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->actualInboxSnapshot:Lcom/google/android/apps/googlevoice/model/LabelSnapshot;

    invoke-virtual {v9}, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;->getTimestamp()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->userAwareInboxSnapshot:Lcom/google/android/apps/googlevoice/model/LabelSnapshot;

    invoke-virtual {v9}, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;->getTimestamp()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->actualInboxSnapshot:Lcom/google/android/apps/googlevoice/model/LabelSnapshot;

    invoke-virtual {v9}, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;->getTimestamp()J

    move-result-wide v9

    iget-object v11, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->userAwareInboxSnapshot:Lcom/google/android/apps/googlevoice/model/LabelSnapshot;

    invoke-virtual {v11}, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;->getTimestamp()J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->logCheckinMessage(Ljava/lang/String;)V

    .line 197
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->actualInboxSnapshot:Lcom/google/android/apps/googlevoice/model/LabelSnapshot;

    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;->getTimestamp()J

    move-result-wide v6

    iget-object v8, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->userAwareInboxSnapshot:Lcom/google/android/apps/googlevoice/model/LabelSnapshot;

    invoke-virtual {v8}, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;->getTimestamp()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_a8

    .line 198
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->actualInboxSnapshot:Lcom/google/android/apps/googlevoice/model/LabelSnapshot;

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->userAwareInboxSnapshot:Lcom/google/android/apps/googlevoice/model/LabelSnapshot;

    invoke-virtual {v6, v7}, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;->listNewUnreadCalls(Lcom/google/android/apps/googlevoice/model/LabelSnapshot;)[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->removeOutgoingCalls([Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;)[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    move-result-object v3

    .line 200
    .local v3, newUnreadCalls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    array-length v6, v3

    if-lez v6, :cond_9d

    .line 201
    invoke-direct {p0, v3}, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->removeNotifiedCalls([Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;)[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    move-result-object v4

    .line 202
    .local v4, newlyArrivedCalls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    invoke-direct {p0, v4}, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->rememberCallsNotified([Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;)V

    .line 203
    const-string v6, "MDUN: Notification request sent for display."

    invoke-direct {p0, v6}, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->logCheckinMessage(Ljava/lang/String;)V

    .line 204
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->notifier:Lcom/google/android/apps/googlevoice/Notifier;

    invoke-interface {v6, v3, v4}, Lcom/google/android/apps/googlevoice/Notifier;->notifyUnread([Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;)V

    .line 207
    move-object v0, v4

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_87
    if-ge v1, v2, :cond_a7

    aget-object v5, v0, v1

    .line 208
    .local v5, snapshot:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    iget-object v6, v5, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->type:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget-object v7, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SMS_IN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    if-ne v6, v7, :cond_9a

    .line 209
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->notifier:Lcom/google/android/apps/googlevoice/Notifier;

    iget-object v7, v5, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->phoneNumber:Ljava/lang/String;

    iget-object v8, v5, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->text:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Lcom/google/android/apps/googlevoice/Notifier;->sendBroadcastReceivedSms(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_9a
    add-int/lit8 v1, v1, 0x1

    goto :goto_87

    .line 214
    .end local v0           #arr$:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #newlyArrivedCalls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    .end local v5           #snapshot:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    :cond_9d
    const-string v6, "MDUN: Notification ignored. No new unread calls detected."

    invoke-direct {p0, v6}, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->logCheckinMessage(Ljava/lang/String;)V

    .line 220
    .end local v3           #newUnreadCalls:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    :goto_a2
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->notifier:Lcom/google/android/apps/googlevoice/Notifier;

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/Notifier;->cancelUnreadNotification()V

    .line 221
    :cond_a7
    return-void

    .line 217
    :cond_a8
    const-string v6, "MDUN: Notification ignored. User aware timestamp is more recent."

    invoke-direct {p0, v6}, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->logCheckinMessage(Ljava/lang/String;)V

    goto :goto_a2
.end method

.method private onStateUpdatedWithoutUserKnowledge()V
    .registers 9

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->takeInboxSnapshot()Lcom/google/android/apps/googlevoice/model/LabelSnapshot;

    move-result-object v0

    .line 175
    .local v0, inboxSnapshot:Lcom/google/android/apps/googlevoice/model/LabelSnapshot;
    const-string v1, "MDUN: newSnapshotTimestamp: %d, actualSnapshotTimestamp: %d,diff: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->actualInboxSnapshot:Lcom/google/android/apps/googlevoice/model/LabelSnapshot;

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;->getTimestamp()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->actualInboxSnapshot:Lcom/google/android/apps/googlevoice/model/LabelSnapshot;

    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;->getTimestamp()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->logCheckinMessage(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;->getTimestamp()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->actualInboxSnapshot:Lcom/google/android/apps/googlevoice/model/LabelSnapshot;

    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;->getTimestamp()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_4e

    .line 180
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->actualInboxSnapshot:Lcom/google/android/apps/googlevoice/model/LabelSnapshot;

    .line 181
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->onSnapshotsUpdated()V

    .line 185
    :goto_4d
    return-void

    .line 183
    :cond_4e
    const-string v1, "MDUN: Notification ignored. Existing snapshot timestamp is more recent."

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->logCheckinMessage(Ljava/lang/String;)V

    goto :goto_4d
.end method

.method private onUserAwareOfCurrentState()V
    .registers 3

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->takeInboxSnapshot()Lcom/google/android/apps/googlevoice/model/LabelSnapshot;

    move-result-object v0

    .line 163
    .local v0, inboxSnapshot:Lcom/google/android/apps/googlevoice/model/LabelSnapshot;
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->actualInboxSnapshot:Lcom/google/android/apps/googlevoice/model/LabelSnapshot;

    .line 164
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->userAwareInboxSnapshot:Lcom/google/android/apps/googlevoice/model/LabelSnapshot;

    .line 165
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->notifiedMessageIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 166
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->onSnapshotsUpdated()V

    .line 167
    return-void
.end method

.method private rememberCallsNotified([Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;)V
    .registers 8
    .parameter "calls"

    .prologue
    .line 241
    move-object v0, p1

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_11

    aget-object v1, v0, v2

    .line 242
    .local v1, call:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->notifiedMessageIds:Ljava/util/Set;

    iget-object v5, v1, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->messageId:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 244
    .end local v1           #call:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    :cond_11
    return-void
.end method

.method private removeNotifiedCalls([Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;)[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    .registers 9
    .parameter "calls"

    .prologue
    .line 227
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;>;"
    move-object v0, p1

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_8
    if-ge v2, v3, :cond_1c

    aget-object v1, v0, v2

    .line 229
    .local v1, call:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->notifiedMessageIds:Ljava/util/Set;

    iget-object v6, v1, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->messageId:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 230
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 234
    .end local v1           #call:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    :cond_1c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    return-object v5
.end method

.method private static removeOutgoingCalls([Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;)[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    .registers 8
    .parameter "calls"

    .prologue
    .line 250
    array-length v5, p0

    if-nez v5, :cond_4

    .line 263
    .end local p0
    :cond_3
    :goto_3
    return-object p0

    .line 253
    .restart local p0
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;>;"
    move-object v0, p0

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_c
    if-ge v2, v3, :cond_1e

    aget-object v1, v0, v2

    .line 255
    .local v1, call:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    iget-object v5, v1, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->type:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    invoke-static {v5}, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->isOutgoing(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 256
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 259
    .end local v1           #call:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    :cond_1e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    array-length v6, p0

    if-eq v5, v6, :cond_3

    .line 263
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    move-object p0, v5

    goto :goto_3
.end method

.method private takeInboxSnapshot()Lcom/google/android/apps/googlevoice/model/LabelSnapshot;
    .registers 4

    .prologue
    .line 271
    new-instance v0, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    const-string v2, "inbox"

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;-><init>(Lcom/google/android/apps/googlevoice/core/Label;)V

    return-object v0
.end method


# virtual methods
.method public actionUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Action;)V
    .registers 3
    .parameter "model"
    .parameter "action"

    .prologue
    .line 109
    return-void
.end method

.method public actionsUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 2
    .parameter "model"

    .prologue
    .line 112
    return-void
.end method

.method public contactsUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 2
    .parameter "model"

    .prologue
    .line 99
    return-void
.end method

.method public conversationUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 4
    .parameter "model"
    .parameter "conversation"

    .prologue
    .line 103
    if-eqz p2, :cond_d

    const-string v0, "inbox"

    invoke-virtual {p2, v0}, Lcom/google/android/apps/googlevoice/core/Conversation;->hasLabel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 104
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->onUserAwareOfCurrentState()V

    .line 106
    :cond_d
    return-void
.end method

.method public labelUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Label;)V
    .registers 4
    .parameter "model"
    .parameter "label"

    .prologue
    .line 93
    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->onLabelOpenedByUser(Ljava/lang/String;Lcom/google/android/apps/googlevoice/model/VoiceModel;)V

    .line 94
    return-void
.end method

.method public modelUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 2
    .parameter "model"

    .prologue
    .line 89
    return-void
.end method

.method public onLabelOpenedByUser(Ljava/lang/String;Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 4
    .parameter "label"
    .parameter "model"

    .prologue
    .line 132
    const-string v0, "inbox"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 133
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->onUserAwareOfCurrentState()V

    .line 135
    :cond_b
    return-void
.end method

.method public onNotificationsDismissedByUser(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 2
    .parameter "model"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->onUserAwareOfCurrentState()V

    .line 140
    return-void
.end method

.method public onUserSignedIn(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 2
    .parameter "model"

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->onStateUpdatedWithoutUserKnowledge()V

    .line 154
    return-void
.end method

.method public onUserSignedOut(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 4
    .parameter "model"

    .prologue
    .line 144
    new-instance v0, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/model/LabelSnapshot;-><init>()V

    .line 145
    .local v0, inboxSnapshot:Lcom/google/android/apps/googlevoice/model/LabelSnapshot;
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->actualInboxSnapshot:Lcom/google/android/apps/googlevoice/model/LabelSnapshot;

    .line 146
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->userAwareInboxSnapshot:Lcom/google/android/apps/googlevoice/model/LabelSnapshot;

    .line 147
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->notifiedMessageIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 148
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->onSnapshotsUpdated()V

    .line 149
    return-void
.end method

.method public updateCompleted(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 3
    .parameter "model"

    .prologue
    .line 119
    const-string v0, "MDUN: updateCompleted notified."

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->logCheckinMessage(Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/ModelDrivenUnreadNotifier;->onStateUpdatedWithoutUserKnowledge()V

    .line 121
    return-void
.end method

.method public updateException(Lcom/google/android/apps/googlevoice/model/VoiceModel;Ljava/lang/Exception;)V
    .registers 3
    .parameter "model"
    .parameter "exception"

    .prologue
    .line 124
    return-void
.end method

.method public updateStarted(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 2
    .parameter "model"

    .prologue
    .line 115
    return-void
.end method
