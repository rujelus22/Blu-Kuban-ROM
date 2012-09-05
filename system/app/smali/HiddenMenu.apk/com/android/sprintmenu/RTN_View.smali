.class public Lcom/android/sprintmenu/RTN_View;
.super Landroid/preference/PreferenceActivity;
.source "RTN_View.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private ACTIVATIONDATEPref:Landroid/preference/Preference;

.field private BASEBANDVERPref:Landroid/preference/Preference;

.field private ESNMEIDPref:Landroid/preference/Preference;

.field private HARDVERPref:Landroid/preference/Preference;

.field private HEXAMEIDPref:Landroid/preference/Preference;

.field HW_version_SysProp:Ljava/lang/String;

.field private LIFEBYTEPref:Landroid/preference/Preference;

.field private LIFEBYTETOTALPref:Landroid/preference/Preference;

.field private LIFETIMECALLPref:Landroid/preference/Preference;

.field private LIFETIMETIMERPref:Landroid/preference/Preference;

.field private MOBILENUMBPref:Landroid/preference/Preference;

.field private MSIDPref:Landroid/preference/Preference;

.field private PCBPref:Landroid/preference/Preference;

.field private PRIPref:Landroid/preference/Preference;

.field private PRLVERPref:Landroid/preference/Preference;

.field private PRL_SysProp:Ljava/lang/String;

.field private RECONDITIONEDPref:Landroid/preference/Preference;

.field private SOFTVERPref:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrl:Landroid/preference/Preference;

.field prl_format:Ljava/lang/String;

.field prl_formated_string:Ljava/lang/String;

.field private root:Landroid/preference/PreferenceScreen;

.field string_length:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lcom/android/sprintmenu/RTN_View;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/sprintmenu/RTN_View;->LOG_TAG:Ljava/lang/String;

    .line 69
    const-string v0, "<Not set>"

    sput-object v0, Lcom/android/sprintmenu/RTN_View;->sNotSet:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 74
    iput-object v1, p0, Lcom/android/sprintmenu/RTN_View;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/sprintmenu/RTN_View;->string_length:I

    .line 97
    iput-object v1, p0, Lcom/android/sprintmenu/RTN_View;->PRL_SysProp:Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/android/sprintmenu/RTN_View$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/RTN_View$1;-><init>(Lcom/android/sprintmenu/RTN_View;)V

    iput-object v0, p0, Lcom/android/sprintmenu/RTN_View;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private ConvertDeviceIdtoHexa()V
    .registers 5

    .prologue
    .line 642
    sget-object v2, Lcom/android/sprintmenu/RTN_View;->LOG_TAG:Ljava/lang/String;

    const-string v3, "in ConvertDeviceIdtoHexa"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v2, p0, Lcom/android/sprintmenu/RTN_View;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 646
    .local v1, meid:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 648
    .local v0, len:I
    const/16 v2, 0xb

    if-ne v0, v2, :cond_20

    .line 650
    sget-object v2, Lcom/android/sprintmenu/RTN_View;->LOG_TAG:Ljava/lang/String;

    const-string v3, "it is a ESN NUMBER"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-direct {p0, v1}, Lcom/android/sprintmenu/RTN_View;->convertDecESNtoHexa(Ljava/lang/String;)V

    .line 670
    :goto_1f
    return-void

    .line 655
    :cond_20
    const/16 v2, 0x12

    if-ne v0, v2, :cond_2f

    .line 657
    sget-object v2, Lcom/android/sprintmenu/RTN_View;->LOG_TAG:Ljava/lang/String;

    const-string v3, "it is a MEID"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-direct {p0, v1}, Lcom/android/sprintmenu/RTN_View;->convertDecMEIDtoHexa(Ljava/lang/String;)V

    goto :goto_1f

    .line 663
    :cond_2f
    sget-object v2, Lcom/android/sprintmenu/RTN_View;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error meid is not matching the requirement"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/sprintmenu/RTN_View;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sprintmenu/RTN_View;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/RTN_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/sprintmenu/RTN_View;)Landroid/preference/Preference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/sprintmenu/RTN_View;->ESNMEIDPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/sprintmenu/RTN_View;[B)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/RTN_View;->setLifeTimerCallStatus([B)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/sprintmenu/RTN_View;[B)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/RTN_View;->setLifeByteStatus([B)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/sprintmenu/RTN_View;[B)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/RTN_View;->setReconditionedStatus([B)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/sprintmenu/RTN_View;[B)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/RTN_View;->setActivationDateStatus([B)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/sprintmenu/RTN_View;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/RTN_View;->setMSID(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/sprintmenu/RTN_View;)Landroid/preference/Preference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/sprintmenu/RTN_View;->mPrl:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/sprintmenu/RTN_View;Landroid/preference/Preference;)Landroid/preference/Preference;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/sprintmenu/RTN_View;->mPrl:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/sprintmenu/RTN_View;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/sprintmenu/RTN_View;->PRL_SysProp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/sprintmenu/RTN_View;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/sprintmenu/RTN_View;->PRL_SysProp:Ljava/lang/String;

    return-object p1
.end method

