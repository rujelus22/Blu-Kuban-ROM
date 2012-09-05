.class public Lcom/android/samsungtest/rilsupport/FactoryReset;
.super Landroid/app/Activity;
.source "FactoryReset.java"


# static fields
.field private static mDBOPContentsCount:I

.field private static mExistFileCount:I


# instance fields
.field private CONTENTS_LIST_DB:Ljava/lang/String;

.field private final CONTENTS_LIST_DB_TABLE_NAME:Ljava/lang/String;

.field private DELAY_BEFORE_PHONERESET:J

.field private final DELAY_KILL_ACTIVITY:I

.field private final MINUTES:I

.field private final NOW:I

.field private final TIMER_REPEATING_DELAY:I

.field private mActivityPackageNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDBIsExist:Z

.field private mDialogHandler:Landroid/os/Handler;

.field private mExistContentHandler:Landroid/os/Handler;

.field private mNonExistContentHandler:Landroid/os/Handler;

.field private mProtectFileNameArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowToastHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 84
    sput v0, Lcom/android/samsungtest/rilsupport/FactoryReset;->mExistFileCount:I

    .line 85
    sput v0, Lcom/android/samsungtest/rilsupport/FactoryReset;->mDBOPContentsCount:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/android/samsungtest/rilsupport/FactoryReset;->DELAY_BEFORE_PHONERESET:J

    .line 53
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/samsungtest/rilsupport/FactoryReset;->DELAY_KILL_ACTIVITY:I

    .line 54
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/samsungtest/rilsupport/FactoryReset;->TIMER_REPEATING_DELAY:I

    .line 55
    const v0, 0xea60

    iput v0, p0, Lcom/android/samsungtest/rilsupport/FactoryReset;->MINUTES:I

    .line 56
    iput v2, p0, Lcom/android/samsungtest/rilsupport/FactoryReset;->NOW:I

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/FactoryReset;->mNonExistContentHandler:Landroid/os/Handler;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/FactoryReset;->mExistContentHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/FactoryReset;->mShowToastHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/FactoryReset;->mDialogHandler:Landroid/os/Handler;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/FactoryReset;->mProtectFileNameArray:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/FactoryReset;->mActivityPackageNameList:Ljava/util/ArrayList;

    .line 78
    iput-boolean v2, p0, Lcom/android/samsungtest/rilsupport/FactoryReset;->mDBIsExist:Z

    .line 79
    const-string v0, "/system/csc/contents.db"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/FactoryReset;->CONTENTS_LIST_DB:Ljava/lang/String;

    .line 80
    const-string v0, "contents"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/FactoryReset;->CONTENTS_LIST_DB_TABLE_NAME:Ljava/lang/String;

    return-void
.end method

.method private startFactoryReset()V
    .registers 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/FactoryReset;->phoneReset()V

    .line 191
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/FactoryReset;->setContentView(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/FactoryReset;->powerSavingOff()V

    .line 101
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/FactoryReset;->startFactoryReset()V

    .line 102
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 168
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Abnormal factory reset!\nRestart factory reset plz!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Ok"

    new-instance v2, Lcom/android/samsungtest/rilsupport/FactoryReset$2;

    invoke-direct {v2, p0}, Lcom/android/samsungtest/rilsupport/FactoryReset$2;-><init>(Lcom/android/samsungtest/rilsupport/FactoryReset;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public phoneReset()V
    .registers 5

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/FactoryReset;->powerSavingOn()V

    .line 277
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/FactoryReset;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 278
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/samsungtest/rilsupport/ModemReset;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "FACTORY"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 280
    return-void
.end method

.method public powerSavingOff()V
    .registers 4

    .prologue
    .line 106
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/FactoryReset;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 107
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "FactoryReset"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/FactoryReset;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 110
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/FactoryReset;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_28

    .line 112
    const-string v1, "FactoryReset"

    const-string v2, "wake lock acquire!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/FactoryReset;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 117
    :goto_27
    return-void

    .line 116
    :cond_28
    const-string v1, "FactoryReset"

    const-string v2, "wake lock isHeld!!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method public powerSavingOn()V
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/FactoryReset;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 122
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/FactoryReset;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 124
    :cond_d
    return-void
.end method
