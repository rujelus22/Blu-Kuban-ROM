.class public Lcom/android/sprintmenu/USBChargeMenu;
.super Landroid/app/Activity;
.source "USBChargeMenu.java"


# instance fields
.field private disable:Landroid/widget/RadioButton;

.field private enable:Landroid/widget/RadioButton;

.field radio_listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    new-instance v0, Lcom/android/sprintmenu/USBChargeMenu$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/USBChargeMenu$1;-><init>(Lcom/android/sprintmenu/USBChargeMenu;)V

    iput-object v0, p0, Lcom/android/sprintmenu/USBChargeMenu;->radio_listener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private init()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 65
    const-string v1, "persist.service.slate_mode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, strValue:Ljava/lang/String;
    const-string v1, "USBChargeMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init strValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 68
    invoke-direct {p0, v4}, Lcom/android/sprintmenu/USBChargeMenu;->setChecked(Z)V

    .line 76
    :goto_2a
    return-void

    .line 69
    :cond_2b
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 70
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/sprintmenu/USBChargeMenu;->setChecked(Z)V

    goto :goto_2a

    .line 72
    :cond_38
    const-string v1, "USBChargeMenu"

    const-string v2, "SetCharging property value is empty. so set ON"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v1, "persist.service.slate_mode"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, v4}, Lcom/android/sprintmenu/USBChargeMenu;->setChecked(Z)V

    goto :goto_2a
.end method

.method private setChecked(Z)V
    .registers 5
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 79
    if-eqz p1, :cond_f

    .line 80
    iget-object v0, p0, Lcom/android/sprintmenu/USBChargeMenu;->enable:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/sprintmenu/USBChargeMenu;->disable:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 86
    :goto_e
    return-void

    .line 83
    :cond_f
    iget-object v0, p0, Lcom/android/sprintmenu/USBChargeMenu;->enable:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/sprintmenu/USBChargeMenu;->disable:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_e
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/USBChargeMenu;->setContentView(I)V

    .line 49
    const v0, 0x7f07002d

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/USBChargeMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/sprintmenu/USBChargeMenu;->enable:Landroid/widget/RadioButton;

    .line 50
    const v0, 0x7f07002e

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/USBChargeMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/sprintmenu/USBChargeMenu;->disable:Landroid/widget/RadioButton;

    .line 52
    iget-object v0, p0, Lcom/android/sprintmenu/USBChargeMenu;->enable:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/sprintmenu/USBChargeMenu;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/android/sprintmenu/USBChargeMenu;->disable:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/sprintmenu/USBChargeMenu;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-direct {p0}, Lcom/android/sprintmenu/USBChargeMenu;->init()V

    .line 56
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 61
    invoke-virtual {p0}, Lcom/android/sprintmenu/USBChargeMenu;->finish()V

    .line 62
    return-void
.end method
