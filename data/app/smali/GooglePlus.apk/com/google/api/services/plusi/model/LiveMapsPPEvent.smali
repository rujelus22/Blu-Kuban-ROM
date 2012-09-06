.class public final Lcom/google/api/services/plusi/model/LiveMapsPPEvent;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "LiveMapsPPEvent.java"


# instance fields
.field public calendarLink:Lcom/google/api/services/plusi/model/PlacePageLink;

.field public category:Ljava/lang/String;

.field public dateSectionTitle:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public formattedDate:Ljava/lang/String;

.field public formattedDow:Ljava/lang/String;

.field public formattedFullTime:Ljava/lang/String;

.field public formattedTime:Ljava/lang/String;

.field public fullDescription:Ljava/lang/String;

.field public providerData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/LiveMapsProviderData;",
            ">;"
        }
    .end annotation
.end field

.field public titleLink:Lcom/google/api/services/plusi/model/PlacePageLink;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 95
    const-class v0, Lcom/google/api/services/plusi/model/LiveMapsProviderData;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
