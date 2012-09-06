.class public final Lcom/google/api/services/plusi/model/OpeningHoursProtoDay;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "OpeningHoursProtoDay.java"


# instance fields
.field public currentDay:Ljava/lang/Boolean;

.field public dayName:Ljava/lang/String;

.field public interval:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/OpeningHoursProtoDayInterval;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/google/api/services/plusi/model/OpeningHoursProtoDayInterval;

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
