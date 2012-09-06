.class public final Lcom/google/api/services/plusi/model/PhotoDataAlbum;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "PhotoDataAlbum.java"


# instance fields
.field public eventId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public photoCount:Ljava/lang/Integer;

.field public specialAlbumType:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
