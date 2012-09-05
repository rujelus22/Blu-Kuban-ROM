.class public Lcom/samsung/dmhiddenmenu/WapPushSimulation;
.super Landroid/app/Activity;
.source "WapPushSimulation.java"


# instance fields
.field private mSesId:Landroid/widget/EditText;

.field private mUImode:Landroid/widget/EditText;

.field private simulate:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/dmhiddenmenu/WapPushSimulation;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/samsung/dmhiddenmenu/WapPushSimulation;->sendWapPush()V

    return-void
.end method

.method public static generateWapMsg(II)[B
    .registers 8
    .parameter "ui_mode"
    .parameter "ses_id"

    .prologue
    const/16 v5, 0x11

    .line 51
    const/16 v3, 0x1e

    new-array v1, v3, [B

    fill-array-data v1, :array_34

    .line 56
    .local v1, seg:[B
    const/16 v2, -0x31

    .line 57
    .local v2, ui_mode_mask:B
    aget-byte v3, v1, v5

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v3, v3, 0xcf

    int-to-byte v3, v3

    aput-byte v3, v1, v5

    .line 58
    and-int/lit16 v3, p0, 0xff

    shl-int/lit8 v3, v3, 0x4

    int-to-byte v0, v3

    .line 60
    .local v0, byte17:B
    aget-byte v3, v1, v5

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, v0, 0xff

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v5

    .line 62
    const/16 v3, 0x15

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 63
    const/16 v3, 0x16

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 64
    return-object v1

    .line 51
    :array_34
    .array-data 0x1
        0x1t
        0x6t
        0x3t
        0xc4t
        0xaft
        0x87t
        0xbbt
        0xc2t
        0xc9t
        0xa7t
        0xd3t
        0x65t
        0x52t
        0x13t
        0x56t
        0x26t
        0x2t
        0xf0t
        0x0t
        0x0t
        0x0t
        0x4t
        0xe0t
        0x6t
        0x73t
        0x70t
        0x72t
        0x69t
        0x6et
        0x74t
    .end array-data
.end method

.method private sendWapPush()V
    .registers 8

    .prologue
    .line 37
    iget-object v4, p0, Lcom/samsung/dmhiddenmenu/WapPushSimulation;->mUImode:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, ui:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/dmhiddenmenu/WapPushSimulation;->mSesId:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, ses:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/dmhiddenmenu/WapPushSimulation;->generateWapMsg(II)[B

    move-result-object v1

    .line 40
    .local v1, msg:[B
    invoke-virtual {p0}, Lcom/samsung/dmhiddenmenu/WapPushSimulation;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Broadcasting WAP PUSH message"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, i:Landroid/content/Intent;
    const-string v4, "application/vnd.syncml.notification"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v4, "transactionId"

    const/16 v5, 0xa

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    const-string v4, "pduType"

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    const-string v4, "data"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0, v0}, Lcom/samsung/dmhiddenmenu/WapPushSimulation;->sendBroadcast(Landroid/content/Intent;)V

    .line 48
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/samsung/dmhiddenmenu/WapPushSimulation;->setContentView(I)V

    .line 26
    const v0, 0x7f070058

    invoke-virtual {p0, v0}, Lcom/samsung/dmhiddenmenu/WapPushSimulation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/WapPushSimulation;->mUImode:Landroid/widget/EditText;

    .line 27
    const v0, 0x7f07005a

    invoke-virtual {p0, v0}, Lcom/samsung/dmhiddenmenu/WapPushSimulation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/WapPushSimulation;->mSesId:Landroid/widget/EditText;

    .line 28
    const v0, 0x7f07005b

    invoke-virtual {p0, v0}, Lcom/samsung/dmhiddenmenu/WapPushSimulation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/dmhiddenmenu/WapPushSimulation;->simulate:Landroid/widget/Button;

    .line 29
    iget-object v0, p0, Lcom/samsung/dmhiddenmenu/WapPushSimulation;->simulate:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/dmhiddenmenu/WapPushSimulation$1;

    invoke-direct {v1, p0}, Lcom/samsung/dmhiddenmenu/WapPushSimulation$1;-><init>(Lcom/samsung/dmhiddenmenu/WapPushSimulation;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method
