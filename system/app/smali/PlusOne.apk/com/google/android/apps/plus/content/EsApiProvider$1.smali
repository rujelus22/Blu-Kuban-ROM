.class Lcom/google/android/apps/plus/content/EsApiProvider$1;
.super Ljava/lang/Object;
.source "EsApiProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/content/EsApiProvider;->logSystemEvent(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/content/EsApiProvider;

.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$targetAction:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/content/EsApiProvider;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/google/android/apps/plus/content/EsApiProvider$1;->this$0:Lcom/google/android/apps/plus/content/EsApiProvider;

    iput-object p2, p0, Lcom/google/android/apps/plus/content/EsApiProvider$1;->val$applicationContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/apps/plus/content/EsApiProvider$1;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iput-object p4, p0, Lcom/google/android/apps/plus/content/EsApiProvider$1;->val$targetAction:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/apps/plus/content/EsApiProvider$1;->val$applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/content/EsApiProvider$1;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/content/EsApiProvider$1;->val$targetAction:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordSystemAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 410
    return-void
.end method
