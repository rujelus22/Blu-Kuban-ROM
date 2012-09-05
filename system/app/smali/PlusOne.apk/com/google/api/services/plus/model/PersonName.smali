.class public final Lcom/google/api/services/plus/model/PersonName;
.super Lcom/google/api/client/json/GenericJson;
.source "PersonName.java"


# instance fields
.field private familyName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "familyName"
    .end annotation
.end field

.field private formatted:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "formatted"
    .end annotation
.end field

.field private givenName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "givenName"
    .end annotation
.end field

.field private honorificPrefix:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "honorificPrefix"
    .end annotation
.end field

.field private honorificSuffix:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "honorificSuffix"
    .end annotation
.end field

.field private middleName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "middleName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method
