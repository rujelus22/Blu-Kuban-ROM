.class public final Lcom/google/api/services/plus/model/Person;
.super Lcom/google/api/client/json/GenericJson;
.source "Person.java"


# instance fields
.field private aboutMe:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "aboutMe"
    .end annotation
.end field

.field private birthday:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "birthday"
    .end annotation
.end field

.field private currentLocation:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "currentLocation"
    .end annotation
.end field

.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "displayName"
    .end annotation
.end field

.field private emails:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "emails"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plus/model/PersonEmails;",
            ">;"
        }
    .end annotation
.end field

.field private gender:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "gender"
    .end annotation
.end field

.field private hasApp:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "hasApp"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field private image:Lcom/google/api/services/plus/model/PersonImage;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "image"
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "kind"
    .end annotation
.end field

.field private languagesSpoken:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "languagesSpoken"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Lcom/google/api/services/plus/model/PersonName;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "name"
    .end annotation
.end field

.field private nickname:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "nickname"
    .end annotation
.end field

.field private organizations:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "organizations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plus/model/PersonOrganizations;",
            ">;"
        }
    .end annotation
.end field

.field private placesLived:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "placesLived"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plus/model/PersonPlacesLived;",
            ">;"
        }
    .end annotation
.end field

.field private relationshipStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "relationshipStatus"
    .end annotation
.end field

.field private tagline:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "tagline"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "url"
    .end annotation
.end field

.field private urls:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plus/model/PersonUrls;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method
