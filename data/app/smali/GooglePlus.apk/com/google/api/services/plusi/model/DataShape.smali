.class public final Lcom/google/api/services/plusi/model/DataShape;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "DataShape.java"


# instance fields
.field public bounds:Lcom/google/api/services/plusi/model/DataRect32;

.field public creator:Lcom/google/api/services/plusi/model/DataUser;

.field public id:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public suggestion:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/DataUser;",
            ">;"
        }
    .end annotation
.end field

.field public url:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public user:Lcom/google/api/services/plusi/model/DataUser;

.field public videoThumbnail:Lcom/google/api/services/plusi/model/DataVideoThumbnail;

.field public viewerCanApprove:Ljava/lang/Boolean;

.field public viewerCanEdit:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 117
    const-class v0, Lcom/google/api/services/plusi/model/DataUser;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
