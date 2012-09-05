.class public Lcom/sprint/dsa/DiagnosticsNotificationActivity;
.super Landroid/app/Activity;
.source "DiagnosticsNotificationActivity.java"


# static fields
.field private static LED_NOTIFICATION_ID:I = 0x0

.field private static LED_TIME_ON:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"


# instance fields
.field private ledFlashButton:Landroid/widget/Button;

.field private mClearLEDTask:Ljava/lang/Runnable;

.field private mLedStart:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/16 v0, 0x270f

    sput v0, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->LED_NOTIFICATION_ID:I

    .line 24
    const/16 v0, 0xfa0

    sput v0, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->LED_TIME_ON:I

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    new-instance v0, Lcom/sprint/dsa/DiagnosticsNotificationActivity$1;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/DiagnosticsNotificationActivity$1;-><init>(Lcom/sprint/dsa/DiagnosticsNotificationActivity;)V

    iput-object v0, p0, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->mLedStart:Landroid/view/View$OnClickListener;

    .line 119
    new-instance v0, Lcom/sprint/dsa/DiagnosticsNotificationActivity$2;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/DiagnosticsNotificationActivity$2;-><init>(Lcom/sprint/dsa/DiagnosticsNotificationActivity;)V

    iput-object v0, p0, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->mClearLEDTask:Ljava/lang/Runnable;

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/DiagnosticsNotificationActivity;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->ledFlashButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/dsa/DiagnosticsNotificationActivity;IZZ)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->flashLEDLight(IZZ)V

    return-void
.end method

.method static synthetic access$2(Lcom/sprint/dsa/DiagnosticsNotificationActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->clearLED()V

    return-void
.end method

.method private clearLED()V
    .registers 3

    .prologue
    .line 115
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 116
    .local v0, nm:Landroid/app/NotificationManager;
    sget v1, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->LED_NOTIFICATION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 117
    return-void
.end method

.method private flashLEDLight(IZZ)V
    .registers 10
    .parameter "color"
    .parameter "isVibrate"
    .parameter "isSound"

    .prologue
    .line 91
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 92
    .local v0, nm:Landroid/app/NotificationManager;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 96
    .local v1, notify:Landroid/app/Notification;
    if-eqz p1, :cond_1e

    .line 97
    iput p1, v1, Landroid/app/Notification;->ledARGB:I

    .line 98
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 99
    sget v2, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->LED_TIME_ON:I

    iput v2, v1, Landroid/app/Notification;->ledOnMS:I

    .line 100
    const/4 v2, 0x0

    iput v2, v1, Landroid/app/Notification;->ledOffMS:I

    .line 103
    :cond_1e
    if-eqz p2, :cond_26

    .line 104
    iget v2, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 105
    :cond_26
    if-eqz p3, :cond_2e

    .line 106
    iget v2, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 108
    :cond_2e
    sget v2, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->LED_NOTIFICATION_ID:I

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 109
    sget v2, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->LED_NOTIFICATION_ID:I

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 111
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->mClearLEDTask:Ljava/lang/Runnable;

    sget v4, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->LED_TIME_ON:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x3

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->requestWindowFeature(I)Z

    .line 32
    invoke-virtual {p0, v1}, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->requestWindowFeature(I)Z

    .line 34
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->setContentView(I)V

    .line 35
    const v0, 0x7f020014

    invoke-virtual {p0, v1, v0}, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->setFeatureDrawableResource(II)V

    .line 37
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->ledFlashButton:Landroid/widget/Button;

    .line 38
    iget-object v0, p0, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->ledFlashButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/dsa/DiagnosticsNotificationActivity;->mLedStart:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method
