.class public Lcom/android/sprintmenu/SCRTN;
.super Landroid/app/Activity;
.source "SCRTN.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/android/sprintmenu/SCRTN;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/sprintmenu/SCRTN;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sprintmenu/SCRTN;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 55
    new-instance v0, Lcom/android/sprintmenu/SCRTN$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/SCRTN$1;-><init>(Lcom/android/sprintmenu/SCRTN;)V

    iput-object v0, p0, Lcom/android/sprintmenu/SCRTN;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private Reset_SCRTN()V
    .registers 9

    .prologue
    .line 35
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 38
    .local v1, dos:Ljava/io/DataOutputStream;
    sget-object v4, Lcom/android/sprintmenu/SCRTN;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Reset_SCRTN"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v3, 0x3

    .line 42
    .local v3, fileSize:I
    const/16 v4, 0xa

    :try_start_14
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 43
    const/16 v4, 0x19

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 44
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_20} :catch_39

    .line 50
    sget-object v4, Lcom/android/sprintmenu/SCRTN;->LOG_TAG:Ljava/lang/String;

    const-string v5, "send SCRTN to RIL"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v4, p0, Lcom/android/sprintmenu/SCRTN;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/sprintmenu/SCRTN;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7cd

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 52
    :goto_38
    return-void

    .line 46
    :catch_39
    move-exception v2

    .line 48
    .local v2, e:Ljava/io/IOException;
    goto :goto_38
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/sprintmenu/SCRTN;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sprintmenu/SCRTN;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/sprintmenu/SCRTN;->Reset_SCRTN()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    sget-object v0, Lcom/android/sprintmenu/SCRTN;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sprintmenu/SCRTN;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/SCRTN;->showDialog(I)V

    .line 115
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 82
    sget-object v0, Lcom/android/sprintmenu/SCRTN;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    packed-switch p1, :pswitch_data_3c

    .line 104
    const/4 v0, 0x0

    :goto_b
    return-object v0

    .line 85
    :pswitch_c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f050088

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "SCRTN is change to factory default value for DSA"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f05003d

    new-instance v2, Lcom/android/sprintmenu/SCRTN$3;

    invoke-direct {v2, p0}, Lcom/android/sprintmenu/SCRTN$3;-><init>(Lcom/android/sprintmenu/SCRTN;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f05003e

    new-instance v2, Lcom/android/sprintmenu/SCRTN$2;

    invoke-direct {v2, p0}, Lcom/android/sprintmenu/SCRTN$2;-><init>(Lcom/android/sprintmenu/SCRTN;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_b

    .line 83
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method
