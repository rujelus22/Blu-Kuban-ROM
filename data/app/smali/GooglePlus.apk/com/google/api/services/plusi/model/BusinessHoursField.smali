.class public final Lcom/google/api/services/plusi/model/BusinessHoursField;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "BusinessHoursField.java"


# instance fields
.field public days:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/WeekdayTimeIntervals;",
            ">;"
        }
    .end annotation
.end field

.field public metadata:Lcom/google/api/services/plusi/model/Metadata;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/google/api/services/plusi/model/WeekdayTimeIntervals;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
