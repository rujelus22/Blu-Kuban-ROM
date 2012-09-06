.class public final Lcom/google/api/services/plusi/model/DataVideo;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "DataVideo.java"


# instance fields
.field public downloadUrl:Ljava/lang/String;

.field public durationMillis:Ljava/lang/Long;

.field public id:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public stream:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/DataVideoStream;",
            ">;"
        }
    .end annotation
.end field

.field public timedText:Lcom/google/api/services/plusi/model/DataTimedTextMetaData;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-class v0, Lcom/google/api/services/plusi/model/DataVideoStream;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
