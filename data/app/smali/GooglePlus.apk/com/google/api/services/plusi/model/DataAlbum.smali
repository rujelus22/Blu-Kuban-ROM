.class public final Lcom/google/api/services/plusi/model/DataAlbum;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "DataAlbum.java"


# instance fields
.field public albumAcl:Ljava/lang/String;

.field public albumType:Ljava/lang/String;

.field public audience:Ljava/lang/String;

.field public audienceMember:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/Person;",
            ">;"
        }
    .end annotation
.end field

.field public authkey:Ljava/lang/String;

.field public childId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public cover:Lcom/google/api/services/plusi/model/DataPhoto;

.field public deprecatedAudienceString:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public downloadUrl:Ljava/lang/String;

.field public eventId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public isReshareDisabled:Ljava/lang/Boolean;

.field public namedShapeCount:Ljava/lang/Integer;

.field public numGaiaRecipients:Ljava/lang/Integer;

.field public numGeoPhotos:Ljava/lang/Integer;

.field public numNonGaiaRecipients:Ljava/lang/Integer;

.field public numSoftDeletedPhotos:Ljava/lang/Integer;

.field public owner:Lcom/google/api/services/plusi/model/DataUser;

.field public photoCount:Ljava/lang/Integer;

.field public plusEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/PlusEvent;",
            ">;"
        }
    .end annotation
.end field

.field public provider:Ljava/lang/String;

.field public pwaManageUrl:Ljava/lang/String;

.field public sample:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/DataPhoto;",
            ">;"
        }
    .end annotation
.end field

.field public showGeoInfo:Ljava/lang/Boolean;

.field public showVisibilityInspector:Ljava/lang/Boolean;

.field public timestampSeconds:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public unnamedShapeCount:Ljava/lang/Integer;

.field public update:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/Update;",
            ">;"
        }
    .end annotation
.end field

.field public visibility:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lcom/google/api/services/plusi/model/PlusEvent;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    const-class v0, Lcom/google/api/services/plusi/model/DataPhoto;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 192
    const-class v0, Lcom/google/api/services/plusi/model/Update;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 226
    const-class v0, Lcom/google/api/services/plusi/model/Person;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 227
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
