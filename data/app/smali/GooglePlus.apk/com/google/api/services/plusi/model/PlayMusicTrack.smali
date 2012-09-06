.class public final Lcom/google/api/services/plusi/model/PlayMusicTrack;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "PlayMusicTrack.java"


# instance fields
.field public audio:Lcom/google/api/services/plusi/model/AudioObject;

.field public byArtist:Lcom/google/api/services/plusi/model/MusicGroup;

.field public description:Ljava/lang/String;

.field public explicitType:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public inAlbum:Lcom/google/api/services/plusi/model/PlayMusicAlbum;

.field public name:Ljava/lang/String;

.field public offers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/Offer;",
            ">;"
        }
    .end annotation
.end field

.field public previewToken:Ljava/lang/String;

.field public purchaseStatus:Ljava/lang/String;

.field public storeId:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 97
    const-class v0, Lcom/google/api/services/plusi/model/Offer;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
