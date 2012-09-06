.class public final Lcom/google/api/services/plusi/model/HangoutStartContext;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "HangoutStartContext.java"


# instance fields
.field public activityId:Ljava/lang/String;

.field public appData:Ljava/lang/String;

.field public appId:Ljava/lang/String;

.field public callback:Ljava/lang/String;

.field public circleId:Ljava/lang/String;

.field public contextId:Ljava/lang/String;

.field public create:Ljava/lang/Boolean;

.field public deprecatedCallback:Ljava/lang/Boolean;

.field public externalKey:Lcom/google/api/services/plusi/model/ExternalEntityKey;

.field public flippy:Ljava/lang/Boolean;

.field public hangoutId:Ljava/lang/String;

.field public hangoutType:Ljava/lang/String;

.field public invitation:Lcom/google/api/services/plusi/model/HangoutStartContextInvitation;

.field public invitee:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/HangoutStartContextInvitee;",
            ">;"
        }
    .end annotation
.end field

.field public latencyMarks:Lcom/google/api/services/plusi/model/HangoutStartContextLatencyMarks;

.field public nick:Ljava/lang/String;

.field public profileId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public referringUrl:Ljava/lang/String;

.field public shouldAutoInvite:Ljava/lang/Boolean;

.field public shouldMuteVideo:Ljava/lang/Boolean;

.field public source:Ljava/lang/String;

.field public topic:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 191
    const-class v0, Lcom/google/api/services/plusi/model/HangoutStartContextInvitee;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 192
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
