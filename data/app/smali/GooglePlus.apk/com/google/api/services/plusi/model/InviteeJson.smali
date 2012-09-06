.class public final Lcom/google/api/services/plusi/model/InviteeJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "InviteeJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/Invitee;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/InviteeJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/InviteeJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/InviteeJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/InviteeJson;->INSTANCE:Lcom/google/api/services/plusi/model/InviteeJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/Invitee;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/api/services/plusi/model/PlusEventAlbumJson;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "album"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/google/api/services/plusi/model/EmbedsPersonJson;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "invitee"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "numAdditionalGuests"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "isAdminBlacklisted"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "rsvpType"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/google/api/services/plusi/model/EmbedsPersonJson;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "inviter"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "canUploadPhotos"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/InviteeJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/InviteeJson;->INSTANCE:Lcom/google/api/services/plusi/model/InviteeJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/Invitee;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Invitee;->album:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Invitee;->invitee:Lcom/google/api/services/plusi/model/EmbedsPerson;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Invitee;->numAdditionalGuests:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Invitee;->isAdminBlacklisted:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Invitee;->rsvpType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Invitee;->inviter:Lcom/google/api/services/plusi/model/EmbedsPerson;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Invitee;->canUploadPhotos:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/Invitee;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/InviteeJson;->getValues(Lcom/google/api/services/plusi/model/Invitee;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/Invitee;
    .registers 2

    .prologue
    .line 33
    new-instance v0, Lcom/google/api/services/plusi/model/Invitee;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/Invitee;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/InviteeJson;->newInstance()Lcom/google/api/services/plusi/model/Invitee;

    move-result-object v0

    return-object v0
.end method
