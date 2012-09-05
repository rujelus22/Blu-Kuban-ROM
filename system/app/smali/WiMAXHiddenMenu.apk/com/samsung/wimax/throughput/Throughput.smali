.class public Lcom/samsung/wimax/throughput/Throughput;
.super Landroid/app/Activity;
.source "Throughput.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DATA_UNITS:Ljava/lang/String; = " byte"

.field private static final TAG:Ljava/lang/String; = "TP MSG"

.field public static final TIME_UNITS:Ljava/lang/String; = " s"

.field public static final TP_UNITS:Ljava/lang/String; = " Kbps"

.field private static m_bCheckStart:Z

.field private static m_bCheckStop:Z


# instance fields
.field mIntentFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/wimax/throughput/Throughput;->m_bCheckStop:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/wimax/throughput/Throughput;->mIntentFilter:Landroid/content/IntentFilter;

    .line 31
    new-instance v0, Lcom/samsung/wimax/throughput/Throughput$1;

    invoke-direct {v0, p0}, Lcom/samsung/wimax/throughput/Throughput$1;-><init>(Lcom/samsung/wimax/throughput/Throughput;)V

    iput-object v0, p0, Lcom/samsung/wimax/throughput/Throughput;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private CheckWimaxOn()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 114
    const-string v1, "TP MSG"

    const-string v2, "CheckWimaxOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/samsung/wimax/throughput/Throughput;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 116
    const-string v0, "TP MSG"

    const-string v1, "WiMAX modem is ON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, 0x1

    .line 120
    :goto_18
    return v0

    .line 119
    :cond_19
    const-string v1, "Please turn on WiBro !!!!!"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_18
.end method

.method static synthetic access$000(Lcom/samsung/wimax/throughput/Throughput;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/wimax/throughput/Throughput;->handleChange(Landroid/content/Intent;)V

    return-void
.end method

.method private handleChange(Landroid/content/Intent;)V
    .registers 13
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    .line 98
    const-string v7, "android.net.wimax.EXTRA_TIME"

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 99
    .local v2, m_intTime:I
    const-string v7, "android.net.wimax.EXTRA_DATA"

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 100
    .local v3, m_longData:J
    const-string v7, "android.net.wimax.EXTRA_THROUGHPUT"

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 102
    .local v1, m_intTP:I
    const v7, 0x7f08010c

    invoke-virtual {p0, v7}, Lcom/samsung/wimax/throughput/Throughput;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 103
    .local v5, time:Landroid/widget/TextView;
    const v7, 0x7f08010e

    invoke-virtual {p0, v7}, Lcom/samsung/wimax/throughput/Throughput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    .local v0, data:Landroid/widget/TextView;
    const v7, 0x7f080110

    invoke-virtual {p0, v7}, Lcom/samsung/wimax/throughput/Throughput;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 106
    .local v6, tp:Landroid/widget/TextView;
    sget-boolean v7, Lcom/samsung/wimax/throughput/Throughput;->m_bCheckStart:Z

    if-eqz v7, :cond_7e

    sget-boolean v7, Lcom/samsung/wimax/throughput/Throughput;->m_bCheckStop:Z

    if-eqz v7, :cond_7e

    .line 107
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v8, v2, 0x3e8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " s"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " byte"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v8, v1, 0x3e8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Kbps"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_7e
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_72

    .line 95
    :goto_9
    return-void

    .line 67
    :pswitch_a
    const-string v3, "TP MSG"

    const-string v4, "Start pressed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-direct {p0}, Lcom/samsung/wimax/throughput/Throughput;->CheckWimaxOn()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 69
    const-string v3, "Start >>> pressed !!!!!"

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 70
    iget-object v3, p0, Lcom/samsung/wimax/throughput/Throughput;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v3, v6}, Landroid/net/fourG/wimax/Wimax4GManager;->calWiMAXThroughput(Z)V

    .line 72
    :cond_25
    const v3, 0x7f08010c

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/throughput/Throughput;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 73
    .local v1, time:Landroid/widget/TextView;
    const v3, 0x7f08010e

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/throughput/Throughput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    .local v0, data:Landroid/widget/TextView;
    const v3, 0x7f080110

    invoke-virtual {p0, v3}, Lcom/samsung/wimax/throughput/Throughput;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 76
    .local v2, tp:Landroid/widget/TextView;
    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    sput-boolean v6, Lcom/samsung/wimax/throughput/Throughput;->m_bCheckStart:Z

    .line 81
    sput-boolean v5, Lcom/samsung/wimax/throughput/Throughput;->m_bCheckStop:Z

    goto :goto_9

    .line 86
    .end local v0           #data:Landroid/widget/TextView;
    .end local v1           #time:Landroid/widget/TextView;
    .end local v2           #tp:Landroid/widget/TextView;
    :pswitch_54
    const-string v3, "TP MSG"

    const-string v4, "Stop pressed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-direct {p0}, Lcom/samsung/wimax/throughput/Throughput;->CheckWimaxOn()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 88
    iget-object v3, p0, Lcom/samsung/wimax/throughput/Throughput;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v3, v5}, Landroid/net/fourG/wimax/Wimax4GManager;->calWiMAXThroughput(Z)V

    .line 89
    const-string v3, "Stop >>> pressed !!!!!"

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 91
    :cond_6f
    sput-boolean v6, Lcom/samsung/wimax/throughput/Throughput;->m_bCheckStop:Z

    goto :goto_9

    .line 64
    :pswitch_data_72
    .packed-switch 0x7f080109
        :pswitch_a
        :pswitch_54
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v1, 0x7f03001e

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/throughput/Throughput;->setContentView(I)V

    .line 51
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/wimax/throughput/Throughput;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 52
    iget-object v1, p0, Lcom/samsung/wimax/throughput/Throughput;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wimax.WIMAX_DATA_THROUGHPUT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const v1, 0x7f080109

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/throughput/Throughput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 55
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v1, 0x7f08010a

    invoke-virtual {p0, v1}, Lcom/samsung/wimax/throughput/Throughput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 58
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 141
    const-string v0, "TP MSG"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 134
    const-string v0, "TP MSG"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/samsung/wimax/throughput/Throughput;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/wimax/throughput/Throughput;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 127
    const-string v0, "TP MSG"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/samsung/wimax/throughput/Throughput;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/samsung/wimax/throughput/Throughput;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/wimax/throughput/Throughput;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    return-void
.end method
