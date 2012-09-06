.class public final Lcom/google/api/services/plusi/model/DataCircleMemberProperties;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "DataCircleMemberProperties.java"


# instance fields
.field public address:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesAddress;",
            ">;"
        }
    .end annotation
.end field

.field public bannerInfo:Lcom/google/api/services/plusi/model/DataHovercardBannerInfo;

.field public company:Ljava/lang/String;

.field public contact:Ljava/lang/Boolean;

.field public contactId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public disallowedInteractions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public displayName:Ljava/lang/String;

.field public email:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/DataEmail;",
            ">;"
        }
    .end annotation
.end field

.field public entityInfo:Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesEntityInfo;

.field public esUser:Ljava/lang/Boolean;

.field public firstName:Ljava/lang/String;

.field public firstNameSortKey:Ljava/lang/String;

.field public focusPhotoUrl:Ljava/lang/String;

.field public gender:Ljava/lang/String;

.field public inIncomingCircle:Ljava/lang/Boolean;

.field public inSameVisibilityGroup:Ljava/lang/Boolean;

.field public interactionsRank:Ljava/lang/Double;

.field public interactionsRankSortKey:Ljava/lang/String;

.field public inviter:Ljava/lang/Boolean;

.field public lastNameSortKey:Ljava/lang/String;

.field public lastUpdateTime:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field public occupation:Ljava/lang/String;

.field public phone:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/DataPhone;",
            ">;"
        }
    .end annotation
.end field

.field public photoUrl:Ljava/lang/String;

.field public profileType:Ljava/lang/String;

.field public school:Ljava/lang/String;

.field public tagLine:Ljava/lang/String;

.field public verified:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 167
    const-class v0, Lcom/google/api/services/plusi/model/DataEmail;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 197
    const-class v0, Lcom/google/api/services/plusi/model/DataPhone;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 211
    const-class v0, Lcom/google/api/services/plusi/model/DataCircleMemberPropertiesAddress;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 212
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
