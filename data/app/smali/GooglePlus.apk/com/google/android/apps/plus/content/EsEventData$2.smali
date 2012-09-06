.class final Lcom/google/android/apps/plus/content/EsEventData$2;
.super Ljava/lang/Object;
.source "EsEventData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/content/EsEventData;->enableInstantShareInternal(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic val$activeISEventId:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$eventId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/google/android/apps/plus/content/EsEventData$2;->val$activeISEventId:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/apps/plus/content/EsEventData$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/apps/plus/content/EsEventData$2;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iput-object p4, p0, Lcom/google/android/apps/plus/content/EsEventData$2;->val$eventId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/google/android/apps/plus/content/EsEventData$2;->val$activeISEventId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1177
    iget-object v0, p0, Lcom/google/android/apps/plus/content/EsEventData$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/content/EsEventData$2;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->EVENTS_PARTY_MODE_OFF:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordSystemAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1180
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/content/EsEventData$2;->val$eventId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1181
    iget-object v0, p0, Lcom/google/android/apps/plus/content/EsEventData$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/content/EsEventData$2;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->EVENTS_PARTY_MODE_ON:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordSystemAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1184
    :cond_22
    return-void
.end method
