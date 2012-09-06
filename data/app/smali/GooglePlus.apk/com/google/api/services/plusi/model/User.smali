.class public final Lcom/google/api/services/plusi/model/User;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "User.java"


# instance fields
.field public birthday:Lcom/google/api/services/plusi/model/BirthdayField;

.field public braggingRights:Lcom/google/api/services/plusi/model/StringField;

.field public canonicalProfileUrl:Ljava/lang/String;

.field public educations:Lcom/google/api/services/plusi/model/Educations;

.field public employments:Lcom/google/api/services/plusi/model/Employments;

.field public enableLocal:Ljava/lang/Boolean;

.field public gender:Lcom/google/api/services/plusi/model/Gender;

.field public locations:Lcom/google/api/services/plusi/model/Locations;

.field public name:Lcom/google/api/services/plusi/model/Name;

.field public nameDisplayOptions:Lcom/google/api/services/plusi/model/NameDisplayOptions;

.field public occupation:Lcom/google/api/services/plusi/model/StringField;

.field public otherNames:Lcom/google/api/services/plusi/model/OtherNames;

.field public profilePageCrawlable:Ljava/lang/Boolean;

.field public publicUsername:Ljava/lang/String;

.field public relationshipInterests:Lcom/google/api/services/plusi/model/RelationshipInterests;

.field public relationshipStatus:Lcom/google/api/services/plusi/model/RelationshipStatus;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
