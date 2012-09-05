.class public Lcom/android/sprintmenu/DNS_Set;
.super Landroid/app/Activity;
.source "DNS_Set.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private DNS_disable:Landroid/widget/RadioButton;

.field private DNS_enable:Landroid/widget/RadioButton;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field radio_listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sprintmenu/DNS_Set;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 24
    new-instance v0, Lcom/android/sprintmenu/DNS_Set$1;

    invoke-direct {v0, p0}, Lcom/android/sprintmenu/DNS_Set$1;-><init>(Lcom/android/sprintmenu/DNS_Set;)V

    iput-object v0, p0, Lcom/android/sprintmenu/DNS_Set;->radio_listener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/sprintmenu/DNS_Set;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/sprintmenu/DNS_Set;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private setChecked(Z)V
    .registers 5
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    if-eqz p1, :cond_f

    .line 71
    iget-object v0, p0, Lcom/android/sprintmenu/DNS_Set;->DNS_enable:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/sprintmenu/DNS_Set;->DNS_disable:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 77
    :goto_e
    return-void

    .line 74
    :cond_f
    iget-object v0, p0, Lcom/android/sprintmenu/DNS_Set;->DNS_enable:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/sprintmenu/DNS_Set;->DNS_disable:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_e
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 91
    :goto_7
    return-void

    .line 84
    :pswitch_8
    const-string v0, "DNS_Set"

    const-string v1, "cancel BTN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_7

    .line 81
    nop

    :pswitch_data_14
    .packed-switch 0x7f070003
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const-string v1, "DNS_Set"

    const-string v2, "Class create!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/DNS_Set;->setContentView(I)V

    .line 55
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sprintmenu/DNS_Set;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 57
    const v1, 0x7f070001

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/DNS_Set;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/sprintmenu/DNS_Set;->DNS_enable:Landroid/widget/RadioButton;

    .line 58
    const v1, 0x7f070002

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/DNS_Set;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/sprintmenu/DNS_Set;->DNS_disable:Landroid/widget/RadioButton;

    .line 60
    iget-object v1, p0, Lcom/android/sprintmenu/DNS_Set;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/sprintmenu/DNS_Set;->setChecked(Z)V

    .line 62
    iget-object v1, p0, Lcom/android/sprintmenu/DNS_Set;->DNS_enable:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/android/sprintmenu/DNS_Set;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v1, p0, Lcom/android/sprintmenu/DNS_Set;->DNS_disable:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/android/sprintmenu/DNS_Set;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lcom/android/sprintmenu/DNS_Set;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, cancel_button:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method
