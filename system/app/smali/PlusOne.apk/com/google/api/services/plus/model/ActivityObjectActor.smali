.class public final Lcom/google/api/services/plus/model/ActivityObjectActor;
.super Lcom/google/api/client/json/GenericJson;
.source "ActivityObjectActor.java"


# instance fields
.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "displayName"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field private image:Lcom/google/api/services/plus/model/ActivityObjectActorImage;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "image"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method
