.class public final Lcom/google/api/services/plusi/model/SearchQuery;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "SearchQuery.java"


# instance fields
.field public circleFilter:Lcom/google/api/services/plusi/model/CircleFilter;

.field public filter:Ljava/lang/String;

.field public locationFilter:Lcom/google/api/services/plusi/model/LocationFilter;

.field public queryText:Ljava/lang/String;

.field public sort:Ljava/lang/String;

.field public squareFilter:Lcom/google/api/services/plusi/model/SquareFilter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
