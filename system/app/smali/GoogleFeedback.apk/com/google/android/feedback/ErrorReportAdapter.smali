.class public Lcom/google/android/feedback/ErrorReportAdapter;
.super Landroid/widget/BaseAdapter;
.source "ErrorReportAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/feedback/ErrorReportAdapter$Row;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/feedback/ErrorReportAdapter$Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/feedback/ExtendedErrorReport;)V
    .registers 3
    .parameter "context"
    .parameter "report"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mContext:Landroid/content/Context;

    .line 169
    invoke-direct {p0, p2}, Lcom/google/android/feedback/ErrorReportAdapter;->buildRows(Lcom/google/android/feedback/ExtendedErrorReport;)V

    .line 170
    return-void
.end method

.method private addRow(Ljava/lang/Object;Ljava/lang/String;I)V
    .registers 10
    .parameter "report"
    .parameter "fieldName"
    .parameter "labelResId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 437
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;I)V

    .line 438
    return-void
.end method

.method private addRow(Ljava/lang/Object;Ljava/lang/String;II)V
    .registers 11
    .parameter "report"
    .parameter "fieldName"
    .parameter "labelResId"
    .parameter "convertType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 445
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;I)V

    .line 446
    return-void
.end method

.method private addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V
    .registers 11
    .parameter "report"
    .parameter "fieldName"
    .parameter "labelResId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 453
    .local p4, viewerActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;I)V

    .line 454
    return-void
.end method

