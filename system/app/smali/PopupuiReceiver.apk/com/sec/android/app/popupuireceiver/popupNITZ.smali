.class public Lcom/sec/android/app/popupuireceiver/popupNITZ;
.super Landroid/app/Activity;
.source "popupNITZ.java"


# instance fields
.field private MCCvalue:Ljava/lang/String;

.field NITZQUITReceiver2:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    const-string v0, "mccstrcmp"

    iput-object v0, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ;->MCCvalue:Ljava/lang/String;

    .line 129
    new-instance v0, Lcom/sec/android/app/popupuireceiver/popupNITZ$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/popupuireceiver/popupNITZ$3;-><init>(Lcom/sec/android/app/popupuireceiver/popupNITZ;)V

    iput-object v0, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ;->NITZQUITReceiver2:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/popupuireceiver/popupNITZ;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ;->MCCvalue:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/high16 v4, 0x7f03

    invoke-virtual {p0, v4}, Lcom/sec/android/app/popupuireceiver/popupNITZ;->setContentView(I)V

    .line 25
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 26
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v4, "forexit.action.NITZPOPUP"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    iget-object v4, p0, Lcom/sec/android/app/popupuireceiver/popupNITZ;->NITZQUITReceiver2:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/sec/android/app/popupuireceiver/popupNITZ;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0}, Lcom/sec/android/app/popupuireceiver/popupNITZ;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "result"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 31
    .local v3, msg:Ljava/lang/String;
    const-string v4, "PopupuiReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "popupNITZ.java: onCreate() msg: +"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const v4, 0x7f050001

    invoke-virtual {p0, v4}, Lcom/sec/android/app/popupuireceiver/popupNITZ;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 35
    .local v0, btn_confirm:Landroid/widget/Button;
    const v4, 0x7f050002

    invoke-virtual {p0, v4}, Lcom/sec/android/app/popupuireceiver/popupNITZ;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 37
    .local v1, btn_remove:Landroid/widget/Button;
    new-instance v4, Lcom/sec/android/app/popupuireceiver/popupNITZ$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/popupuireceiver/popupNITZ$1;-><init>(Lcom/sec/android/app/popupuireceiver/popupNITZ;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    new-instance v4, Lcom/sec/android/app/popupuireceiver/popupNITZ$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/popupuireceiver/popupNITZ$2;-><init>(Lcom/sec/android/app/popupuireceiver/popupNITZ;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const-string v4, "PopupuiReceiver"

    const-string v5, "popupNITZ.java: onCreate -"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 99
    const-string v0, "PopupuiReceiver"

    const-string v1, "popupNITZ.java: Only onPause +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 106
    const-string v0, "PopupuiReceiver"

    const-string v1, "popupNITZ.java: Only onResume +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method
