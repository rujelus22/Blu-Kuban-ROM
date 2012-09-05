.class public Lcom/sdgtl/mediahub/spr/TestConfigSetting;
.super Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Ljava/lang/String;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/Spinner;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/EditText;

.field private p:Ljava/util/ArrayList;

.field private final q:[Ljava/lang/String;

.field private final r:[[Ljava/lang/String;

.field private s:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .registers 9

    const/4 v7, 0x4

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;-><init>()V

    iput v4, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->a:I

    iput v5, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->b:I

    iput v6, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->c:I

    iput v3, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->d:I

    iput v7, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->e:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->f:I

    iput v4, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->g:I

    iput v5, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->h:I

    const-string v0, "Select Carrier"

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->i:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->p:Ljava/util/ArrayList;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Verizon"

    aput-object v1, v0, v4

    const-string v1, "AT&T"

    aput-object v1, v0, v5

    const-string v1, "T-Mobile"

    aput-object v1, v0, v6

    const-string v1, "Sprint"

    aput-object v1, v0, v3

    const-string v1, "US Cellular"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Cell South"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Known or WiFi"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->q:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "310"

    aput-object v2, v1, v4

    const-string v2, "004"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "310"

    aput-object v2, v1, v4

    const-string v2, "150"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "310"

    aput-object v2, v1, v4

    const-string v2, "026"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "310"

    aput-object v2, v1, v4

    const-string v2, "120"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "200"

    aput-object v2, v1, v4

    const-string v2, "006"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "000"

    aput-object v3, v2, v4

    const-string v3, "000"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "000"

    aput-object v3, v2, v4

    const-string v3, "000"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->r:[[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/TestConfigSetting;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->s:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .registers 5

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, ""

    packed-switch p1, :pswitch_data_e6

    move-object v0, v1

    :cond_e
    :goto_e
    return-object v0

    :pswitch_f
    const-string v1, "deviceUid"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v2, :cond_e3

    :try_start_27
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_2a} :catch_9f

    move-result-object v0

    :goto_2b
    if-eqz v0, :cond_73

    if-eqz v0, :cond_37

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    :cond_37
    if-eqz v0, :cond_41

    const-string v2, "12345678"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    :cond_41
    if-eqz v0, :cond_4b

    const-string v2, "004999010640000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    :cond_4b
    if-eqz v0, :cond_55

    const-string v2, "B0000000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    :cond_55
    if-eqz v0, :cond_5f

    const-string v2, "00000000000000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    :cond_5f
    if-eqz v0, :cond_69

    const-string v2, "000000000000000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    :cond_69
    if-eqz v0, :cond_91

    const-string v2, "0000000000000000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    :cond_73
    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_91

    const-string v2, "0000000000000000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->l()Ljava/lang/String;

    move-result-object v0

    const-string v2, "unknown"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    if-nez v1, :cond_a2

    const-string v0, "1002"

    :cond_91
    :goto_91
    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    :catch_9f
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2b

    :cond_a2
    const-string v0, ":"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_91

    :pswitch_ab
    const-string v0, "mcc"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "310"

    goto/16 :goto_e

    :pswitch_b7
    const-string v0, "mnc"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "004"

    goto/16 :goto_e

    :pswitch_c3
    const-string v0, "csc"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "ATT"

    goto/16 :goto_e

    :pswitch_cf
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, "tDevice01"

    goto/16 :goto_e

    :pswitch_d7
    const-string v0, "HTTPCLIENTPOOL_UA"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "stamhub 122/SCH-I800"

    goto/16 :goto_e

    :cond_e3
    move-object v0, v2

    goto/16 :goto_2b

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_f
        :pswitch_ab
        :pswitch_b7
        :pswitch_c3
        :pswitch_cf
        :pswitch_d7
    .end packed-switch
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/TestConfigSetting;I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/TestConfigSetting;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private a()V
    .registers 7

    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->j:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->j:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->j:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->k:Landroid/widget/EditText;

    invoke-direct {p0, v2}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->k:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->k:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->l:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->l:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->l:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f0

    const-string v0, "TMK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    sget-object v0, Lcom/sdgtl/mediahub/spr/au;->c:Lcom/sdgtl/mediahub/spr/au;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/au;->ordinal()I

    move-result v0

    :cond_6e
    :goto_6e
    if-nez v2, :cond_77

    invoke-static {}, Lcom/sdgtl/mediahub/spr/au;->values()[Lcom/sdgtl/mediahub/spr/au;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :cond_77
    if-eqz v3, :cond_e4

    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e4

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->n:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_a1
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->m:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->n:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->n:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->o:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->o:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_c9
    invoke-static {}, Lcom/sdgtl/mediahub/spr/au;->values()[Lcom/sdgtl/mediahub/spr/au;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/au;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6e

    add-int/lit8 v0, v0, 0x1

    :goto_db
    invoke-static {}, Lcom/sdgtl/mediahub/spr/au;->values()[Lcom/sdgtl/mediahub/spr/au;

    move-result-object v4

    array-length v4, v4

    if-lt v0, v4, :cond_c9

    move v2, v1

    goto :goto_6e

    :cond_e4
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->n:Landroid/widget/EditText;

    invoke-direct {p0, v5}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a1

    :cond_ee
    move v0, v1

    goto :goto_db

    :cond_f0
    move v0, v1

    move v2, v1

    goto/16 :goto_6e
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/TestConfigSetting;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/TestConfigSetting;)Landroid/widget/Spinner;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->m:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/TestConfigSetting;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/TestConfigSetting;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/TestConfigSetting;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->n:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/sdgtl/mediahub/spr/TestConfigSetting;)[[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->r:[[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030057

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->setContentView(I)V

    const v0, 0x7f0d012d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c5

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/16 v3, 0x190

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_25
    const v0, 0x7f0d012e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->s:Landroid/widget/CheckBox;

    const v0, 0x7f0d0136

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/sdgtl/mediahub/spr/as;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/as;-><init>(Lcom/sdgtl/mediahub/spr/TestConfigSetting;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d012f

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->j:Landroid/widget/EditText;

    const v0, 0x7f0d0131

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->m:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->m:Landroid/widget/Spinner;

    new-instance v2, Lcom/sdgtl/mediahub/spr/at;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/at;-><init>(Lcom/sdgtl/mediahub/spr/TestConfigSetting;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->q:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_65
    if-lt v0, v3, :cond_cd

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->p:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->m:Landroid/widget/Spinner;

    const-string v3, "Select Carrier"

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->m:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->m:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    const v0, 0x7f0d0130

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->k:Landroid/widget/EditText;

    const v0, 0x7f0d0132

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->l:Landroid/widget/EditText;

    const v0, 0x7f0d0133

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->n:Landroid/widget/EditText;

    const v0, 0x7f0d0135

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->o:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->a()V

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->setResult(I)V

    return-void

    :cond_c5
    const v2, 0x1080011

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_25

    :cond_cd
    aget-object v4, v2, v0

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/TestConfigSetting;->p:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_65
.end method
