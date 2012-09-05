.class public final Lcom/google/api/services/plus/model/Activity;
.super Lcom/google/api/client/json/GenericJson;
.source "Activity.java"


# instance fields
.field private access:Lcom/google/api/services/plus/model/Acl;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "access"
    .end annotation
.end field

.field private actor:Lcom/google/api/services/plus/model/ActivityActor;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "actor"
    .end annotation
.end field

.field private address:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "address"
    .end annotation
.end field

.field private annotation:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "annotation"
    .end annotation
.end field

.field private crosspostSource:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "crosspostSource"
    .end annotation
.end field

.field private geocode:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "geocode"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "kind"
    .end annotation
.end field

.field private placeId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "placeId"
    .end annotation
.end field

.field private placeName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "placeName"
    .end annotation
.end field

.field private placeholder:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "placeholder"
    .end annotation
.end field

.field private plusObject:Lcom/google/api/services/plus/model/ActivityObject;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "object"
    .end annotation
.end field

.field private provider:Lcom/google/api/services/plus/model/ActivityProvider;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "provider"
    .end annotation
.end field

.field private published:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "published"
    .end annotation
.end field

.field private radius:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "radius"
    .end annotation
.end field

.field private responseHeaders:Lcom/google/api/client/http/HttpHeaders;

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "title"
    .end annotation
.end field

.field private updated:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "updated"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "url"
    .end annotation
.end field

.field private verb:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "verb"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlusObject()Lcom/google/api/services/plus/model/ActivityObject;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/api/services/plus/model/Activity;->plusObject:Lcom/google/api/services/plus/model/ActivityObject;

    return-object v0
.end method

.method public setAccess(Lcom/google/api/services/plus/model/Acl;)Lcom/google/api/services/plus/model/Activity;
    .registers 2
    .parameter "access"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/google/api/services/plus/model/Activity;->access:Lcom/google/api/services/plus/model/Acl;

    .line 215
    return-object p0
.end method

.method public setCrosspostSource(Ljava/lang/String;)Lcom/google/api/services/plus/model/Activity;
    .registers 2
    .parameter "crosspostSource"

    .prologue
    .line 325
    iput-object p1, p0, Lcom/google/api/services/plus/model/Activity;->crosspostSource:Ljava/lang/String;

    .line 326
    return-object p0
.end method

.method public setPlusObject(Lcom/google/api/services/plus/model/ActivityObject;)Lcom/google/api/services/plus/model/Activity;
    .registers 2
    .parameter "plusObject"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/api/services/plus/model/Activity;->plusObject:Lcom/google/api/services/plus/model/ActivityObject;

    .line 151
    return-object p0
.end method

.method public setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)V
    .registers 2
    .parameter "responseHeaders"

    .prologue
    .line 396
    iput-object p1, p0, Lcom/google/api/services/plus/model/Activity;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 397
    return-void
.end method
