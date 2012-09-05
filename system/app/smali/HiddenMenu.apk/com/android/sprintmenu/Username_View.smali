.class public Lcom/android/sprintmenu/Username_View;
.super Landroid/preference/PreferenceActivity;
.source "Username_View.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field static buf:[B

.field private static sNotSet:Ljava/lang/String;


# instance fields
.field MN_AAA_value:I

.field MN_HA_value:I

.field private M_Home_AddrPref:Landroid/preference/Preference;

.field NAI_length:I

.field private Pev_TunnelPref:Landroid/preference/Preference;

.field private Prim_Home_AddrPref:Landroid/preference/Preference;

.field private SPI_MN_AAAPref:Landroid/preference/Preference;

.field private SPI_MN_HAPref:Landroid/preference/Preference;

.field private Sec_Home_AgentPref:Landroid/preference/Preference;

.field private User_NamePref:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field m_home_addr:Ljava/lang/String;

.field pev_tunnel_value:I

.field prim_home_addr:Ljava/lang/String;

.field sec_home_agent:Ljava/lang/String;

.field spi_mn_aaa:Ljava/lang/String;

.field user_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/android/sprintmenu/Username_View;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/sprintmenu/Username_View;->LOG_TAG:Ljava/lang/String;

    .line 36
    const-string v0, "<Not set>"

    sput-object v0, Lcom/android/sprintmenu/Username_View;->sNotSet:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sprintmenu/Username_View;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 43
    iput v1, p0, Lcom/android/sprintmenu/Username_View;->MN_HA_value:I

    .line 44
    iput v1, p0, Lcom/android/sprintmenu/Username_View;->MN_AAA_value:I

    .line 45
    iput v1, p0, Lcom/android/sprintmenu/Username_View;->pev_tunnel_value:I

    .line 46
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/sprintmenu/Username_View;->spi_mn_aaa:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/sprintmenu/Username_View;->user_name:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/sprintmenu/Username_View;->m_home_addr:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/sprintmenu/Username_View;->prim_home_addr:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/sprintmenu/Username_View;->sec_home_agent:Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/android/sprintmenu/Username_View$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/Username_View$1;-><init>(Lcom/android/sprintmenu/Username_View;)V

    iput-object v0, p0, Lcom/android/sprintmenu/Username_View;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/sprintmenu/Username_View;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sprintmenu/Username_View;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/Username_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/sprintmenu/Username_View;)Landroid/preference/Preference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/sprintmenu/Username_View;->User_NamePref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300([B)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    invoke-static {p0}, Lcom/android/sprintmenu/Username_View;->byteArrayToInt([B)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/sprintmenu/Username_View;)Landroid/preference/Preference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/sprintmenu/Username_View;->SPI_MN_HAPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/sprintmenu/Username_View;)Landroid/preference/Preference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/sprintmenu/Username_View;->SPI_MN_AAAPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/sprintmenu/Username_View;)Landroid/preference/Preference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/sprintmenu/Username_View;->Pev_TunnelPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/sprintmenu/Username_View;)Landroid/preference/Preference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/sprintmenu/Username_View;->M_Home_AddrPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/sprintmenu/Username_View;)Landroid/preference/Preference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/sprintmenu/Username_View;->Prim_Home_AddrPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/sprintmenu/Username_View;)Landroid/preference/Preference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/sprintmenu/Username_View;->Sec_Home_AgentPref:Landroid/preference/Preference;

    return-object v0
.end method

