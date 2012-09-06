.class public final Lcom/google/api/services/plusi/model/DataPlusOne;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "DataPlusOne.java"


# instance fields
.field public abuseToken:Ljava/lang/String;

.field public aclJson:Ljava/lang/String;

.field public activityId:Ljava/lang/String;

.field public aggregate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/DataAggregate;",
            ">;"
        }
    .end annotation
.end field

.field public authoredContent:Ljava/lang/Boolean;

.field public commentId:Ljava/lang/String;

.field public entity:Lcom/google/api/services/plusi/model/DataEntity;

.field public friendCount:Ljava/lang/Integer;

.field public generatedActivityId:Ljava/lang/String;

.field public globalCount:Ljava/lang/Integer;

.field public htmlSnippet:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public isPlusonedByViewer:Ljava/lang/Boolean;

.field public isSharedByViewer:Ljava/lang/Boolean;

.field public origImageUrl:Ljava/lang/String;

.field public perfectStreamInfo:Lcom/google/api/services/plusi/model/DataPerfectStreamInfo;

.field public person:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/DataPerson;",
            ">;"
        }
    .end annotation
.end field

.field public sourceUrl:Ljava/lang/String;

.field public timeModifiedMs:Ljava/lang/Double;

.field public type:Ljava/lang/String;

.field public urlInfo:Lcom/google/api/services/plusi/model/DataUrlInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 116
    const-class v0, Lcom/google/api/services/plusi/model/DataPerson;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 176
    const-class v0, Lcom/google/api/services/plusi/model/DataAggregate;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 177
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