.method private static byteArrayToInt([BI)I
    .registers 5
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 590
    const/4 v0, 0x0

    .line 591
    .local v0, result:I
    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 592
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 593
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 594
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x100

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 596
    return v0
.end method

.method private static byteArrayToLong([BI)J
    .registers 8
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 600
    const-wide/16 v0, 0x0

    .line 601
    .local v0, result:J
    add-int/lit8 v2, p1, 0x0

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 602
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 603
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 604
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    const-wide v4, 0xff000000L

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 605
    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    const-wide v4, 0xff00000000L

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 606
    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    const-wide v4, 0xff0000000000L

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 607
    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    const-wide/high16 v4, 0xff

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 608
    add-int/lit8 v2, p1, 0x7

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    const-wide/high16 v4, -0x100

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 610
    return-wide v0
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 204
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 205
    :cond_8
    sget-object p1, Lcom/android/sprintmenu/RTN_View;->sNotSet:Ljava/lang/String;

    .line 207
    .end local p1
    :cond_a
    return-object p1
.end method

.method private convertDecESNtoHexa(Ljava/lang/String;)V
    .registers 16
    .parameter "esnno"

    .prologue
    const/4 v13, 0x3

    .line 674
    sget-object v11, Lcom/android/sprintmenu/RTN_View;->LOG_TAG:Ljava/lang/String;

    const-string v12, "in convertDecESNtoHexa"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/4 v11, 0x0

    invoke-virtual {p1, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 677
    .local v7, mfcode:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p1, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 679
    .local v9, serialno:Ljava/lang/String;
    sget-object v11, Lcom/android/sprintmenu/RTN_View;->LOG_TAG:Ljava/lang/String;

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    sget-object v11, Lcom/android/sprintmenu/RTN_View;->LOG_TAG:Ljava/lang/String;

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v7}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 687
    .local v8, mvalue:Ljava/lang/Long;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 688
    .local v3, i:J
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    .line 690
    .local v1, hmfcode:Ljava/lang/String;
    sget-object v11, Lcom/android/sprintmenu/RTN_View;->LOG_TAG:Ljava/lang/String;

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    new-instance v10, Ljava/lang/Long;

    invoke-direct {v10, v9}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 696
    .local v10, svalue:Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 697
    .local v5, j:J
    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    .line 698
    .local v2, hserailno:Ljava/lang/String;
    sget-object v11, Lcom/android/sprintmenu/RTN_View;->LOG_TAG:Ljava/lang/String;

    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    sget-object v11, Lcom/android/sprintmenu/RTN_View;->LOG_TAG:Ljava/lang/String;

    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 703
    .local v0, hexaESN:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5a

    .line 705
    const-string v11, "0"

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 709
    :cond_5a
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 711
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    packed-switch v11, :pswitch_data_98

    .line 732
    :goto_65
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 734
    sget-object v11, Lcom/android/sprintmenu/RTN_View;->LOG_TAG:Ljava/lang/String;

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->HEXAMEIDPref:Landroid/preference/Preference;

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 739
    return-void

    .line 714
    :pswitch_74
    const-string v11, "0"

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 715
    goto :goto_65

    .line 717
    :pswitch_7b
    const-string v11, "00"

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 718
    goto :goto_65

    .line 720
    :pswitch_82
    const-string v11, "000"

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 721
    goto :goto_65

    .line 723
    :pswitch_89
    const-string v11, "0000"

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 724
    goto :goto_65

    .line 726
    :pswitch_90
    const-string v11, "00000"

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_65

    .line 711
    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_90
        :pswitch_89
        :pswitch_82
        :pswitch_7b
        :pswitch_74
    .end packed-switch
.end method

.method private convertDecMEIDtoHexa(Ljava/lang/String;)V
    .registers 15
    .parameter "meidno"

    .prologue
    const/16 v12, 0xa

    .line 744
    const/4 v11, 0x0

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 745
    .local v7, meidmfcode:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p1, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 747
    .local v8, meidserailno:Ljava/lang/String;
    sget-object v11, Lcom/android/sprintmenu/RTN_View;->LOG_TAG:Ljava/lang/String;

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    sget-object v11, Lcom/android/sprintmenu/RTN_View;->LOG_TAG:Ljava/lang/String;

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    new-instance v9, Ljava/lang/Long;

    invoke-direct {v9, v7}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 756
    .local v9, mvalue:Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 757
    .local v3, i:J
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    .line 758
    .local v1, hmfcode:Ljava/lang/String;
    sget-object v11, Lcom/android/sprintmenu/RTN_View;->LOG_TAG:Ljava/lang/String;

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    new-instance v10, Ljava/lang/Long;

    invoke-direct {v10, v8}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 763
    .local v10, svalue:Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 764
    .local v5, j:J
    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    .line 765
    .local v2, hserailno:Ljava/lang/String;
    sget-object v11, Lcom/android/sprintmenu/RTN_View;->LOG_TAG:Ljava/lang/String;

    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 773
    .local v0, hexaMEID:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    packed-switch v11, :pswitch_data_bc

    .line 800
    :goto_49
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 802
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    packed-switch v11, :pswitch_data_ce

    .line 822
    :goto_54
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 824
    sget-object v11, Lcom/android/sprintmenu/RTN_View;->LOG_TAG:Ljava/lang/String;

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->HEXAMEIDPref:Landroid/preference/Preference;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 827
    return-void

    .line 776
    :pswitch_67
    const-string v11, "0"

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 777
    goto :goto_49

    .line 779
    :pswitch_6e
    const-string v11, "00"

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 780
    goto :goto_49

    .line 782
    :pswitch_75
    const-string v11, "000"

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 783
    goto :goto_49

    .line 785
    :pswitch_7c
    const-string v11, "0000"

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 786
    goto :goto_49

    .line 788
    :pswitch_83
    const-string v11, "00000"

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 789
    goto :goto_49

    .line 791
    :pswitch_8a
    const-string v11, "000000"

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 792
    goto :goto_49

    .line 794
    :pswitch_91
    const-string v11, "0000000"

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    .line 805
    :pswitch_98
    const-string v11, "0"

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 806
    goto :goto_54

    .line 808
    :pswitch_9f
    const-string v11, "00"

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 809
    goto :goto_54

    .line 811
    :pswitch_a6
    const-string v11, "000"

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 812
    goto :goto_54

    .line 814
    :pswitch_ad
    const-string v11, "0000"

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 815
    goto :goto_54

    .line 817
    :pswitch_b4
    const-string v11, "00000"

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_54

    .line 773
    nop

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_91
        :pswitch_8a
        :pswitch_83
        :pswitch_7c
        :pswitch_75
        :pswitch_6e
        :pswitch_67
    .end packed-switch

    .line 802
    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_b4
        :pswitch_ad
        :pswitch_a6
        :pswitch_9f
        :pswitch_98
    .end packed-switch
.end method

.method private getHwver()Ljava/lang/String;
    .registers 10

    .prologue
    .line 830
    const/4 v3, 0x0

    .line 831
    .local v3, reader:Ljava/io/BufferedReader;
    const-string v1, "Unknown"

    .line 833
    .local v1, hwVer:Ljava/lang/String;
    :try_start_3
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/proc/cpuinfo"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x400

    invoke-direct {v4, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_a8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_11} :catch_90
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_11} :catch_9c

    .line 834
    .end local v3           #reader:Ljava/io/BufferedReader;
    .local v4, reader:Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 835
    .local v6, temp:Ljava/lang/String;
    const/4 v2, 0x0

    .line 836
    .local v2, model:Ljava/lang/String;
    const/4 v5, 0x0

    .line 837
    .local v5, rev:Ljava/lang/String;
    :cond_14
    :goto_14
    :try_start_14
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4c

    .line 838
    const-string v7, "Hardware"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 839
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    .line 840
    :cond_33
    const-string v7, "Revision"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 841
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_14

    .line 844
    :cond_4c
    if-eqz v2, :cond_5f

    .line 845
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 847
    :cond_5f
    if-eqz v5, :cond_7a

    .line 848
    if-eqz v2, :cond_8b

    .line 849
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_79
    .catchall {:try_start_14 .. :try_end_79} :catchall_b1
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_79} :catch_b7
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_79} :catch_b4

    move-result-object v1

    .line 859
    :cond_7a
    :goto_7a
    if-eqz v4, :cond_ba

    .line 861
    :try_start_7c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_8d

    move-object v3, v4

    .line 866
    .end local v2           #model:Ljava/lang/String;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v5           #rev:Ljava/lang/String;
    .end local v6           #temp:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :cond_80
    :goto_80
    if-eqz v1, :cond_88

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 867
    :cond_88
    const-string v1, "Unknown"

    .line 869
    :cond_8a
    return-object v1

    .line 851
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #model:Ljava/lang/String;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    .restart local v5       #rev:Ljava/lang/String;
    .restart local v6       #temp:Ljava/lang/String;
    :cond_8b
    move-object v1, v5

    goto :goto_7a

    .line 862
    :catch_8d
    move-exception v7

    move-object v3, v4

    .line 863
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_80

    .line 854
    .end local v2           #model:Ljava/lang/String;
    .end local v5           #rev:Ljava/lang/String;
    .end local v6           #temp:Ljava/lang/String;
    :catch_90
    move-exception v0

    .line 855
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_91
    :try_start_91
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_a8

    .line 859
    if-eqz v3, :cond_80

    .line 861
    :try_start_96
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    goto :goto_80

    .line 862
    :catch_9a
    move-exception v7

    goto :goto_80

    .line 856
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_9c
    move-exception v0

    .line 857
    .local v0, e:Ljava/io/IOException;
    :goto_9d
    :try_start_9d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_a8

    .line 859
    if-eqz v3, :cond_80

    .line 861
    :try_start_a2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_a6

    goto :goto_80

    .line 862
    :catch_a6
    move-exception v7

    goto :goto_80

    .line 859
    .end local v0           #e:Ljava/io/IOException;
    :catchall_a8
    move-exception v7

    :goto_a9
    if-eqz v3, :cond_ae

    .line 861
    :try_start_ab
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af

    .line 863
    :cond_ae
    :goto_ae
    throw v7

    .line 862
    :catch_af
    move-exception v8

    goto :goto_ae

    .line 859
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #model:Ljava/lang/String;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    .restart local v5       #rev:Ljava/lang/String;
    .restart local v6       #temp:Ljava/lang/String;
    :catchall_b1
    move-exception v7

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_a9

    .line 856
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_b4
    move-exception v0

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_9d

    .line 854
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_b7
    move-exception v0

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_91

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :cond_ba
    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_80
