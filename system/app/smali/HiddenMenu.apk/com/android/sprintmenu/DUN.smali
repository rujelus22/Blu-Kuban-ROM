.class public Lcom/android/sprintmenu/DUN;
.super Landroid/app/Activity;
.source "DUN.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private DUN_Off:Landroid/widget/RadioButton;

.field private DUN_On:Landroid/widget/RadioButton;

.field private final SYS_KEY:Ljava/lang/String;

.field private final USB_PATH:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final modem:[B

.field private final pda:[B

.field radio_listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const-string v0, "/sys/class/sec/switch/usb_sel"

    iput-object v0, p0, Lcom/android/sprintmenu/DUN;->USB_PATH:Ljava/lang/String;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_24

    iput-object v0, p0, Lcom/android/sprintmenu/DUN;->pda:[B

    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_2a

    iput-object v0, p0, Lcom/android/sprintmenu/DUN;->modem:[B

    .line 32
    const-string v0, "com.android.sprintmenu.dialup.setting"

    iput-object v0, p0, Lcom/android/sprintmenu/DUN;->SYS_KEY:Ljava/lang/String;

    .line 72
    new-instance v0, Lcom/android/sprintmenu/DUN$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/DUN$1;-><init>(Lcom/android/sprintmenu/DUN;)V

    iput-object v0, p0, Lcom/android/sprintmenu/DUN;->radio_listener:Landroid/view/View$OnClickListener;

    return-void

    .line 30
    nop

    :array_24
    .array-data 0x1
        0x50t
        0x44t
        0x41t
        0x0t
    .end array-data

    .line 31
    :array_2a
    .array-data 0x1
        0x4dt
        0x4ft
        0x44t
        0x45t
        0x4dt
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/sprintmenu/DUN;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/sprintmenu/DUN;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sprintmenu/DUN;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/DUN;->changeUsb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/sprintmenu/DUN;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/sprintmenu/DUN;->setChecked(I)V

    return-void
.end method

.method private changeUsb(Ljava/lang/String;)V
    .registers 5
    .parameter "usb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/class/sec/switch/usb_sel"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, out:Ljava/io/FileOutputStream;
    :try_start_7
    const-string v2, "PDA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 143
    iget-object v2, p0, Lcom/android/sprintmenu/DUN;->pda:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_2e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_26

    .line 150
    :cond_14
    :goto_14
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 152
    :goto_17
    return-void

    .line 144
    :cond_18
    :try_start_18
    const-string v2, "MODEM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 145
    iget-object v2, p0, Lcom/android/sprintmenu/DUN;->modem:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_2e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_25} :catch_26

    goto :goto_14

    .line 147
    :catch_26
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/Exception;
    :try_start_27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2e

    .line 150
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_17

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v2
.end method

.method private setChecked(I)V
    .registers 5
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 63
    if-nez p1, :cond_f

    .line 64
    iget-object v0, p0, Lcom/android/sprintmenu/DUN;->DUN_Off:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/sprintmenu/DUN;->DUN_On:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 70
    :cond_e
    :goto_e
    return-void

    .line 66
    :cond_f
    if-ne p1, v1, :cond_e

    .line 67
    iget-object v0, p0, Lcom/android/sprintmenu/DUN;->DUN_Off:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/sprintmenu/DUN;->DUN_On:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_e
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 164
    :goto_7
    return-void

    .line 158
    :pswitch_8
    const-string v0, "DUN"

    const-string v1, "cancel BTN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_7

    .line 156
    nop

    :pswitch_data_14
    .packed-switch 0x7f070003
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/DUN;->setContentView(I)V

    .line 41
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sprintmenu/DUN;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 43
    const v2, 0x7f070006

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/DUN;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/sprintmenu/DUN;->DUN_On:Landroid/widget/RadioButton;

    .line 44
    const v2, 0x7f070007

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/DUN;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/sprintmenu/DUN;->DUN_Off:Landroid/widget/RadioButton;

    .line 51
    iget-object v2, p0, Lcom/android/sprintmenu/DUN;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDataDunEnabled()Z

    move-result v2

    if-eqz v2, :cond_4a

    const/4 v1, 0x1

    .line 52
    .local v1, i:I
    :goto_2e
    invoke-direct {p0, v1}, Lcom/android/sprintmenu/DUN;->setChecked(I)V

    .line 54
    iget-object v2, p0, Lcom/android/sprintmenu/DUN;->DUN_On:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/sprintmenu/DUN;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v2, p0, Lcom/android/sprintmenu/DUN;->DUN_Off:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/sprintmenu/DUN;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v2, 0x7f070003

    invoke-virtual {p0, v2}, Lcom/android/sprintmenu/DUN;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, cancel_button:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void

    .line 51
    .end local v0           #cancel_button:Landroid/view/View;
    .end local v1           #i:I
    :cond_4a
    const/4 v1, 0x0

    goto :goto_2e
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 102
    packed-switch p1, :pswitch_data_44

    .line 135
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 105
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/sprintmenu/DUN;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/sprintmenu/DUN$3;

    invoke-direct {v2, p0}, Lcom/android/sprintmenu/DUN$3;-><init>(Lcom/android/sprintmenu/DUN;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/android/sprintmenu/DUN$2;

    invoke-direct {v2, p0}, Lcom/android/sprintmenu/DUN$2;-><init>(Lcom/android/sprintmenu/DUN;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_4

    .line 102
    :pswitch_data_44
    .packed-switch 0x65
        :pswitch_5
    .end packed-switch
.end method
