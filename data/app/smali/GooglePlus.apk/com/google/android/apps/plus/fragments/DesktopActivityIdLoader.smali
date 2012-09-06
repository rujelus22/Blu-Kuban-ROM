.class public Lcom/google/android/apps/plus/fragments/DesktopActivityIdLoader;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "DesktopActivityIdLoader.java"


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mDesktopActivityId:Ljava/lang/String;

.field private final mOwnerGaiaId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "desktopActivityId"
    .parameter "ownerGaiaId"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/DesktopActivityIdLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 38
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/DesktopActivityIdLoader;->mDesktopActivityId:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/DesktopActivityIdLoader;->mOwnerGaiaId:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 9

    .prologue
    const/4 v5, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, activityId:Ljava/lang/String;
    new-instance v2, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/DesktopActivityIdLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/DesktopActivityIdLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v2, v3, v4, v1, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 49
    .local v2, op:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/DesktopActivityIdLoader;->mDesktopActivityId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/DesktopActivityIdLoader;->mOwnerGaiaId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getActivityByDesktopId(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 51
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v3

    if-eqz v3, :cond_5b

    .line 52
    const-string v3, "DesktopActivityIdLoader"

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 53
    const-string v3, "DesktopActivityIdLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot resolve desktop activity ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/DesktopActivityIdLoader;->mDesktopActivityId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    :cond_46
    :goto_46
    if-eqz v0, :cond_5a

    .line 66
    new-instance v1, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "activity_id"

    aput-object v4, v3, v6

    invoke-direct {v1, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 68
    .local v1, matrixCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 72
    .end local v1           #matrixCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    :cond_5a
    return-object v1

    .line 56
    :cond_5b
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->hasError()Z

    move-result v3

    if-eqz v3, :cond_92

    .line 57
    const-string v3, "DesktopActivityIdLoader"

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 58
    const-string v3, "DesktopActivityIdLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot resolve  desktop activity ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/DesktopActivityIdLoader;->mDesktopActivityId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getErrorCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 62
    :cond_92
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getActivityId()Ljava/lang/String;

    move-result-object v0

    goto :goto_46
.end method
