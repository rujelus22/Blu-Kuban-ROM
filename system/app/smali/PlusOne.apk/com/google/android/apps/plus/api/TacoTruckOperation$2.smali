.class Lcom/google/android/apps/plus/api/TacoTruckOperation$2;
.super Ljava/lang/Object;
.source "TacoTruckOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/api/TacoTruckOperation;->sendFingerprintMismatch(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/api/TacoTruckOperation;

.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/api/TacoTruckOperation;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1985
    iput-object p1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation$2;->this$0:Lcom/google/android/apps/plus/api/TacoTruckOperation;

    iput-object p2, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation$2;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1991
    iget-object v0, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/TacoTruckOperation$2;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PHOTOS_SURPRISE_CAID:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordSystemAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1993
    return-void
.end method
