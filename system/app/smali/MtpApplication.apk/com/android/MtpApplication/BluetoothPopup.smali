.class public Lcom/android/MtpApplication/BluetoothPopup;
.super Landroid/app/Activity;
.source "BluetoothPopup.java"


# static fields
.field static mHandler:Landroid/os/Handler;


# instance fields
.field private final mStoreAddPopupReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/android/MtpApplication/BluetoothPopup;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Lcom/android/MtpApplication/BluetoothPopup$1;

    invoke-direct {v0, p0}, Lcom/android/MtpApplication/BluetoothPopup$1;-><init>(Lcom/android/MtpApplication/BluetoothPopup;)V

    iput-object v0, p0, Lcom/android/MtpApplication/BluetoothPopup;->mStoreAddPopupReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private displayBluetoothPopup()V
    .registers 6

    .prologue
    .line 76
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 78
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f040002

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f040003

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f040004

    new-instance v4, Lcom/android/MtpApplication/BluetoothPopup$3;

    invoke-direct {v4, p0}, Lcom/android/MtpApplication/BluetoothPopup$3;-><init>(Lcom/android/MtpApplication/BluetoothPopup;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f040005

    new-instance v4, Lcom/android/MtpApplication/BluetoothPopup$2;

    invoke-direct {v4, p0}, Lcom/android/MtpApplication/BluetoothPopup$2;-><init>(Lcom/android/MtpApplication/BluetoothPopup;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 111
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 112
    .local v0, alertDialog:Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/MtpApplication/BluetoothPopup$4;

    invoke-direct {v2, p0}, Lcom/android/MtpApplication/BluetoothPopup$4;-><init>(Lcom/android/MtpApplication/BluetoothPopup;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 117
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 118
    return-void
.end method

.method private registerBroadCastRec()V
    .registers 4

    .prologue
    .line 69
    const-string v1, "BluetoothPopup"

    const-string v2, "Registering broadcast receiver."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    .local v0, lIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/android/MtpApplication/BluetoothPopup;->mStoreAddPopupReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/MtpApplication/BluetoothPopup;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-direct {p0}, Lcom/android/MtpApplication/BluetoothPopup;->registerBroadCastRec()V

    .line 41
    invoke-direct {p0}, Lcom/android/MtpApplication/BluetoothPopup;->displayBluetoothPopup()V

    .line 42
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 46
    iget-object v0, p0, Lcom/android/MtpApplication/BluetoothPopup;->mStoreAddPopupReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/MtpApplication/BluetoothPopup;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 47
    return-void
.end method
