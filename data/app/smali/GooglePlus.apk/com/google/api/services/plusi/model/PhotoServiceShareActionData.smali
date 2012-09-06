.class public final Lcom/google/api/services/plusi/model/PhotoServiceShareActionData;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "PhotoServiceShareActionData.java"


# instance fields
.field public isAlbumReshare:Ljava/lang/Boolean;

.field public isFullAlbumShare:Ljava/lang/Boolean;

.field public mediaRef:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/PhotoServiceMediaReference;",
            ">;"
        }
    .end annotation
.end field

.field public targetAlbum:Lcom/google/api/services/plusi/model/PhotoServiceShareActionDataAlbum;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    const-class v0, Lcom/google/api/services/plusi/model/PhotoServiceMediaReference;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
