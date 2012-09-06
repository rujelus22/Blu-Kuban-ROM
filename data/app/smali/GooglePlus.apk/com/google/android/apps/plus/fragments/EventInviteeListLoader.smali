.class public Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "EventInviteeListLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/EventInviteeListLoader$CircleQuery;,
        Lcom/google/android/apps/plus/fragments/EventInviteeListLoader$InviteeQuery;
    }
.end annotation


# static fields
.field private static final INVITEE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mEventId:Ljava/lang/String;

.field private final mOwnerId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 68
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "is_header"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "person_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gaia_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "email"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "packed_circle_ids"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "blacklisted"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rsvp"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "invitee_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;->INVITEE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "eventId"
    .parameter "ownerId"

    .prologue
    .line 117
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->EVENTS_ALL_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 118
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;->mEventId:Ljava/lang/String;

    .line 119
    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;->mOwnerId:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 121
    return-void
.end method

.method private getVisibleCount(Ljava/util/List;)I
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/Invitee;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, invitees:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/Invitee;>;"
    const/4 v0, 0x0

    .line 210
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1b

    .line 211
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/services/plusi/model/Invitee;

    iget-object v2, v3, Lcom/google/api/services/plusi/model/Invitee;->invitee:Lcom/google/api/services/plusi/model/EmbedsPerson;

    .line 212
    .local v2, person:Lcom/google/api/services/plusi/model/EmbedsPerson;
    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;->isPersonVisible(Lcom/google/api/services/plusi/model/EmbedsPerson;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 213
    add-int/lit8 v0, v0, 0x1

    .line 210
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 217
    .end local v2           #person:Lcom/google/api/services/plusi/model/EmbedsPerson;
    :cond_1b
    return v0
.end method

.method private insertAdditionalInviteeCount(Lcom/google/android/apps/plus/phone/EsMatrixCursor;I)V
    .registers 6
    .parameter "result"
    .parameter "delta"

    .prologue
    .line 238
    if-lez p2, :cond_25

    .line 239
    sget-object v1, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;->INVITEE_PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 240
    .local v0, row:[Ljava/lang/Object;
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 241
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 242
    const/16 v1, 0x9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 243
    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 245
    .end local v0           #row:[Ljava/lang/Object;
    :cond_25
    return-void
.end method

.method private insertInviteeGroup(Lcom/google/api/services/plusi/model/PlusEvent;Ljava/lang/String;Ljava/util/List;Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/util/HashMap;)V
    .registers 10
    .parameter "event"
    .parameter "rsvpType"
    .parameter
    .parameter "result"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/services/plusi/model/PlusEvent;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/Invitee;",
            ">;",
            "Lcom/google/android/apps/plus/phone/EsMatrixCursor;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p3, invitees:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/Invitee;>;"
    .local p5, peopleToCirclesMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/google/android/apps/plus/content/EsEventData;->getInviteeSummary(Lcom/google/api/services/plusi/model/PlusEvent;Ljava/lang/String;)Lcom/google/api/services/plusi/model/InviteeSummary;

    move-result-object v0

    .line 197
    .local v0, summary:Lcom/google/api/services/plusi/model/InviteeSummary;
    invoke-direct {p0, p3}, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;->getVisibleCount(Ljava/util/List;)I

    move-result v2

    .line 198
    .local v2, visibleCount:I
    if-eqz v0, :cond_1e

    iget-object v3, v0, Lcom/google/api/services/plusi/model/InviteeSummary;->count:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 200
    .local v1, totalCount:I
    :goto_10
    if-lez v1, :cond_1d

    .line 201
    invoke-direct {p0, p4, p2, v1}, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;->insertInviteeSummary(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/lang/String;I)V

    .line 202
    invoke-direct {p0, p4, p3, p5}, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;->insertInvitees(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/util/List;Ljava/util/HashMap;)V

    .line 203
    sub-int v3, v1, v2

    invoke-direct {p0, p4, v3}, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;->insertAdditionalInviteeCount(Lcom/google/android/apps/plus/phone/EsMatrixCursor;I)V

    .line 205
    :cond_1d
    return-void

    .line 198
    .end local v1           #totalCount:I
    :cond_1e
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_10
.end method

.method private insertInviteeSummary(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/lang/String;I)V
    .registers 7
    .parameter "result"
    .parameter "rsvpType"
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    .line 229
    sget-object v1, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;->INVITEE_PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 230
    .local v0, row:[Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 231
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 232
    const/16 v1, 0x8

    aput-object p2, v0, v1

    .line 233
    const/16 v1, 0x9

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 234
    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 235
    return-void
.end method

.method private insertInvitees(Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/util/List;Ljava/util/HashMap;)V
    .registers 14
    .parameter "result"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/plus/phone/EsMatrixCursor;",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/Invitee;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, invitees:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/Invitee;>;"
    .local p3, peopleToCirclesMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 252
    if-nez p2, :cond_5

    .line 278
    :cond_4
    return-void

    .line 256
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/services/plusi/model/Invitee;

    .line 257
    .local v3, invitee:Lcom/google/api/services/plusi/model/Invitee;
    iget-object v7, v3, Lcom/google/api/services/plusi/model/Invitee;->invitee:Lcom/google/api/services/plusi/model/EmbedsPerson;

    if-eqz v7, :cond_9

    iget-object v7, v3, Lcom/google/api/services/plusi/model/Invitee;->invitee:Lcom/google/api/services/plusi/model/EmbedsPerson;

    invoke-direct {p0, v7}, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;->isPersonVisible(Lcom/google/api/services/plusi/model/EmbedsPerson;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 258
    iget-object v7, v3, Lcom/google/api/services/plusi/model/Invitee;->invitee:Lcom/google/api/services/plusi/model/EmbedsPerson;

    iget-object v1, v7, Lcom/google/api/services/plusi/model/EmbedsPerson;->ownerObfuscatedId:Ljava/lang/String;

    .line 260
    .local v1, gaiaId:Ljava/lang/String;
    iget-object v7, v3, Lcom/google/api/services/plusi/model/Invitee;->isAdminBlacklisted:Ljava/lang/Boolean;

    if-eqz v7, :cond_85

    iget-object v7, v3, Lcom/google/api/services/plusi/model/Invitee;->isAdminBlacklisted:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_85

    move v0, v5

    .line 263
    .local v0, blacklisted:Z
    :goto_32
    sget-object v7, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;->INVITEE_PROJECTION:[Ljava/lang/String;

    array-length v7, v7

    new-array v4, v7, [Ljava/lang/Object;

    .line 264
    .local v4, row:[Ljava/lang/Object;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    .line 265
    invoke-virtual {p1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->getCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    .line 267
    const/4 v8, 0x2

    if-eqz v1, :cond_87

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "g:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_5d
    aput-object v7, v4, v8

    .line 269
    const/4 v7, 0x3

    aput-object v1, v4, v7

    .line 271
    const/4 v7, 0x4

    iget-object v8, v3, Lcom/google/api/services/plusi/model/Invitee;->invitee:Lcom/google/api/services/plusi/model/EmbedsPerson;

    iget-object v8, v8, Lcom/google/api/services/plusi/model/EmbedsPerson;->name:Ljava/lang/String;

    aput-object v8, v4, v7

    .line 272
    const/4 v7, 0x5

    iget-object v8, v3, Lcom/google/api/services/plusi/model/Invitee;->invitee:Lcom/google/api/services/plusi/model/EmbedsPerson;

    iget-object v8, v8, Lcom/google/api/services/plusi/model/EmbedsPerson;->email:Ljava/lang/String;

    aput-object v8, v4, v7

    .line 273
    const/4 v7, 0x6

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v4, v7

    .line 274
    const/4 v8, 0x7

    if-eqz v0, :cond_89

    move v7, v5

    :goto_7b
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v8

    .line 275
    invoke-virtual {p1, v4}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_9

    .end local v0           #blacklisted:Z
    .end local v4           #row:[Ljava/lang/Object;
    :cond_85
    move v0, v6

    .line 260
    goto :goto_32

    .line 267
    .restart local v0       #blacklisted:Z
    .restart local v4       #row:[Ljava/lang/Object;
    :cond_87
    const/4 v7, 0x0

    goto :goto_5d

    :cond_89
    move v7, v6

    .line 274
    goto :goto_7b
.end method

.method private isPersonVisible(Lcom/google/api/services/plusi/model/EmbedsPerson;)Z
    .registers 3
    .parameter "person"

    .prologue
    .line 221
    if-eqz p1, :cond_14

    iget-object v0, p1, Lcom/google/api/services/plusi/model/EmbedsPerson;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/google/api/services/plusi/model/EmbedsPerson;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private queryCirclesForPeople(Ljava/util/List;)Ljava/util/HashMap;
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/Invitee;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, invitees:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/Invitee;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 284
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 286
    .local v11, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/api/services/plusi/model/Invitee;

    .line 287
    .local v10, invitee:Lcom/google/api/services/plusi/model/Invitee;
    iget-object v0, v10, Lcom/google/api/services/plusi/model/Invitee;->invitee:Lcom/google/api/services/plusi/model/EmbedsPerson;

    if-eqz v0, :cond_b

    iget-object v0, v10, Lcom/google/api/services/plusi/model/Invitee;->invitee:Lcom/google/api/services/plusi/model/EmbedsPerson;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/EmbedsPerson;->ownerObfuscatedId:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 288
    iget-object v0, v10, Lcom/google/api/services/plusi/model/Invitee;->invitee:Lcom/google/api/services/plusi/model/EmbedsPerson;

    iget-object v0, v0, Lcom/google/api/services/plusi/model/EmbedsPerson;->ownerObfuscatedId:Ljava/lang/String;

    invoke-virtual {v11, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 292
    .end local v10           #invitee:Lcom/google/api/services/plusi/model/Invitee;
    :cond_29
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .local v12, sb:Ljava/lang/StringBuilder;
    const-string v0, "gaia_id"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3a
    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ge v8, v0, :cond_4f

    .line 295
    if-lez v8, :cond_47

    .line 296
    const/16 v0, 0x2c

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    :cond_47
    const/16 v0, 0x3f

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    add-int/lit8 v8, v8, 0x1

    goto :goto_3a

    .line 300
    :cond_4f
    const/16 v0, 0x29

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 302
    .local v5, selection:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 304
    .local v6, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v4, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader$CircleQuery;->PROJECTION:[Ljava/lang/String;

    move-object v3, v2

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/content/EsPeopleData;->getPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 307
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_8f

    .line 309
    :goto_73
    :try_start_73
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 310
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_86
    .catchall {:try_start_73 .. :try_end_86} :catchall_87

    goto :goto_73

    .line 314
    :catchall_87
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_8c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 317
    :cond_8f
    return-object v11
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 29

    .prologue
    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;->mEventId:Ljava/lang/String;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;->mOwnerId:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 129
    :cond_c
    const/4 v6, 0x0

    .line 188
    :goto_d
    return-object v6

    .line 131
    :cond_e
    const/16 v26, 0x0

    .line 132
    .local v26, list:Lcom/google/android/apps/plus/content/EsEventData$InviteeList;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;->mEventId:Ljava/lang/String;

    sget-object v9, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader$InviteeQuery;->PROJECTION:[Ljava/lang/String;

    invoke-static {v2, v4, v8, v9}, Lcom/google/android/apps/plus/content/EsEventData;->getEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 135
    .local v23, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 137
    .local v3, eventInfo:Lcom/google/api/services/plusi/model/PlusEvent;
    :try_start_23
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 138
    invoke-static {}, Lcom/google/api/services/plusi/model/PlusEventJson;->getInstance()Lcom/google/api/services/plusi/model/PlusEventJson;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/api/services/plusi/model/PlusEventJson;->fromByteArray([B)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/api/services/plusi/model/PlusEvent;

    move-object v3, v0

    .line 140
    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v22

    .line 141
    .local v22, bytes:[B
    if-eqz v22, :cond_4f

    .line 142
    sget-object v2, Lcom/google/android/apps/plus/content/EsEventData;->INVITEE_LIST_JSON:Lcom/google/android/apps/plus/json/EsJson;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/json/EsJson;->fromByteArray([B)Ljava/lang/Object;

    move-result-object v26

    .end local v26           #list:Lcom/google/android/apps/plus/content/EsEventData$InviteeList;
    check-cast v26, Lcom/google/android/apps/plus/content/EsEventData$InviteeList;
    :try_end_4f
    .catchall {:try_start_23 .. :try_end_4f} :catchall_56

    .line 146
    .end local v22           #bytes:[B
    .restart local v26       #list:Lcom/google/android/apps/plus/content/EsEventData$InviteeList;
    :cond_4f
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 149
    if-nez v26, :cond_5b

    .line 150
    const/4 v6, 0x0

    goto :goto_d

    .line 146
    .end local v26           #list:Lcom/google/android/apps/plus/content/EsEventData$InviteeList;
    :catchall_56
    move-exception v2

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    throw v2

    .line 154
    .restart local v26       #list:Lcom/google/android/apps/plus/content/EsEventData$InviteeList;
    :cond_5b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v5, going:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/api/services/plusi/model/Invitee;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v11, notGoing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/api/services/plusi/model/Invitee;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v15, unknown:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/api/services/plusi/model/Invitee;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v19, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/api/services/plusi/model/Invitee;>;"
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/google/android/apps/plus/content/EsEventData$InviteeList;->invitees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :goto_77
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d1

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/google/api/services/plusi/model/Invitee;

    .line 161
    .local v25, invitee:Lcom/google/api/services/plusi/model/Invitee;
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/google/api/services/plusi/model/Invitee;->isAdminBlacklisted:Ljava/lang/Boolean;

    if-eqz v2, :cond_9b

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/google/api/services/plusi/model/Invitee;->isAdminBlacklisted:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 162
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    .line 164
    :cond_9b
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/api/services/plusi/model/Invitee;->rsvpType:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 165
    .local v27, rsvp:Ljava/lang/String;
    sget-object v2, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_ATTENDING:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    sget-object v2, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_CHECKIN:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 167
    :cond_b5
    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    .line 168
    :cond_bb
    sget-object v2, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_ATTENDING:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 169
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    .line 171
    :cond_cb
    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    .line 176
    .end local v25           #invitee:Lcom/google/api/services/plusi/model/Invitee;
    .end local v27           #rsvp:Ljava/lang/String;
    :cond_d1
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/google/android/apps/plus/content/EsEventData$InviteeList;->invitees:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;->queryCirclesForPeople(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v7

    .line 178
    .local v7, peopleToCirclesMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    sget-object v2, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;->INVITEE_PROJECTION:[Ljava/lang/String;

    invoke-direct {v6, v2}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 180
    .local v6, result:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    sget-object v4, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_ATTENDING:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;->insertInviteeGroup(Lcom/google/api/services/plusi/model/PlusEvent;Ljava/lang/String;Ljava/util/List;Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/util/HashMap;)V

    .line 182
    sget-object v10, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_ATTENDING:Ljava/lang/String;

    move-object/from16 v8, p0

    move-object v9, v3

    move-object v12, v6

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;->insertInviteeGroup(Lcom/google/api/services/plusi/model/PlusEvent;Ljava/lang/String;Ljava/util/List;Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/util/HashMap;)V

    .line 184
    sget-object v14, Lcom/google/android/apps/plus/content/EsEventData;->RSVP_NOT_RESPONDED:Ljava/lang/String;

    move-object/from16 v12, p0

    move-object v13, v3

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    invoke-direct/range {v12 .. v17}, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;->insertInviteeGroup(Lcom/google/api/services/plusi/model/PlusEvent;Ljava/lang/String;Ljava/util/List;Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/util/HashMap;)V

    .line 186
    const-string v18, "REMOVED"

    move-object/from16 v16, p0

    move-object/from16 v17, v3

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v21}, Lcom/google/android/apps/plus/fragments/EventInviteeListLoader;->insertInviteeGroup(Lcom/google/api/services/plusi/model/PlusEvent;Ljava/lang/String;Ljava/util/List;Lcom/google/android/apps/plus/phone/EsMatrixCursor;Ljava/util/HashMap;)V

    goto/16 :goto_d
.end method
