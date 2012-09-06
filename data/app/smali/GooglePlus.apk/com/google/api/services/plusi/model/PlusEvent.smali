.class public final Lcom/google/api/services/plusi/model/PlusEvent;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "PlusEvent.java"


# instance fields
.field public abuseStatus:Ljava/lang/String;

.field public creator:Lcom/google/api/services/plusi/model/EmbedsPerson;

.field public creatorObfuscatedId:Ljava/lang/String;

.field public deprecated11:Lcom/google/api/services/plusi/model/EventCategory;

.field public deprecated6:Ljava/lang/String;

.field public deprecated9:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/Invitee;",
            ">;"
        }
    .end annotation
.end field

.field public description:Ljava/lang/String;

.field public displayContent:Lcom/google/api/services/plusi/model/PlusEventDisplayContent;

.field public endDate:Ljava/lang/String;

.field public endTime:Lcom/google/api/services/plusi/model/EventTime;

.field public eventOptions:Lcom/google/api/services/plusi/model/EventOptions;

.field public hangoutInfo:Lcom/google/api/services/plusi/model/HangoutInfo;

.field public id:Ljava/lang/String;

.field public inviteeSummary:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/InviteeSummary;",
            ">;"
        }
    .end annotation
.end field

.field public isBroadcastView:Ljava/lang/Boolean;

.field public isPublic:Ljava/lang/Boolean;

.field public location:Lcom/google/api/services/plusi/model/Place;

.field public name:Ljava/lang/String;

.field public photoContributor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/Invitee;",
            ">;"
        }
    .end annotation
.end field

.field public photoCount:Ljava/lang/Integer;

.field public startDate:Ljava/lang/String;

.field public startTime:Lcom/google/api/services/plusi/model/EventTime;

.field public theme:Lcom/google/api/services/plusi/model/Theme;

.field public themeSpecification:Lcom/google/api/services/plusi/model/ThemeSpecification;

.field public thirdPartyInfo:Lcom/google/api/services/plusi/model/EventThirdPartyInfo;

.field public url:Ljava/lang/String;

.field public viewerInfo:Lcom/google/api/services/plusi/model/Invitee;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const-class v0, Lcom/google/api/services/plusi/model/InviteeSummary;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 98
    const-class v0, Lcom/google/api/services/plusi/model/Invitee;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 209
    const-class v0, Lcom/google/api/services/plusi/model/Invitee;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 210
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