.method private addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;I)V
    .registers 14
    .parameter "report"
    .parameter "fieldName"
    .parameter "labelResId"
    .parameter
    .parameter "convertType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 458
    .local p4, viewerActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 459
    .local v6, c:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-virtual {v6, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 461
    .local v3, field:Ljava/lang/reflect/Field;
    iget-object v7, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mRows:Ljava/util/List;

    new-instance v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;

    move v1, p3

    move-object v2, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/feedback/ErrorReportAdapter$Row;-><init>(ILjava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Class;I)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    return-void
.end method

.method private addSectionHeader(I)V
    .registers 4
    .parameter "headerResId"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mRows:Ljava/util/List;

    new-instance v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;

    invoke-direct {v1, p1}, Lcom/google/android/feedback/ErrorReportAdapter$Row;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    return-void
.end method

.method private buildRows(Lcom/google/android/feedback/ExtendedErrorReport;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    const v4, 0x7f060016

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mRows:Ljava/util/List;

    .line 319
    const-string v0, "type"

    const v1, 0x7f06002a

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;II)V

    .line 320
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->description:Ljava/lang/String;

    if-eqz v0, :cond_27

    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_27

    .line 321
    const-string v0, "description"

    const v1, 0x7f060038

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 323
    :cond_27
    const-string v0, "packageName"

    const v1, 0x7f06002b

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 324
    const-string v0, "packageVersion"

    const v1, 0x7f060028

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 325
    const-string v0, "packageVersionName"

    const v1, 0x7f060029

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 326
    const-string v0, "installerPackageName"

    const v1, 0x7f06002c

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 327
    const-string v0, "processName"

    const v1, 0x7f06002d

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 328
    const-string v0, "time"

    const v1, 0x7f06002e

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;II)V

    .line 329
    const-string v0, "systemApp"

    const v1, 0x7f060047

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;II)V

    .line 331
    const v0, 0x7f060027

    invoke-direct {p0, v0}, Lcom/google/android/feedback/ErrorReportAdapter;->addSectionHeader(I)V

    .line 332
    const-string v0, "device"

    const v1, 0x7f060039

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 333
    const-string v0, "buildId"

    const v1, 0x7f06003a

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 334
    const-string v0, "buildType"

    const v1, 0x7f06003b

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 335
    const-string v0, "buildFingerprint"

    const v1, 0x7f060056

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 336
    const-string v0, "model"

    const v1, 0x7f06003c

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 337
    const-string v0, "product"

    const v1, 0x7f06003d

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 338
    const-string v0, "sdk_int"

    const v1, 0x7f06003e

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 339
    const-string v0, "release"

    const v1, 0x7f06003f

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 340
    const-string v0, "incremental"

    const v1, 0x7f060040

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 341
    const-string v0, "codename"

    const v1, 0x7f060041

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 342
    const-string v0, "board"

    const v1, 0x7f060042

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 343
    const-string v0, "brand"

    const v1, 0x7f060043

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 345
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->account:Ljava/lang/String;

    if-eqz v0, :cond_db

    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->account:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_db

    .line 346
    const-string v0, "account"

    const v1, 0x7f06001d

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 349
    :cond_db
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->installedPackages:Ljava/util/List;

    if-eqz v0, :cond_f1

    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->installedPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f1

    .line 350
    const-string v0, "installedPackages"

    const v1, 0x7f060044

    const-class v2, Lcom/google/android/feedback/ShowStringListActivity;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 353
    :cond_f1
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->runningApplications:Ljava/util/List;

    if-eqz v0, :cond_107

    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->runningApplications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_107

    .line 354
    const-string v0, "runningApplications"

    const v1, 0x7f060045

    const-class v2, Lcom/google/android/feedback/ShowStringListActivity;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 357
    :cond_107
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->systemLog:Ljava/lang/String;

    if-eqz v0, :cond_115

    .line 358
    const-string v0, "systemLog"

    const v1, 0x7f060046

    const-class v2, Lcom/google/android/feedback/ShowTextActivity;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 360
    :cond_115
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->eventLog:Ljava/lang/String;

    if-eqz v0, :cond_123

    .line 361
    const-string v0, "eventLog"

    const v1, 0x7f060048

    const-class v2, Lcom/google/android/feedback/ShowTextActivity;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 363
    :cond_123
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v0, :cond_16b

    .line 364
    const v0, 0x7f060024

    invoke-direct {p0, v0}, Lcom/google/android/feedback/ErrorReportAdapter;->addSectionHeader(I)V

    .line 365
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    const-string v1, "exceptionClassName"

    const v2, 0x7f06002f

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 367
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    const-string v1, "throwFileName"

    const v2, 0x7f060030

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 369
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    const-string v1, "throwClassName"

    const v2, 0x7f060031

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 371
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    const-string v1, "throwMethodName"

    const v2, 0x7f060032

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 373
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    const-string v1, "throwLineNumber"

    const v2, 0x7f060033

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 375
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    const-string v1, "stackTrace"

    const v2, 0x7f060034

    const-class v3, Lcom/google/android/feedback/ShowTextActivity;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 379
    :cond_16b
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    if-eqz v0, :cond_1a9

    .line 380
    const v0, 0x7f060026

    invoke-direct {p0, v0}, Lcom/google/android/feedback/ErrorReportAdapter;->addSectionHeader(I)V

    .line 381
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    if-eqz v0, :cond_185

    .line 382
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    const-string v1, "activity"

    const v2, 0x7f060035

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 384
    :cond_185
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    const-string v1, "cause"

    const v2, 0x7f060036

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 385
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    const-string v1, "info"

    const v2, 0x7f060037

    const-class v3, Lcom/google/android/feedback/ShowTextActivity;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 386
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->anrStackTraces:Ljava/lang/String;

    if-eqz v0, :cond_1a9

    .line 387
    const-string v0, "anrStackTraces"

    const v1, 0x7f060049

    const-class v2, Lcom/google/android/feedback/ShowTextActivity;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 392
    :cond_1a9
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    if-eqz v0, :cond_1e0

    .line 393
    const v0, 0x7f06004a

    invoke-direct {p0, v0}, Lcom/google/android/feedback/ErrorReportAdapter;->addSectionHeader(I)V

    .line 394
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    const-string v1, "usagePercent"

    const v2, 0x7f06004b

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 395
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    const-string v1, "durationMicros"

    const v2, 0x7f06004c

    const/4 v3, 0x3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;II)V

    .line 397
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    const-string v1, "usageDetails"

    const v2, 0x7f06004d

    const-class v3, Lcom/google/android/feedback/ShowTextActivity;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 399
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    const-string v1, "checkinDetails"

    const v2, 0x7f06004e

    const-class v3, Lcom/google/android/feedback/ShowTextActivity;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 403
    :cond_1e0
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    if-eqz v0, :cond_201

    .line 404
    const v0, 0x7f060053

    invoke-direct {p0, v0}, Lcom/google/android/feedback/ErrorReportAdapter;->addSectionHeader(I)V

    .line 405
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    const-string v1, "durationMillis"

    const v2, 0x7f060054

    const/4 v3, 0x4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;II)V

    .line 407
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    const-string v1, "serviceDetails"

    const v2, 0x7f060055

    const-class v3, Lcom/google/android/feedback/ShowTextActivity;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 411
    :cond_201
    const v0, 0x7f06001f

    invoke-direct {p0, v0}, Lcom/google/android/feedback/ErrorReportAdapter;->addSectionHeader(I)V

    .line 412
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->networkName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_217

    .line 413
    const-string v0, "networkName"

    const v1, 0x7f060020

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 415
    :cond_217
    const-string v0, "phoneType"

    const v1, 0x7f060021

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;II)V

    .line 416
    const-string v0, "networkType"

    const v1, 0x7f060022

    const/4 v2, 0x6

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;II)V

    .line 419
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->screenshot:Ljava/lang/String;

    if-eqz v0, :cond_235

    .line 420
    invoke-direct {p0, v4}, Lcom/google/android/feedback/ErrorReportAdapter;->addSectionHeader(I)V

    .line 421
    const-string v0, "screenshotBytes"

    invoke-direct {p0, p1, v0, v4}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 423
    :cond_235
    return-void
