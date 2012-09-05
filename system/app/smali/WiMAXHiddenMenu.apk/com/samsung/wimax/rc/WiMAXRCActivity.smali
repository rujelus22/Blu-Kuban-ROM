.class public Lcom/samsung/wimax/rc/WiMAXRCActivity;
.super Landroid/app/Activity;
.source "WiMAXRCActivity.java"


# static fields
.field public static final EXTRA_NEW_CINR:Ljava/lang/String; = "CINRValue"

.field public static final EXTRA_NEW_RSSI:Ljava/lang/String; = "RSSIValue"

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "com.android.samsung.wimax.RSSI_CHANGED"

.field private static final TAG:Ljava/lang/String; = "WiMAXRCActivity"


# instance fields
.field mIntentFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

.field private mWimaxStatus:I

.field private sCinr:Ljava/lang/String;

.field private sRssi:Ljava/lang/String;

.field private showRssi:Z

.field private start:Landroid/widget/Button;

.field private startButtonListener:Landroid/view/View$OnClickListener;

.field private stop:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity;->showRssi:Z

    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 71
    new-instance v0, Lcom/samsung/wimax/rc/WiMAXRCActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/rc/WiMAXRCActivity$2;-><init>(Lcom/samsung/wimax/rc/WiMAXRCActivity;)V

    iput-object v0, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity;->startButtonListener:Landroid/view/View$OnClickListener;

    .line 110
    new-instance v0, Lcom/samsung/wimax/rc/WiMAXRCActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/rc/WiMAXRCActivity$3;-><init>(Lcom/samsung/wimax/rc/WiMAXRCActivity;)V

    iput-object v0, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/wimax/rc/WiMAXRCActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity;->showRssi:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/wimax/rc/WiMAXRCActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity;->sRssi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/wimax/rc/WiMAXRCActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity;->sRssi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/wimax/rc/WiMAXRCActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity;->sCinr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/wimax/rc/WiMAXRCActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity;->sCinr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/wimax/rc/WiMAXRCActivity;)Landroid/net/fourG/wimax/Wimax4GManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/wimax/rc/WiMAXRCActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity;->mWimaxStatus:I

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/wimax/rc/WiMAXRCActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity;->mWimaxStatus:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/wimax/rc/WiMAXRCActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity;->start:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/wimax/rc/WiMAXRCActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity;->stop:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->setContentView(I)V

    .line 44
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 46
    iget-object v0, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    const v0, 0x7f080127

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity;->start:Landroid/widget/Button;

    .line 50
    iget-object v0, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity;->start:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity;->startButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v0, 0x7f080128

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity;->stop:Landroid/widget/Button;

    .line 53
    iget-object v0, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity;->stop:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/wimax/rc/WiMAXRCActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/wimax/rc/WiMAXRCActivity$1;-><init>(Lcom/samsung/wimax/rc/WiMAXRCActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 135
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 107
    iget-object v0, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 101
    iget-object v0, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/samsung/wimax/rc/WiMAXRCActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/wimax/rc/WiMAXRCActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    return-void
.end method
