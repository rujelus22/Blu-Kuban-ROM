.class public final Lcom/google/api/services/plusi/model/OpeningHoursProto;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "OpeningHoursProto.java"


# instance fields
.field public attribution:Lcom/google/api/services/plusi/model/PlacePageLink;

.field public day:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/OpeningHoursProtoDay;",
            ">;"
        }
    .end annotation
.end field

.field public timeSchedule:Lcom/google/api/services/plusi/model/TimeScheduleProto;

.field public title:Ljava/lang/String;

.field public today:Lcom/google/api/services/plusi/model/OpeningHoursProtoDay;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    const-class v0, Lcom/google/api/services/plusi/model/OpeningHoursProtoDay;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
