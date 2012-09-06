.class public Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
.super Ljava/lang/Object;
.source "AnalyticsInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mCustomValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

.field private final mStartTime:J

.field private final mStartView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;


# direct methods
.method constructor <init>(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;J)V
    .registers 11
    .parameter "startView"
    .parameter "endView"
    .parameter "startTime"

    .prologue
    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;-><init>(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;JLjava/util/Map;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;JLjava/util/Map;)V
    .registers 7
    .parameter "startView"
    .parameter "endView"
    .parameter "startTime"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;",
            "Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p5, customValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;->mStartView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    .line 41
    iput-object p2, p0, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;->mEndView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    .line 42
    iput-wide p3, p0, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;->mStartTime:J

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;->mCustomValues:Ljava/util/HashMap;

    .line 44
    return-void
.end method


# virtual methods
.method public getCustomValues()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;->mCustomValues:Ljava/util/HashMap;

    return-object v0
.end method

.method public getEndView()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;->mEndView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public getStartTimeMsec()J
    .registers 3

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;->mStartTime:J

    return-wide v0
.end method

.method public getStartView()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;->mStartView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method
