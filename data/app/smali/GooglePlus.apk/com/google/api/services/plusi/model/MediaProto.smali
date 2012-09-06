.class public final Lcom/google/api/services/plusi/model/MediaProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "MediaProto.java"


# instance fields
.field public authorName:Ljava/lang/String;

.field public originalIndex:Ljava/lang/Integer;

.field public reviewId:Ljava/lang/String;

.field public sourceId:Ljava/lang/Integer;

.field public sourceName:Ljava/lang/String;

.field public thumbnail:Lcom/google/api/services/plusi/model/MediaProtoThumbnail;

.field public thumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/MediaProtoThumbnail;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public userMedia:Lcom/google/api/services/plusi/model/UserMediaProto;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/google/api/services/plusi/model/MediaProtoThumbnail;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
