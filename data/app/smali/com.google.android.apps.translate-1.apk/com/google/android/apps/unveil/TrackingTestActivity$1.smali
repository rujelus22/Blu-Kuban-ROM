.class Lcom/google/android/apps/unveil/TrackingTestActivity$1;
.super Ljava/lang/Object;
.source "TrackingTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/TrackingTestActivity;->maybeMakeCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/TrackingTestActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/TrackingTestActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/apps/unveil/TrackingTestActivity$1;->this$0:Lcom/google/android/apps/unveil/TrackingTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 115
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "performance_key"

    iget-object v2, p0, Lcom/google/android/apps/unveil/TrackingTestActivity$1;->this$0:Lcom/google/android/apps/unveil/TrackingTestActivity;

    #getter for: Lcom/google/android/apps/unveil/TrackingTestActivity;->evaluator:Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;
    invoke-static {v2}, Lcom/google/android/apps/unveil/TrackingTestActivity;->access$000(Lcom/google/android/apps/unveil/TrackingTestActivity;)Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->getPerformance()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 116
    const-string v1, "cpu_key"

    iget-object v2, p0, Lcom/google/android/apps/unveil/TrackingTestActivity$1;->this$0:Lcom/google/android/apps/unveil/TrackingTestActivity;

    #getter for: Lcom/google/android/apps/unveil/TrackingTestActivity;->evaluator:Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;
    invoke-static {v2}, Lcom/google/android/apps/unveil/TrackingTestActivity;->access$000(Lcom/google/android/apps/unveil/TrackingTestActivity;)Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->getTimePerFrame()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lcom/google/android/apps/unveil/TrackingTestActivity$1;->this$0:Lcom/google/android/apps/unveil/TrackingTestActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/google/android/apps/unveil/TrackingTestActivity;->setResult(ILandroid/content/Intent;)V

    .line 119
    iget-object v1, p0, Lcom/google/android/apps/unveil/TrackingTestActivity$1;->this$0:Lcom/google/android/apps/unveil/TrackingTestActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/TrackingTestActivity;->finish()V

    .line 120
    return-void
.end method