.end method

.method private formatElapsedTime(D)Ljava/lang/String;
    .registers 16
    .parameter "millis"

    .prologue
    const/4 v12, 0x3

    const v7, 0x15180

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 485
    .local v3, sb:Ljava/lang/StringBuilder;
    const-wide v5, 0x408f400000000000L

    div-double v5, p1, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v4, v5

    .line 487
    .local v4, seconds:I
    const/4 v0, 0x0

    .local v0, days:I
    const/4 v1, 0x0

    .local v1, hours:I
    const/4 v2, 0x0

    .line 488
    .local v2, minutes:I
    if-le v4, v7, :cond_22

    .line 489
    div-int v0, v4, v7

    .line 490
    mul-int v5, v0, v7

    sub-int/2addr v4, v5

    .line 492
    :cond_22
    const/16 v5, 0xe10

    if-le v4, v5, :cond_2b

    .line 493
    div-int/lit16 v1, v4, 0xe10

    .line 494
    mul-int/lit16 v5, v1, 0xe10

    sub-int/2addr v4, v5

    .line 496
    :cond_2b
    const/16 v5, 0x3c

    if-le v4, v5, :cond_34

    .line 497
    div-int/lit8 v2, v4, 0x3c

    .line 498
    mul-int/lit8 v5, v2, 0x3c

    sub-int/2addr v4, v5

    .line 500
    :cond_34
    if-lez v0, :cond_62

    .line 501
    iget-object v5, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f06004f

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    :goto_5d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 503
    :cond_62
    if-lez v1, :cond_85

    .line 504
    iget-object v5, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f060050

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5d

    .line 505
    :cond_85
    if-lez v2, :cond_a2

    .line 506
    iget-object v5, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f060051

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5d

    .line 508
    :cond_a2
    iget-object v5, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f060052

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5d
.end method

