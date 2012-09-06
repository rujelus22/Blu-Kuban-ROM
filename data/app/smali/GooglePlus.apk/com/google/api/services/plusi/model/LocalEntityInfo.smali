.class public final Lcom/google/api/services/plusi/model/LocalEntityInfo;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "LocalEntityInfo.java"


# instance fields
.field public businessHours:Lcom/google/api/services/plusi/model/BusinessHoursField;

.field public categories:Lcom/google/api/services/plusi/model/LocalCategories;

.field public cid:Ljava/lang/String;

.field public localSearchContext:Lcom/google/api/services/plusi/model/SearchContext;

.field public paper:Lcom/google/api/services/plusi/model/FrontendPaperProto;

.field public priceRange:Lcom/google/api/services/plusi/model/PriceRangeField;

.field public type:Ljava/lang/String;

.field public verificationStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
