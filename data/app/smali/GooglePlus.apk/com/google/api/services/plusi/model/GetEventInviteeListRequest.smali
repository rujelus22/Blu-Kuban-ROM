.class public final Lcom/google/api/services/plusi/model/GetEventInviteeListRequest;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "GetEventInviteeListRequest.java"


# instance fields
.field public commonFields:Lcom/google/api/services/plusi/model/ApiaryFields;

.field public enableTracing:Ljava/lang/Boolean;

.field public eventId:Ljava/lang/String;

.field public includeAdminBlacklist:Ljava/lang/Boolean;

.field public invitationToken:Ljava/lang/String;

.field public photoContributorsOnly:Ljava/lang/Boolean;

.field public rsvpType:Ljava/lang/String;

.field public taggeesOnly:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