.method private formatNetworkData(ILjava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 517
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 518
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v3, :cond_54

    aget-object v4, v2, v1

    .line 520
    :try_start_d
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 522
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_53} :catch_55
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_53} :catch_6a

    move-result-object v0

    .line 530
    :cond_54
    :goto_54
    return-object v0

    .line 524
    :catch_55
    move-exception v0

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_54

    .line 526
    :catch_6a
    move-exception v0

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_54

    .line 518
    :cond_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mRows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 185
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 200
    iget-object v0, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mRows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;

    .line 202
    iget-object v1, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 207
    invoke-virtual {v0}, Lcom/google/android/feedback/ErrorReportAdapter$Row;->isHeader()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 208
    if-eqz p2, :cond_24

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080016

    if-eq v2, v3, :cond_1b6

    .line 209
    :cond_24
    const v2, 0x7f030005

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_2b
    move-object v1, v2

    .line 211
    check-cast v1, Landroid/widget/TextView;

    .line 212
    iget v0, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->labelResId:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 309
    :goto_33
    return-object v2

    .line 217
    :cond_34
    invoke-virtual {v0}, Lcom/google/android/feedback/ErrorReportAdapter$Row;->isExpandable()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 218
    if-eqz p2, :cond_45

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080004

    if-eq v2, v3, :cond_4c

    .line 219
    :cond_45
    const v2, 0x7f030001

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 231
    :cond_4c
    :goto_4c
    invoke-virtual {v0}, Lcom/google/android/feedback/ErrorReportAdapter$Row;->isImageView()Z

    move-result v1

    if-nez v1, :cond_a0

    .line 232
    const v1, 0x7f080005

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 233
    iget v2, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->labelResId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 242
    :goto_60
    iget-object v1, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->viewerActivity:Ljava/lang/Class;

    if-nez v1, :cond_72

    .line 243
    const v1, 0x7f080013

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 245
    :try_start_6d
    iget v2, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->convertType:I
    :try_end_6f
    .catch Ljava/lang/IllegalAccessException; {:try_start_6d .. :try_end_6f} :catch_d4

    packed-switch v2, :pswitch_data_1ba

    :cond_72
    :goto_72
    move-object v2, p2

    .line 309
    goto :goto_33

    .line 221
    :cond_74
    invoke-virtual {v0}, Lcom/google/android/feedback/ErrorReportAdapter$Row;->isImageView()Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 222
    if-eqz p2, :cond_85

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080014

    if-eq v2, v3, :cond_4c

    .line 223
    :cond_85
    const v2, 0x7f030004

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_4c

    .line 226
    :cond_8d
    if-eqz p2, :cond_98

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080012

    if-eq v2, v3, :cond_4c

    .line 227
    :cond_98
    const v2, 0x7f030003

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_4c

    .line 235
    :cond_a0
    const v1, 0x7f080015

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 236
    iget-object v2, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->imageBytes:[B

    iget-object v3, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->imageBytes:[B

    array-length v3, v3

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_60

    .line 247
    :pswitch_b6
    :try_start_b6
    iget-object v2, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 248
    iget-object v2, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v0, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->report:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_d3
    .catch Ljava/lang/IllegalAccessException; {:try_start_b6 .. :try_end_d3} :catch_d4

    goto :goto_72

    .line 304
    :catch_d4
    move-exception v0

    .line 305
    const-string v1, "ErrorReportAdapter"

    const-string v2, "failed to obtain field value"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_72

    .line 249
    :cond_dd
    :try_start_dd
    iget-object v2, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 250
    iget-object v2, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v0, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->report:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_72

    .line 251
    :cond_fa
    iget-object v2, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 252
    iget-object v2, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v0, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->report:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_72

    .line 257
    :pswitch_119
    iget-object v2, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v0, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->report:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    .line 258
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 259
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    .line 260
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_72

    .line 264
    :pswitch_134
    iget-object v2, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v0, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->report:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 265
    packed-switch v0, :pswitch_data_1cc

    :pswitch_13f
    goto/16 :goto_72

    .line 270
    :pswitch_141
    const v0, 0x7f060024

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_72

    .line 267
    :pswitch_149
    const v0, 0x7f060026

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_72

    .line 273
    :pswitch_151
    const v0, 0x7f06004a

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_72

    .line 276
    :pswitch_159
    const v0, 0x7f060053

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_72

    .line 279
    :pswitch_161
    const v0, 0x7f060025

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_72

    .line 285
    :pswitch_169
    iget-object v2, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v0, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->report:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    .line 286
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-double v2, v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/feedback/ErrorReportAdapter;->formatElapsedTime(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_72

    .line 290
    :pswitch_17e
    iget-object v2, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v0, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->report:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    .line 291
    long-to-double v2, v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/feedback/ErrorReportAdapter;->formatElapsedTime(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_72

    .line 295
    :pswitch_190
    iget-object v2, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v0, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->report:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 296
    const-string v2, "NETWORK_TYPE_"

    invoke-direct {p0, v0, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->formatNetworkData(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_72

    .line 300
    :pswitch_1a3
    iget-object v2, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v0, v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;->report:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 301
    const-string v2, "PHONE_TYPE_"

    invoke-direct {p0, v0, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->formatNetworkData(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1b4
    .catch Ljava/lang/IllegalAccessException; {:try_start_dd .. :try_end_1b4} :catch_d4

    goto/16 :goto_72

    :cond_1b6
    move-object v2, p2

    goto/16 :goto_2b

    .line 245
    nop

    :pswitch_data_1ba
    .packed-switch 0x0
        :pswitch_b6
        :pswitch_119
        :pswitch_134
        :pswitch_169
        :pswitch_17e
        :pswitch_1a3
        :pswitch_190
    .end packed-switch

    .line 265
    :pswitch_data_1cc
    .packed-switch 0x1
        :pswitch_141
        :pswitch_149
        :pswitch_151
        :pswitch_13f
        :pswitch_159
        :pswitch_13f
        :pswitch_13f
        :pswitch_13f
        :pswitch_13f
        :pswitch_13f
        :pswitch_161
    .end packed-switch
.end method

.method public isEnabled(I)Z
    .registers 4
    .parameter "position"

    .prologue
    .line 195
    iget-object v1, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mRows:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;

    .line 196
    .local v0, row:Lcom/google/android/feedback/ErrorReportAdapter$Row;
    invoke-virtual {v0}, Lcom/google/android/feedback/ErrorReportAdapter$Row;->isHeader()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public onListItemClick(I)V
    .registers 6
    .parameter "position"

    .prologue
    .line 468
    iget-object v2, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mRows:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;

    .line 470
    .local v1, row:Lcom/google/android/feedback/ErrorReportAdapter$Row;
    invoke-virtual {v1}, Lcom/google/android/feedback/ErrorReportAdapter$Row;->isExpandable()Z

    move-result v2

    if-nez v2, :cond_f

    .line 477
    :goto_e
    return-void

    .line 474
    :cond_f
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;->viewerActivity:Ljava/lang/Class;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 475
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "feedback.FIELD_NAME"

    iget-object v3, v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    iget-object v2, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_e
.end method
