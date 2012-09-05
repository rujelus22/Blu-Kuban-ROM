.class public final Lcom/google/android/apps/plus/analytics/AnalyticsClock;
.super Ljava/lang/Object;
.source "AnalyticsClock.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static now()J
    .registers 2

    .prologue
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
