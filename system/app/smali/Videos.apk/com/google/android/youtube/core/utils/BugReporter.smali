.class public Lcom/google/android/youtube/core/utils/BugReporter;
.super Ljava/lang/Object;
.source "BugReporter.java"


# static fields
.field private static final BUG_REPORT_INTENT:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/utils/BugReporter;->BUG_REPORT_INTENT:Landroid/content/Intent;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static isGoogleFeedbackInstalled(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/youtube/core/utils/BugReporter;->BUG_REPORT_INTENT:Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/BugReporter;->isSupportingServiceInstalled(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private static isSupportingServiceInstalled(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 60
    .local v1, manager:Landroid/content/pm/PackageManager;
    const/high16 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 61
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x1

    :goto_11
    return v2

    :cond_12
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public static launchGoogleFeedback(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 39
    new-instance v0, Lcom/google/android/youtube/core/utils/BugReporter$1;

    invoke-direct {v0}, Lcom/google/android/youtube/core/utils/BugReporter$1;-><init>()V

    .line 52
    .local v0, conn:Landroid/content/ServiceConnection;
    sget-object v1, Lcom/google/android/youtube/core/utils/BugReporter;->BUG_REPORT_INTENT:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 53
    return-void
.end method