.end method

.method private getOemData(I)V
    .registers 3
    .parameter "oemid"

    .prologue
    .line 568
    const/16 v0, 0x51

    invoke-direct {p0, v0, p1}, Lcom/android/sprintmenu/RTN_View;->getOemData(II)V

    .line 569
    return-void
.end method

.method private getOemData(II)V
    .registers 10
    .parameter "mainOemid"
    .parameter "subOemid"

    .prologue
    .line 572
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 573
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 576
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 577
    .local v3, fileSize:I
    :try_start_b
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 578
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 579
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_3d

    .line 584
    sget-object v4, Lcom/android/sprintmenu/RTN_View;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getOemData with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v4, p0, Lcom/android/sprintmenu/RTN_View;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/RTN_View;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 586
    :goto_3c
    return-void

    .line 580
    :catch_3d
    move-exception v2

    .line 581
    .local v2, e:Ljava/io/IOException;
    sget-object v4, Lcom/android/sprintmenu/RTN_View;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOemData(int, int).. exception occured during operation"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method private setActivationDateStatus([B)V
    .registers 16
    .parameter "data"

    .prologue
    .line 545
    const/4 v9, 0x2

    new-array v5, v9, [B

    .line 546
    .local v5, newBytes:[B
    const/4 v9, 0x0

    const/4 v10, 0x1

    aget-byte v10, p1, v10

    aput-byte v10, v5, v9

    .line 547
    const/4 v9, 0x1

    const/4 v10, 0x0

    aget-byte v10, p1, v10

    aput-byte v10, v5, v9

    .line 548
    const/4 v7, 0x0

    .line 549
    .local v7, value:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    array-length v9, v5

    if-ge v2, v9, :cond_1f

    .line 551
    shl-int/lit8 v9, v7, 0x8

    aget-byte v10, v5, v2

    and-int/lit16 v10, v10, 0xff

    add-int v7, v9, v10

    .line 549
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 554
    :cond_1f
    move v8, v7

    .line 557
    .local v8, year:I
    const/4 v9, 0x2

    aget-byte v4, p1, v9

    .line 558
    .local v4, month:I
    const/4 v9, 0x3

    aget-byte v0, p1, v9

    .line 559
    .local v0, day:I
    const/4 v9, 0x4

    aget-byte v1, p1, v9

    .line 560
    .local v1, hour:I
    const/4 v9, 0x5

    aget-byte v3, p1, v9

    .line 561
    .local v3, minute:I
    const/4 v9, 0x6

    aget-byte v6, p1, v9

    .line 563
    .local v6, second:I
    iget-object v9, p0, Lcom/android/sprintmenu/RTN_View;->ACTIVATIONDATEPref:Landroid/preference/Preference;

    const-string v10, "%02d/%02d/%04d/ %02d:%02d:%02d"

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 564
    return-void
.end method

.method private setLifeByteStatus([B)V
    .registers 15
    .parameter "data"

    .prologue
    .line 501
    const/4 v8, 0x4

    new-array v2, v8, [B

    .line 502
    .local v2, newIntByte:[B
    const/16 v8, 0x8

    new-array v3, v8, [B

    .line 504
    .local v3, newLongByte:[B
    const/4 v8, 0x0

    invoke-static {p1, v8}, Lcom/android/sprintmenu/RTN_View;->byteArrayToInt([BI)I

    move-result v0

    .line 506
    .local v0, currentRx:I
    const/4 v8, 0x4

    invoke-static {p1, v8}, Lcom/android/sprintmenu/RTN_View;->byteArrayToInt([BI)I

    move-result v1

    .line 508
    .local v1, currentTx:I
    const/16 v8, 0x8

    invoke-static {p1, v8}, Lcom/android/sprintmenu/RTN_View;->byteArrayToLong([BI)J

    move-result-wide v4

    .line 510
    .local v4, totalRx:J
    const/16 v8, 0x10

    invoke-static {p1, v8}, Lcom/android/sprintmenu/RTN_View;->byteArrayToLong([BI)J

    move-result-wide v6

    .line 512
    .local v6, totalTx:J
    iget-object v8, p0, Lcom/android/sprintmenu/RTN_View;->LIFEBYTEPref:Landroid/preference/Preference;

    const-string v9, "RX : %d bytes TX:%d bytes"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v8, p0, Lcom/android/sprintmenu/RTN_View;->LIFEBYTETOTALPref:Landroid/preference/Preference;

    const-string v9, "RX : %d bytes TX:%d bytes"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 514
    return-void
.end method

.method private setLifeTimerCallStatus([B)V
    .registers 15
    .parameter "data"

    .prologue
    .line 477
    const/4 v8, 0x4

    new-array v1, v8, [B

    .line 479
    .local v1, newIntByte:[B
    const/4 v8, 0x0

    invoke-static {p1, v8}, Lcom/android/sprintmenu/RTN_View;->byteArrayToInt([BI)I

    move-result v2

    .line 481
    .local v2, totalCallCnt:I
    const/4 v8, 0x4

    invoke-static {p1, v8}, Lcom/android/sprintmenu/RTN_View;->byteArrayToInt([BI)I

    move-result v6

    .line 483
    .local v6, totalOutgoingCallCnt:I
    const/16 v8, 0x8

    invoke-static {p1, v8}, Lcom/android/sprintmenu/RTN_View;->byteArrayToInt([BI)I

    move-result v4

    .line 485
    .local v4, totalIncomingCallCnt:I
    const/16 v8, 0xc

    invoke-static {p1, v8}, Lcom/android/sprintmenu/RTN_View;->byteArrayToInt([BI)I

    move-result v3

    .line 487
    .local v3, totalCallTime:I
    const/16 v8, 0x10

    invoke-static {p1, v8}, Lcom/android/sprintmenu/RTN_View;->byteArrayToInt([BI)I

    move-result v7

    .line 489
    .local v7, totalOutgoingCallTime:I
    const/16 v8, 0x14

    invoke-static {p1, v8}, Lcom/android/sprintmenu/RTN_View;->byteArrayToInt([BI)I

    move-result v5

    .line 491
    .local v5, totalIncomingCallTime:I
    const/16 v8, 0x18

    invoke-static {p1, v8}, Lcom/android/sprintmenu/RTN_View;->byteArrayToInt([BI)I

    move-result v0

    .line 493
    .local v0, lastCall:I
    iget-object v8, p0, Lcom/android/sprintmenu/RTN_View;->LIFETIMETIMERPref:Landroid/preference/Preference;

    const-string v9, "Total Call Time : %dH:%dM "

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    div-int/lit16 v12, v3, 0xe10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    rem-int/lit16 v12, v3, 0xe10

    div-int/lit8 v12, v12, 0x3c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v8, p0, Lcom/android/sprintmenu/RTN_View;->LIFETIMETIMERPref:Landroid/preference/Preference;

    const-string v9, "Out. time : %dH:%dM In. time : %dH:%dM"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    div-int/lit16 v12, v7, 0xe10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    rem-int/lit16 v12, v7, 0xe10

    div-int/lit8 v12, v12, 0x3c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    div-int/lit16 v12, v5, 0xe10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    rem-int/lit16 v12, v5, 0xe10

    div-int/lit8 v12, v12, 0x3c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v8, p0, Lcom/android/sprintmenu/RTN_View;->LIFETIMECALLPref:Landroid/preference/Preference;

    const-string v9, "Total Call Count : %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v8, p0, Lcom/android/sprintmenu/RTN_View;->LIFETIMECALLPref:Landroid/preference/Preference;

    const-string v9, "Outgoing counts : %d  Incoming counts : %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 498
    return-void
.end method

.method private setMSID(Ljava/lang/String;)V
    .registers 5
    .parameter "MSID_Buff"

    .prologue
    .line 627
    const-string v2, "MSID"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    move-object v1, p1

    .line 630
    .local v1, msidNumber:Ljava/lang/String;
    const-string v0, ""

    .line 632
    .local v0, formattedNumber:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 633
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    :cond_12
    iget-object v2, p0, Lcom/android/sprintmenu/RTN_View;->MSIDPref:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 637
    return-void
.end method

.method private setReconditionedStatus([B)V
    .registers 19
    .parameter "data"

    .prologue
    .line 517
    const/4 v12, 0x0

    aget-byte v9, p1, v12

    .line 518
    .local v9, status:I
    const/4 v12, 0x2

    new-array v6, v12, [B

    .line 519
    .local v6, newBytes:[B
    const/4 v12, 0x0

    const/4 v13, 0x2

    aget-byte v13, p1, v13

    aput-byte v13, v6, v12

    .line 520
    const/4 v12, 0x1

    const/4 v13, 0x1

    aget-byte v13, p1, v13

    aput-byte v13, v6, v12

    .line 521
    const/4 v10, 0x0

    .line 526
    .local v10, value:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_14
    array-length v12, v6

    if-ge v3, v12, :cond_22

    .line 528
    shl-int/lit8 v12, v10, 0x8

    aget-byte v13, v6, v3

    and-int/lit16 v13, v13, 0xff

    add-int v10, v12, v13

    .line 526
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 530
    :cond_22
    move v11, v10

    .line 531
    .local v11, year:I
    const/4 v12, 0x3

    aget-byte v5, p1, v12

    .line 532
    .local v5, month:I
    const/4 v12, 0x4

    aget-byte v1, p1, v12

    .line 533
    .local v1, day:I
    const/4 v12, 0x5

    aget-byte v2, p1, v12

    .line 534
    .local v2, hour:I
    const/4 v12, 0x6

    aget-byte v4, p1, v12

    .line 535
    .local v4, minute:I
    const/4 v12, 0x7

    aget-byte v8, p1, v12

    .line 538
    .local v8, second:I
    if-nez v9, :cond_8b

    const-string v7, "NO"

    .line 540
    .local v7, rStatus:Ljava/lang/String;
    :goto_36
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/sprintmenu/RTN_View;->RECONDITIONEDPref:Landroid/preference/Preference;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Status : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/sprintmenu/RTN_View;->RECONDITIONEDPref:Landroid/preference/Preference;

    const-string v13, "%02d/%02d/%04d/ %02d:%02d:%02d"

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 542
    return-void

    .line 538
    .end local v7           #rStatus:Ljava/lang/String;
    :cond_8b
    const-string v7, "YES"

    goto :goto_36
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 17
    .parameter "savedInstanceState"

    .prologue
    .line 227
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 228
    .local v0, SWVersion:Ljava/lang/String;
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 230
    sget-object v11, Lcom/android/sprintmenu/RTN_View;->LOG_TAG:Ljava/lang/String;

    const-string v12, "onCreate"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    iput-object v11, p0, Lcom/android/sprintmenu/RTN_View;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 234
    invoke-virtual {p0}, Lcom/android/sprintmenu/RTN_View;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v11

    invoke-virtual {v11, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v11

    iput-object v11, p0, Lcom/android/sprintmenu/RTN_View;->root:Landroid/preference/PreferenceScreen;

    .line 237
    new-instance v6, Landroid/preference/PreferenceCategory;

    invoke-direct {v6, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 238
    .local v6, mobilenum:Landroid/preference/PreferenceCategory;
    const-string v11, "Mobile Number "

    invoke-virtual {v6, v11}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 240
    new-instance v11, Landroid/preference/Preference;

    invoke-direct {v11, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/sprintmenu/RTN_View;->MOBILENUMBPref:Landroid/preference/Preference;

    .line 241
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->MOBILENUMBPref:Landroid/preference/Preference;

    const v12, 0x7f05007b

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 242
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->MOBILENUMBPref:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 243
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->MOBILENUMBPref:Landroid/preference/Preference;

    const-string v12, "MOBILENUMBPref"

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 246
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v8

    .line 247
    .local v8, phoneNumber:Ljava/lang/String;
    const-string v3, ""

    .line 249
    .local v3, formattedNumber:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5c

    .line 250
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 252
    :cond_5c
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->MOBILENUMBPref:Landroid/preference/Preference;

    invoke-virtual {v11, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->root:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/sprintmenu/RTN_View;->MOBILENUMBPref:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 257
    new-instance v7, Landroid/preference/PreferenceCategory;

    invoke-direct {v7, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 258
    .local v7, msid:Landroid/preference/PreferenceCategory;
    const-string v11, "MSID"

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 260
    new-instance v11, Landroid/preference/Preference;

    invoke-direct {v11, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/sprintmenu/RTN_View;->MSIDPref:Landroid/preference/Preference;

    .line 261
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->MSIDPref:Landroid/preference/Preference;

    const v12, 0x7f050081

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 262
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->MSIDPref:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 263
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->MSIDPref:Landroid/preference/Preference;

    const-string v12, "MSIDPref"

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 264
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->root:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/sprintmenu/RTN_View;->MSIDPref:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 265
    const-string v11, "MSID"

    const-string v12, "calling the function"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v12, "35"

    iget-object v13, p0, Lcom/android/sprintmenu/RTN_View;->mHandler:Landroid/os/Handler;

    const/16 v14, 0xf

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lcom/android/internal/telephony/Phone;->getSystemProperties(Ljava/lang/String;Landroid/os/Message;)V

    .line 290
    new-instance v10, Landroid/preference/PreferenceCategory;

    invoke-direct {v10, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 291
    .local v10, verInfo:Landroid/preference/PreferenceCategory;
    const-string v11, "Version "

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 294
    new-instance v11, Landroid/preference/Preference;

    invoke-direct {v11, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/sprintmenu/RTN_View;->SOFTVERPref:Landroid/preference/Preference;

    .line 295
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->SOFTVERPref:Landroid/preference/Preference;

    const v12, 0x7f05007c

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 296
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->SOFTVERPref:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 297
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->SOFTVERPref:Landroid/preference/Preference;

    const-string v12, "SOFTVERPref"

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 298
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->SOFTVERPref:Landroid/preference/Preference;

    sget-object v12, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->root:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/sprintmenu/RTN_View;->SOFTVERPref:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 303
    new-instance v11, Landroid/preference/Preference;

    invoke-direct {v11, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/sprintmenu/RTN_View;->BASEBANDVERPref:Landroid/preference/Preference;

    .line 304
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->BASEBANDVERPref:Landroid/preference/Preference;

    const v12, 0x7f05007d

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 305
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->BASEBANDVERPref:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 306
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->BASEBANDVERPref:Landroid/preference/Preference;

    const-string v12, "BASEBANDVERPref"

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 308
    :try_start_105
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->BASEBANDVERPref:Landroid/preference/Preference;

    const-string v12, "gsm.version.baseband"

    invoke-virtual {p0}, Lcom/android/sprintmenu/RTN_View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f05001c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_11b
    .catch Ljava/lang/RuntimeException; {:try_start_105 .. :try_end_11b} :catch_389

    .line 312
    :goto_11b
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->root:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/sprintmenu/RTN_View;->BASEBANDVERPref:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 313
    new-instance v11, Landroid/preference/Preference;

    invoke-direct {v11, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/sprintmenu/RTN_View;->HARDVERPref:Landroid/preference/Preference;

    .line 314
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->HARDVERPref:Landroid/preference/Preference;

    const v12, 0x7f05007e

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 315
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->HARDVERPref:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 316
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->HARDVERPref:Landroid/preference/Preference;

    const-string v12, "HARDVERPref"

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 323
    const-string v11, "ril.hw_ver"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/sprintmenu/RTN_View;->HW_version_SysProp:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0xa

    if-lt v11, v12, :cond_37b

    .line 325
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->HARDVERPref:Landroid/preference/Preference;

    iget-object v12, p0, Lcom/android/sprintmenu/RTN_View;->HW_version_SysProp:Ljava/lang/String;

    const/4 v13, 0x2

    const/16 v14, 0xa

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 329
    :goto_15c
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->root:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/sprintmenu/RTN_View;->HARDVERPref:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 330
    new-instance v11, Landroid/preference/Preference;

    invoke-direct {v11, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/sprintmenu/RTN_View;->PRLVERPref:Landroid/preference/Preference;

    .line 331
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->PRLVERPref:Landroid/preference/Preference;

    const v12, 0x7f05007f

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 332
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->PRLVERPref:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 333
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->PRLVERPref:Landroid/preference/Preference;

    const-string v12, "PRLVERPref"

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 341
    const/16 v11, 0x14

    invoke-direct {p0, v11}, Lcom/android/sprintmenu/RTN_View;->getOemData(I)V

    .line 354
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->root:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/sprintmenu/RTN_View;->PRLVERPref:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 368
    new-instance v11, Landroid/preference/Preference;

    invoke-direct {v11, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/sprintmenu/RTN_View;->PRIPref:Landroid/preference/Preference;

    .line 369
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->PRIPref:Landroid/preference/Preference;

    const v12, 0x7f050083

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 370
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->PRIPref:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 371
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->PRIPref:Landroid/preference/Preference;

    const-string v12, "PRIPref"

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 372
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->PRIPref:Landroid/preference/Preference;

    const v12, 0x7f050082

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(I)V

    .line 373
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->root:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/sprintmenu/RTN_View;->PRIPref:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 375
    new-instance v11, Landroid/preference/Preference;

    invoke-direct {v11, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/sprintmenu/RTN_View;->PCBPref:Landroid/preference/Preference;

    .line 376
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->PCBPref:Landroid/preference/Preference;

    const v12, 0x7f050080

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 377
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->PCBPref:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 378
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->PCBPref:Landroid/preference/Preference;

    const-string v12, "PRIPref"

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 379
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->PCBPref:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/sprintmenu/RTN_View;->getHwver()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->root:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/sprintmenu/RTN_View;->PCBPref:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 395
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-direct {v4, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 396
    .local v4, lifeTimer:Landroid/preference/PreferenceCategory;
    const-string v11, "Life timer / calls "

    invoke-virtual {v4, v11}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 399
    new-instance v11, Landroid/preference/Preference;

    invoke-direct {v11, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/sprintmenu/RTN_View;->LIFETIMETIMERPref:Landroid/preference/Preference;

    .line 400
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->LIFETIMETIMERPref:Landroid/preference/Preference;

    const-string v12, "LIFETIMETIMERPref"

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 401
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->LIFETIMETIMERPref:Landroid/preference/Preference;

    const-string v12, "Total Call Time :"

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->LIFETIMETIMERPref:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 403
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->root:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/sprintmenu/RTN_View;->LIFETIMETIMERPref:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 405
    new-instance v11, Landroid/preference/Preference;

    invoke-direct {v11, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/sprintmenu/RTN_View;->LIFETIMECALLPref:Landroid/preference/Preference;

    .line 406
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->LIFETIMECALLPref:Landroid/preference/Preference;

    const-string v12, "LIFETIMETIMERPref"

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 407
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->LIFETIMECALLPref:Landroid/preference/Preference;

    const-string v12, "Total Call Count :"

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->LIFETIMECALLPref:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 409
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->root:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/sprintmenu/RTN_View;->LIFETIMECALLPref:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 410
    const/16 v11, 0xb

    const/16 v12, 0xa

    invoke-direct {p0, v11, v12}, Lcom/android/sprintmenu/RTN_View;->getOemData(II)V

    .line 413
    new-instance v5, Landroid/preference/PreferenceCategory;

    invoke-direct {v5, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 414
    .local v5, lifebyte:Landroid/preference/PreferenceCategory;
    const-string v11, "Life Byte"

    invoke-virtual {v5, v11}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 416
    new-instance v11, Landroid/preference/Preference;

    invoke-direct {v11, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/sprintmenu/RTN_View;->LIFEBYTEPref:Landroid/preference/Preference;

    .line 417
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->LIFEBYTEPref:Landroid/preference/Preference;

    const-string v12, "Current"

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->LIFEBYTEPref:Landroid/preference/Preference;

    const-string v12, "LIFEBYTEPref"

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 419
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->LIFEBYTEPref:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 420
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->root:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/sprintmenu/RTN_View;->LIFEBYTEPref:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 422
    new-instance v11, Landroid/preference/Preference;

    invoke-direct {v11, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/sprintmenu/RTN_View;->LIFEBYTETOTALPref:Landroid/preference/Preference;

    .line 423
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->LIFEBYTETOTALPref:Landroid/preference/Preference;

    const-string v12, "Total"

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->LIFEBYTETOTALPref:Landroid/preference/Preference;

    const-string v12, "LIFEBYTETOTALPref"

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 425
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->LIFEBYTETOTALPref:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 426
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->root:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/sprintmenu/RTN_View;->LIFEBYTETOTALPref:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 427
    const/16 v11, 0xb

    invoke-direct {p0, v11}, Lcom/android/sprintmenu/RTN_View;->getOemData(I)V

    .line 430
    new-instance v9, Landroid/preference/PreferenceCategory;

    invoke-direct {v9, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 431
    .local v9, reconditioned:Landroid/preference/PreferenceCategory;
    const-string v11, "Reconditioned status"

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 433
    new-instance v11, Landroid/preference/Preference;

    invoke-direct {v11, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/sprintmenu/RTN_View;->RECONDITIONEDPref:Landroid/preference/Preference;

    .line 434
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->RECONDITIONEDPref:Landroid/preference/Preference;

    const-string v12, "RECONDITIONEDPref"

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 435
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->RECONDITIONEDPref:Landroid/preference/Preference;

    const-string v12, "Status :"

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->RECONDITIONEDPref:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 437
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->root:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/sprintmenu/RTN_View;->RECONDITIONEDPref:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 438
    const/16 v11, 0xc

    invoke-direct {p0, v11}, Lcom/android/sprintmenu/RTN_View;->getOemData(I)V

    .line 440
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 441
    .local v2, esnMeid:Landroid/preference/PreferenceCategory;
    const-string v11, "ESN /MEID "

    invoke-virtual {v2, v11}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 443
    new-instance v11, Landroid/preference/Preference;

    invoke-direct {v11, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/sprintmenu/RTN_View;->ESNMEIDPref:Landroid/preference/Preference;

    .line 444
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->ESNMEIDPref:Landroid/preference/Preference;

    const v12, 0x7f050075

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 445
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->ESNMEIDPref:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 446
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->ESNMEIDPref:Landroid/preference/Preference;

    const-string v12, "ESNMEIDPref"

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 448
    const-string v11, "---------------->"

    iget-object v12, p0, Lcom/android/sprintmenu/RTN_View;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->ESNMEIDPref:Landroid/preference/Preference;

    iget-object v12, p0, Lcom/android/sprintmenu/RTN_View;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->root:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/sprintmenu/RTN_View;->ESNMEIDPref:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 453
    new-instance v11, Landroid/preference/Preference;

    invoke-direct {v11, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/sprintmenu/RTN_View;->HEXAMEIDPref:Landroid/preference/Preference;

    .line 454
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->HEXAMEIDPref:Landroid/preference/Preference;

    const v12, 0x7f050084

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 455
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->HEXAMEIDPref:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 456
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->HEXAMEIDPref:Landroid/preference/Preference;

    const-string v12, "HEXAMEIDPref"

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 457
    sget-object v11, Lcom/android/sprintmenu/RTN_View;->LOG_TAG:Ljava/lang/String;

    const-string v12, "calling convert function"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-direct {p0}, Lcom/android/sprintmenu/RTN_View;->ConvertDeviceIdtoHexa()V

    .line 459
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->root:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/sprintmenu/RTN_View;->HEXAMEIDPref:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 463
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 464
    .local v1, activation:Landroid/preference/PreferenceCategory;
    const-string v11, "Activation date"

    invoke-virtual {v1, v11}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 466
    new-instance v11, Landroid/preference/Preference;

    invoke-direct {v11, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/sprintmenu/RTN_View;->ACTIVATIONDATEPref:Landroid/preference/Preference;

    .line 467
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->ACTIVATIONDATEPref:Landroid/preference/Preference;

    const-string v12, "ACTIVATIONDATEPref"

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 468
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->ACTIVATIONDATEPref:Landroid/preference/Preference;

    const-string v12, "00/00/0000/ 00:00:00"

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->ACTIVATIONDATEPref:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 470
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->root:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/sprintmenu/RTN_View;->ACTIVATIONDATEPref:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 471
    const/16 v11, 0xd

    invoke-direct {p0, v11}, Lcom/android/sprintmenu/RTN_View;->getOemData(I)V

    .line 473
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v11}, Lcom/android/sprintmenu/RTN_View;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 474
    return-void

    .line 327
    .end local v1           #activation:Landroid/preference/PreferenceCategory;
    .end local v2           #esnMeid:Landroid/preference/PreferenceCategory;
    .end local v4           #lifeTimer:Landroid/preference/PreferenceCategory;
    .end local v5           #lifebyte:Landroid/preference/PreferenceCategory;
    .end local v9           #reconditioned:Landroid/preference/PreferenceCategory;
    :cond_37b
    iget-object v11, p0, Lcom/android/sprintmenu/RTN_View;->HARDVERPref:Landroid/preference/Preference;

    const v12, 0x7f05001c

    invoke-virtual {p0, v12}, Lcom/android/sprintmenu/RTN_View;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_15c

    .line 310
    :catch_389
    move-exception v11

    goto/16 :goto_11b
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/16 v2, 0xb

    .line 216
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 217
    sget-object v0, Lcom/android/sprintmenu/RTN_View;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/16 v0, 0xa

    invoke-direct {p0, v2, v0}, Lcom/android/sprintmenu/RTN_View;->getOemData(II)V

    .line 219
    invoke-direct {p0, v2}, Lcom/android/sprintmenu/RTN_View;->getOemData(I)V

    .line 221
    return-void
.end method
