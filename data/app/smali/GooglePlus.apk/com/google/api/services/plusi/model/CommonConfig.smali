.class public final Lcom/google/api/services/plusi/model/CommonConfig;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "CommonConfig.java"


# instance fields
.field public contactMe:Lcom/google/api/services/plusi/model/ContactMe;

.field public googleMeEnabled:Ljava/lang/Boolean;

.field public inAbuseiamQueue:Ljava/lang/Boolean;

.field public incomingConnections:Lcom/google/api/services/plusi/model/IntField;

.field public profileState:Lcom/google/api/services/plusi/model/ProfileState;

.field public showFollowerCounts:Ljava/lang/Boolean;

.field public tabVisibility:Lcom/google/api/services/plusi/model/TabVisibility;

.field public wall:Lcom/google/api/services/plusi/model/Wall;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
