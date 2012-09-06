.class Lcom/google/android/apps/translate/HomeActivity$2;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/HomeActivity;->stopCsiTimers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/HomeActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/HomeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/google/android/apps/translate/HomeActivity$2;->this$0:Lcom/google/android/apps/translate/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/apps/translate/HomeActivity$2;->this$0:Lcom/google/android/apps/translate/HomeActivity;

    #calls: Lcom/google/android/apps/translate/HomeActivity;->reportCsiMetrics()V
    invoke-static {v0}, Lcom/google/android/apps/translate/HomeActivity;->access$000(Lcom/google/android/apps/translate/HomeActivity;)V

    .line 208
    iget-object v0, p0, Lcom/google/android/apps/translate/HomeActivity$2;->this$0:Lcom/google/android/apps/translate/HomeActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/translate/HomeActivity;->mInitRun:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/HomeActivity;->access$102(Lcom/google/android/apps/translate/HomeActivity;Z)Z

    .line 209
    return-void
.end method