.method private static byteArrayToInt([B)I
    .registers 7
    .parameter "bytes"

    .prologue
    const/4 v5, 0x4

    .line 62
    const/4 v3, 0x4

    .line 63
    .local v3, size:I
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 64
    .local v0, buff:Ljava/nio/ByteBuffer;
    new-array v2, v5, [B

    .line 65
    .local v2, newBytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v5, :cond_1e

    .line 66
    array-length v4, p0

    add-int/2addr v4, v1

    if-ge v4, v5, :cond_15

    .line 67
    const/4 v4, 0x0

    aput-byte v4, v2, v1

    .line 65
    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 69
    :cond_15
    array-length v4, p0

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x4

    aget-byte v4, p0, v4

    aput-byte v4, v2, v1

    goto :goto_12

    .line 72
    :cond_1e
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 73
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 74
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    return v4
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 53
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 54
    :cond_8
    sget-object p1, Lcom/android/sprintmenu/Username_View;->sNotSet:Ljava/lang/String;

    .line 56
    .end local p1
    :cond_a
    return-object p1
.end method

.method private getOemData()V
    .registers 9

    .prologue
    const/16 v7, 0xe

    .line 80
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 81
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 85
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 86
    .local v3, fileSize:I
    const/16 v4, 0x51

    :try_start_f
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 87
    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 88
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1b} :catch_2b

    .line 95
    iget-object v4, p0, Lcom/android/sprintmenu/Username_View;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/Username_View;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 96
    :goto_2a
    return-void

    .line 90
    :catch_2b
    move-exception v2

    .line 92
    .local v2, e:Ljava/io/IOException;
    goto :goto_2a
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 210
    sget-object v2, Lcom/android/sprintmenu/Username_View;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sprintmenu/Username_View;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 213
    invoke-direct {p0}, Lcom/android/sprintmenu/Username_View;->getOemData()V

    .line 215
    invoke-virtual {p0}, Lcom/android/sprintmenu/Username_View;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 218
    .local v1, root:Landroid/preference/PreferenceScreen;
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 219
    .local v0, inlinePrefCat:Landroid/preference/PreferenceCategory;
    const v2, 0x7f050009

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 220
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 222
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/Username_View;->User_NamePref:Landroid/preference/Preference;

    .line 223
    iget-object v2, p0, Lcom/android/sprintmenu/Username_View;->User_NamePref:Landroid/preference/Preference;

    const v3, 0x7f05005f

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 224
    iget-object v2, p0, Lcom/android/sprintmenu/Username_View;->User_NamePref:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/sprintmenu/Username_View;->user_name:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/Username_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v2, p0, Lcom/android/sprintmenu/Username_View;->User_NamePref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 227
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/Username_View;->SPI_MN_HAPref:Landroid/preference/Preference;

    .line 228
    iget-object v2, p0, Lcom/android/sprintmenu/Username_View;->SPI_MN_HAPref:Landroid/preference/Preference;

    const v3, 0x7f050060

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 229
    iget-object v2, p0, Lcom/android/sprintmenu/Username_View;->SPI_MN_HAPref:Landroid/preference/Preference;

    iget v3, p0, Lcom/android/sprintmenu/Username_View;->MN_HA_value:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/Username_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v2, p0, Lcom/android/sprintmenu/Username_View;->SPI_MN_HAPref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 232
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/Username_View;->SPI_MN_AAAPref:Landroid/preference/Preference;

    .line 233
    iget-object v2, p0, Lcom/android/sprintmenu/Username_View;->SPI_MN_AAAPref:Landroid/preference/Preference;

    const v3, 0x7f050061

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 234
    iget-object v2, p0, Lcom/android/sprintmenu/Username_View;->SPI_MN_AAAPref:Landroid/preference/Preference;

    iget v3, p0, Lcom/android/sprintmenu/Username_View;->MN_AAA_value:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/Username_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v2, p0, Lcom/android/sprintmenu/Username_View;->SPI_MN_AAAPref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 237
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/Username_View;->M_Home_AddrPref:Landroid/preference/Preference;

    .line 238
    iget-object v2, p0, Lcom/android/sprintmenu/Username_View;->M_Home_AddrPref:Landroid/preference/Preference;

    const v3, 0x7f050062

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 239
    iget-object v2, p0, Lcom/android/sprintmenu/Username_View;->M_Home_AddrPref:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/sprintmenu/Username_View;->m_home_addr:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/Username_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v2, p0, Lcom/android/sprintmenu/Username_View;->M_Home_AddrPref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 242
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/Username_View;->Prim_Home_AddrPref:Landroid/preference/Preference;

    .line 243
    iget-object v2, p0, Lcom/android/sprintmenu/Username_View;->Prim_Home_AddrPref:Landroid/preference/Preference;

    const v3, 0x7f050063

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 244
    iget-object v2, p0, Lcom/android/sprintmenu/Username_View;->Prim_Home_AddrPref:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/sprintmenu/Username_View;->prim_home_addr:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/Username_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v2, p0, Lcom/android/sprintmenu/Username_View;->Prim_Home_AddrPref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 247
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/Username_View;->Sec_Home_AgentPref:Landroid/preference/Preference;

    .line 248
    iget-object v2, p0, Lcom/android/sprintmenu/Username_View;->Sec_Home_AgentPref:Landroid/preference/Preference;

    const v3, 0x7f050064

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 249
    iget-object v2, p0, Lcom/android/sprintmenu/Username_View;->Sec_Home_AgentPref:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/sprintmenu/Username_View;->sec_home_agent:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/sprintmenu/Username_View;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v2, p0, Lcom/android/sprintmenu/Username_View;->Sec_Home_AgentPref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 252
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sprintmenu/Username_View;->Pev_TunnelPref:Landroid/preference/Preference;

    .line 253
    iget-object v2, p0, Lcom/android/sprintmenu/Username_View;->Pev_TunnelPref:Landroid/preference/Preference;

    const v3, 0x7f050065

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 254
    iget v2, p0, Lcom/android/sprintmenu/Username_View;->pev_tunnel_value:I

    if-eqz v2, :cond_10f

    .line 256
    iget-object v2, p0, Lcom/android/sprintmenu/Username_View;->Pev_TunnelPref:Landroid/preference/Preference;

    const v3, 0x7f050066

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 262
    :goto_106
    iget-object v2, p0, Lcom/android/sprintmenu/Username_View;->Pev_TunnelPref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 264
    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/Username_View;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 266
    return-void

    .line 260
    :cond_10f
    iget-object v2, p0, Lcom/android/sprintmenu/Username_View;->Pev_TunnelPref:Landroid/preference/Preference;

    const v3, 0x7f050067

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_106
.end method
