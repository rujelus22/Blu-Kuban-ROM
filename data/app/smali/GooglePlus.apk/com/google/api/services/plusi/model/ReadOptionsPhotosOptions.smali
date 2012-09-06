.class public final Lcom/google/api/services/plusi/model/ReadOptionsPhotosOptions;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "ReadOptionsPhotosOptions.java"


# instance fields
.field public includeComments:Ljava/lang/Boolean;

.field public includePlusOnes:Ljava/lang/Boolean;

.field public maxPhotos:Ljava/lang/Integer;

.field public sortCriteria:Ljava/lang/String;

.field public targetObfuscatedId:Ljava/lang/String;

.field public targetedPhotoIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
