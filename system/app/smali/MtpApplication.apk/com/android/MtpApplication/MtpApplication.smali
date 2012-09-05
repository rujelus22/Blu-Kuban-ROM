.class public Lcom/android/MtpApplication/MtpApplication;
.super Landroid/app/Activity;
.source "MtpApplication.java"


# static fields
.field private static ANIMATION_STATUS:I

.field static isSynchronizing:Z

.field static mtprunningStatus:Z

.field public static tc:Landroid/mtp/MTPJNIInterface;


# instance fields
.field private DESTROY_MTP:Z

.field private animImg:Landroid/widget/ImageView;

.field cr:Landroid/content/ContentResolver;

.field ignoreUserActivity:Z

.field isBtPopUpDisplayed:Z

.field mAlertDialog:Landroid/app/AlertDialog;

.field final mAnimationHandler:Landroid/os/Handler;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mPokeLockToken:Landroid/os/IBinder;

.field private final mTimeClickReceiver:Landroid/content/BroadcastReceiver;

.field mstartAnimator:Ljava/lang/Runnable;

.field mtp_image_initializing_or_connected:[I

.field private textView:Landroid/widget/TextView;

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 45
    sput-boolean v1, Lcom/android/MtpApplication/MtpApplication;->mtprunningStatus:Z

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/android/MtpApplication/MtpApplication;->tc:Landroid/mtp/MTPJNIInterface;

    .line 67
    sput v1, Lcom/android/MtpApplication/MtpApplication;->ANIMATION_STATUS:I

    .line 88
    sput-boolean v1, Lcom/android/MtpApplication/MtpApplication;->isSynchronizing:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    iput-object v1, p0, Lcom/android/MtpApplication/MtpApplication;->cr:Landroid/content/ContentResolver;

    .line 73
    iput-object p0, p0, Lcom/android/MtpApplication/MtpApplication;->mContext:Landroid/content/Context;

    .line 74
    iput-boolean v0, p0, Lcom/android/MtpApplication/MtpApplication;->DESTROY_MTP:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/MtpApplication/MtpApplication;->isBtPopUpDisplayed:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/MtpApplication/MtpApplication;->ignoreUserActivity:Z

    .line 77
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/MtpApplication/MtpApplication;->mPokeLockToken:Landroid/os/IBinder;

    .line 84
    iput-object v1, p0, Lcom/android/MtpApplication/MtpApplication;->wl:Landroid/os/PowerManager$WakeLock;

    .line 86
    iput-object v1, p0, Lcom/android/MtpApplication/MtpApplication;->mAlertDialog:Landroid/app/AlertDialog;

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/MtpApplication/MtpApplication;->mAnimationHandler:Landroid/os/Handler;

    .line 124
    new-instance v0, Lcom/android/MtpApplication/MtpApplication$1;

    invoke-direct {v0, p0}, Lcom/android/MtpApplication/MtpApplication$1;-><init>(Lcom/android/MtpApplication/MtpApplication;)V

    iput-object v0, p0, Lcom/android/MtpApplication/MtpApplication;->mstartAnimator:Ljava/lang/Runnable;

    .line 138
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_40

    iput-object v0, p0, Lcom/android/MtpApplication/MtpApplication;->mtp_image_initializing_or_connected:[I

    .line 164
    new-instance v0, Lcom/android/MtpApplication/MtpApplication$2;

    invoke-direct {v0, p0}, Lcom/android/MtpApplication/MtpApplication$2;-><init>(Lcom/android/MtpApplication/MtpApplication;)V

    iput-object v0, p0, Lcom/android/MtpApplication/MtpApplication;->mHandler:Landroid/os/Handler;

    .line 226
    new-instance v0, Lcom/android/MtpApplication/MtpApplication$3;

    invoke-direct {v0, p0}, Lcom/android/MtpApplication/MtpApplication$3;-><init>(Lcom/android/MtpApplication/MtpApplication;)V

    iput-object v0, p0, Lcom/android/MtpApplication/MtpApplication;->mTimeClickReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 138
    nop

    :array_40
    .array-data 0x4
        0x0t 0x0t 0x2t 0x7ft
        0x1t 0x0t 0x2t 0x7ft
        0x2t 0x0t 0x2t 0x7ft
        0x3t 0x0t 0x2t 0x7ft
        0x4t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 43
    sget v0, Lcom/android/MtpApplication/MtpApplication;->ANIMATION_STATUS:I

    return v0
.end method

.method static synthetic access$002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    sput p0, Lcom/android/MtpApplication/MtpApplication;->ANIMATION_STATUS:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/MtpApplication/MtpApplication;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/MtpApplication/MtpApplication;->startSearchView(I)V

    return-void
.end method

.method private registerBroadCastRec()V
    .registers 4

    .prologue
    .line 112
    const-string v1, "MTPAPP"

    const-string v2, "< MTP > Registering BroadCast receiver :::::"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 114
    .local v0, lIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.MTP.NOTIFICATION_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "com.android.END_MTP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/android/MtpApplication/MtpApplication;->mTimeClickReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/MtpApplication/MtpApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    return-void
.end method

.method private setAnimationImage(I)V
    .registers 4
    .parameter "i"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/MtpApplication/MtpApplication;->animImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/MtpApplication/MtpApplication;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 156
    :cond_a
    :goto_a
    return-void

    .line 155
    :cond_b
    iget-object v0, p0, Lcom/android/MtpApplication/MtpApplication;->animImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/MtpApplication/MtpApplication;->mtp_image_initializing_or_connected:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_a
.end method

.method private setMtpAnimationStatus()V
    .registers 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/MtpApplication/MtpApplication;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/MtpApplication/MtpApplication;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 161
    :cond_a
    :goto_a
    return-void

    .line 160
    :cond_b
    iget-object v0, p0, Lcom/android/MtpApplication/MtpApplication;->textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/MtpApplication/MtpApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a
.end method

.method private startSearchView(I)V
    .registers 6
    .parameter "i"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/MtpApplication/MtpApplication;->animImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/MtpApplication/MtpApplication;->DESTROY_MTP:Z

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lcom/android/MtpApplication/MtpApplication;->cr:Landroid/content/ContentResolver;

    if-nez v0, :cond_15

    .line 142
    :cond_d
    const-string v0, "MTPAPP"

    const-string v1, "animImg object is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_14
    return-void

    .line 145
    :cond_15
    invoke-direct {p0, p1}, Lcom/android/MtpApplication/MtpApplication;->setAnimationImage(I)V

    .line 146
    invoke-direct {p0}, Lcom/android/MtpApplication/MtpApplication;->setMtpAnimationStatus()V

    .line 148
    sget v0, Lcom/android/MtpApplication/MtpApplication;->ANIMATION_STATUS:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/MtpApplication/MtpApplication;->ANIMATION_STATUS:I

    .line 149
    iget-object v0, p0, Lcom/android/MtpApplication/MtpApplication;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/MtpApplication/MtpApplication;->mstartAnimator:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_14
.end method


# virtual methods
.method disableStatusBar()V
    .registers 4

    .prologue
    .line 176
    const-string v1, "MTPAPP"

    const-string v2, "disableStatusBar(). Status bar disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/MtpApplication/MtpApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 178
    .local v0, sbm:Landroid/app/StatusBarManager;
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 179
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x4

    .line 202
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 203
    const-string v2, "MTPAPP"

    const-string v3, "In onCreate of MTPAPP"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0}, Lcom/android/MtpApplication/MtpApplication;->disableStatusBar()V

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, closeDialogs:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/MtpApplication/MtpApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/MtpApplication/MtpApplication;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 209
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lcom/android/MtpApplication/MtpApplication;->setContentView(I)V

    .line 210
    const/high16 v2, 0x7f05

    invoke-virtual {p0, v2}, Lcom/android/MtpApplication/MtpApplication;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/MtpApplication/MtpApplication;->animImg:Landroid/widget/ImageView;

    .line 211
    const v2, 0x7f050001

    invoke-virtual {p0, v2}, Lcom/android/MtpApplication/MtpApplication;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/MtpApplication/MtpApplication;->textView:Landroid/widget/TextView;

    .line 212
    invoke-virtual {p0}, Lcom/android/MtpApplication/MtpApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/MtpApplication/MtpApplication;->cr:Landroid/content/ContentResolver;

    .line 213
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/MtpApplication/MtpApplication;->startSearchView(I)V

    .line 215
    iget-object v2, p0, Lcom/android/MtpApplication/MtpApplication;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/android/MtpApplication/MtpReceiver;->setHandler(Landroid/os/Handler;)V

    .line 217
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/MtpApplication/MtpApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 218
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "My Tag"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/MtpApplication/MtpApplication;->wl:Landroid/os/PowerManager$WakeLock;

    .line 219
    iget-object v2, p0, Lcom/android/MtpApplication/MtpApplication;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 221
    const-string v2, "MTPAPP"

    const-string v3, "acquired wake lock."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-direct {p0}, Lcom/android/MtpApplication/MtpApplication;->registerBroadCastRec()V

    .line 223
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 93
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/MtpApplication/MtpApplication;->DESTROY_MTP:Z

    .line 94
    iget-object v1, p0, Lcom/android/MtpApplication/MtpApplication;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 95
    const-string v1, "MTPAPP"

    const-string v2, "In destroy, wake lock releaseed, unregistering broadcast receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lcom/android/MtpApplication/MtpApplication;->mTimeClickReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/MtpApplication/MtpApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    const-string v1, "MTPAPP"

    const-string v2, "onDestroy of MtpApplication. Status bar enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, Lcom/android/MtpApplication/MtpApplication;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 99
    .local v0, sbm:Landroid/app/StatusBarManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 100
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 104
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1b

    .line 105
    const-string v0, "MTPAPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_1b
    const/4 v0, 0x1

    return v0
.end method
