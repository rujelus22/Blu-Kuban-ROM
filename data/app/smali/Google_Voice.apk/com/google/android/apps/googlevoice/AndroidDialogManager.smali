.class public Lcom/google/android/apps/googlevoice/AndroidDialogManager;
.super Ljava/lang/Object;
.source "AndroidDialogManager.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/DialogManager;


# instance fields
.field private activity:Landroid/app/Activity;

.field private log:Lcom/google/android/apps/common/log/GLog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/apps/googlevoice/DependencyResolver;)V
    .registers 4
    .parameter "activity"
    .parameter "dependencyResolver"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidDialogManager;->activity:Landroid/app/Activity;

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDialogManager;->log:Lcom/google/android/apps/common/log/GLog;

    .line 23
    return-void
.end method


# virtual methods
.method public showDialog(I)V
    .registers 7
    .parameter "dialogId"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDialogManager;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "showing dialog %d on %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/AndroidDialogManager;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDialogManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->showDialog(I)V

    .line 29
    return-void
.end method
