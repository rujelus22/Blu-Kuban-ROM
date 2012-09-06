.class public final Lcom/google/api/services/plusi/model/PlacePageCheckin;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "PlacePageCheckin.java"


# instance fields
.field public author:Lcom/google/api/services/plusi/model/AuthorProto;

.field public dateSec:Ljava/lang/Long;

.field public media:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/MediaProto;",
            ">;"
        }
    .end annotation
.end field

.field public permalinkUrl:Ljava/lang/String;

.field public time:Lcom/google/api/services/plusi/model/TimeProto;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-class v0, Lcom/google/api/services/plusi/model/MediaProto;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
