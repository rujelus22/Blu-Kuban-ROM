.class public final Lcom/google/api/services/plusi/model/WeekdayTimeIntervals;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "WeekdayTimeIntervals.java"


# instance fields
.field public current:Ljava/lang/Boolean;

.field public dayOfWeek:Ljava/lang/String;

.field public intervals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/TimeInterval;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const-class v0, Lcom/google/api/services/plusi/model/TimeInterval;

    invoke-static {v0}, Lcom/google/android/apps/plus/json/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
