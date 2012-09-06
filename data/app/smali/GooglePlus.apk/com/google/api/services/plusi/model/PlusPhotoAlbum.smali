.class public final Lcom/google/api/services/plusi/model/PlusPhotoAlbum;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "PlusPhotoAlbum.java"


# instance fields
.field public albumId:Ljava/lang/String;

.field public associatedMedia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/PlusPhoto;",
            ">;"
        }
    .end annotation
.end field

.field public contentLocation:Lcom/google/api/services/plusi/model/Place;

.field public description:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public ownerObfuscatedId:Ljava/lang/String;

.field public photoCount:Ljava/lang/Integer;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-class v0, Lcom/google/api/services/plusi/model/PlusPhoto;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
