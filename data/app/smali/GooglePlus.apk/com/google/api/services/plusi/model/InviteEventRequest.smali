.class public final Lcom/google/api/services/plusi/model/InviteEventRequest;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "InviteEventRequest.java"


# instance fields
.field public aclDelta:Ljava/lang/String;

.field public commonFields:Lcom/google/api/services/plusi/model/ApiaryFields;

.field public enableTracing:Ljava/lang/Boolean;

.field public eventId:Ljava/lang/String;

.field public inviteRoster:Lcom/google/api/services/plusi/model/SharingRoster;

.field public organizerId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
