.class public final Lcom/google/api/services/plusi/model/ReadOptions;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "ReadOptions.java"


# instance fields
.field public commentsOptions:Lcom/google/api/services/plusi/model/ReadOptionsCommentsOptions;

.field public eventUpdateOptions:Lcom/google/api/services/plusi/model/ReadOptionsUpdateOptions;

.field public framesOptions:Lcom/google/api/services/plusi/model/ReadOptionsFramesOptions;

.field public includePhotoContributors:Ljava/lang/Boolean;

.field public includePlusEvent:Ljava/lang/Boolean;

.field public optionsCriteria:Ljava/lang/String;

.field public photosOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/ReadOptionsPhotosOptions;",
            ">;"
        }
    .end annotation
.end field

.field public resolvePersons:Ljava/lang/Boolean;

.field public responseFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const-class v0, Lcom/google/api/services/plusi/model/ReadOptionsPhotosOptions;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
