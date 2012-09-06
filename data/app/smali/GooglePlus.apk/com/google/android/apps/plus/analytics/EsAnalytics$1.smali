.class final Lcom/google/android/apps/plus/analytics/EsAnalytics$1;
.super Ljava/lang/Object;
.source "EsAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/analytics/EsAnalytics;->postRecordEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic val$action:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

.field final synthetic val$analytics:Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/apps/plus/analytics/EsAnalytics$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/apps/plus/analytics/EsAnalytics$1;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iput-object p3, p0, Lcom/google/android/apps/plus/analytics/EsAnalytics$1;->val$analytics:Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    iput-object p4, p0, Lcom/google/android/apps/plus/analytics/EsAnalytics$1;->val$action:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/apps/plus/analytics/EsAnalytics$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/analytics/EsAnalytics$1;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/analytics/EsAnalytics$1;->val$analytics:Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    iget-object v3, p0, Lcom/google/android/apps/plus/analytics/EsAnalytics$1;->val$action:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)J

    .line 102
    return-void
.end method
