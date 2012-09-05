.class public Lcom/android/MtpApplication/StoreAddPopup;
.super Landroid/app/Activity;
.source "StoreAddPopup.java"


# static fields
.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private final mStoreAddPopupReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/android/MtpApplication/StoreAddPopup;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    new-instance v0, Lcom/android/MtpApplication/StoreAddPopup$1;

    invoke-direct {v0, p0}, Lcom/android/MtpApplication/StoreAddPopup$1;-><init>(Lcom/android/MtpApplication/StoreAddPopup;)V

    iput-object v0, p0, Lcom/android/MtpApplication/StoreAddPopup;->mStoreAddPopupReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private registerBroadCastRec()V
    .registers 4

    .prologue
    .line 56
    const-string v1, "StoreAddPopup"

    const-string v2, "Registering broadcast receiver."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    .local v0, lIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/android/MtpApplication/StoreAddPopup;->mStoreAddPopupReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/MtpApplication/StoreAddPopup;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    return-void
.end method


# virtual methods
.method drawPopup()V
    .registers 4

    .prologue
    .line 84
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "SDCARD inserted. Would you like to restart MTP?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f04000e

    new-instance v2, Lcom/android/MtpApplication/StoreAddPopup$3;

    invoke-direct {v2, p0}, Lcom/android/MtpApplication/StoreAddPopup$3;-><init>(Lcom/android/MtpApplication/StoreAddPopup;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f04000f

    new-instance v2, Lcom/android/MtpApplication/StoreAddPopup$2;

    invoke-direct {v2, p0}, Lcom/android/MtpApplication/StoreAddPopup$2;-><init>(Lcom/android/MtpApplication/StoreAddPopup;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 120
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-direct {p0}, Lcom/android/MtpApplication/StoreAddPopup;->registerBroadCastRec()V

    .line 46
    invoke-virtual {p0}, Lcom/android/MtpApplication/StoreAddPopup;->drawPopup()V

    .line 47
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 52
    iget-object v0, p0, Lcom/android/MtpApplication/StoreAddPopup;->mStoreAddPopupReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/MtpApplication/StoreAddPopup;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 53
    return-void
.end method
