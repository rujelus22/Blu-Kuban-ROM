.class public final Lcom/google/api/services/plusi/model/ShareboxSettingsJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "ShareboxSettingsJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/ShareboxSettings;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/ShareboxSettingsJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/ShareboxSettingsJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ShareboxSettingsJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/ShareboxSettingsJson;->INSTANCE:Lcom/google/api/services/plusi/model/ShareboxSettingsJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/ShareboxSettings;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "seenEmailConfirmationOob"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "seenRestrictOob"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "seenIncludeLocation"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "recentAcls"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "isDriveUser"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "seenDisableCommentsOob"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "seenLockPostOob"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "sendImplicitInvitesDefault"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "seenFirstPostOob"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "defaultAcl"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-class v3, Lcom/google/api/services/plusi/model/ShareboxSettingsDefaultAclJson;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "defaultAcls"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "lastLocationDisplayType"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/ShareboxSettingsJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/ShareboxSettingsJson;->INSTANCE:Lcom/google/api/services/plusi/model/ShareboxSettingsJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/ShareboxSettings;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 43
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ShareboxSettings;->seenEmailConfirmationOob:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ShareboxSettings;->seenRestrictOob:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ShareboxSettings;->seenIncludeLocation:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ShareboxSettings;->recentAcls:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ShareboxSettings;->isDriveUser:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ShareboxSettings;->seenDisableCommentsOob:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ShareboxSettings;->seenLockPostOob:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ShareboxSettings;->sendImplicitInvitesDefault:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ShareboxSettings;->seenFirstPostOob:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ShareboxSettings;->defaultAcl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ShareboxSettings;->defaultAcls:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/ShareboxSettings;->lastLocationDisplayType:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/ShareboxSettings;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/ShareboxSettingsJson;->getValues(Lcom/google/api/services/plusi/model/ShareboxSettings;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/ShareboxSettings;
    .registers 2

    .prologue
    .line 38
    new-instance v0, Lcom/google/api/services/plusi/model/ShareboxSettings;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/ShareboxSettings;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/ShareboxSettingsJson;->newInstance()Lcom/google/api/services/plusi/model/ShareboxSettings;

    move-result-object v0

    return-object v0
.end method
