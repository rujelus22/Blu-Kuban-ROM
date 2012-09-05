.class public Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;
.super Lcom/infraware/common/baseactivity/BaseActivity;
.source "SheetFormatAlignment.java"


# instance fields
.field private mEvInterface:Lcom/infraware/office/evengine/EvInterface;

.field private m_btnBottom:Landroid/widget/Button;

.field private m_btnCancel:Landroid/widget/Button;

.field private m_btnCenter:Landroid/widget/Button;

.field private m_btnLeft:Landroid/widget/Button;

.field private m_btnMiddle:Landroid/widget/Button;

.field private m_btnOk:Landroid/widget/Button;

.field private m_btnRight:Landroid/widget/Button;

.field private m_btnTop:Landroid/widget/Button;

.field private m_nHAlign:I

.field private m_nVAlign:I

.field private m_txtHorizontal:Landroid/widget/TextView;

.field private m_txtVertical:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/infraware/common/baseactivity/BaseActivity;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 19
    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnLeft:Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnCenter:Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnRight:Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnTop:Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnMiddle:Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnBottom:Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnOk:Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnCancel:Landroid/widget/Button;

    .line 20
    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_txtHorizontal:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_txtVertical:Landroid/widget/TextView;

    .line 21
    const/16 v0, 0x10c

    iput v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_nHAlign:I

    const/16 v0, 0x10f

    iput v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_nVAlign:I

    .line 16
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;)I
    .registers 2
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_nHAlign:I

    return v0
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 21
    iput p1, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_nHAlign:I

    return-void
.end method

.method static synthetic access$10(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;)Lcom/infraware/office/evengine/EvInterface;
    .registers 2
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    return-object v0
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnLeft:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnCenter:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnRight:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;)I
    .registers 2
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_nVAlign:I

    return v0
.end method

.method static synthetic access$6(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 21
    iput p1, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_nVAlign:I

    return-void
.end method

.method static synthetic access$7(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnTop:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnMiddle:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$9(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnBottom:Landroid/widget/Button;

    return-object v0
.end method

.method private initUI()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 39
    const v0, 0x7f0c01be

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_txtHorizontal:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_txtHorizontal:Landroid/widget/TextView;

    const v1, 0x7f0801ca

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 41
    const v0, 0x7f0c01c2

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_txtVertical:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_txtVertical:Landroid/widget/TextView;

    const v1, 0x7f0801cb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 43
    const v0, 0x7f0c01bf

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnLeft:Landroid/widget/Button;

    .line 44
    const v0, 0x7f0c01c0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnCenter:Landroid/widget/Button;

    .line 45
    const v0, 0x7f0c01c1

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnRight:Landroid/widget/Button;

    .line 46
    const v0, 0x7f0c01c3

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnTop:Landroid/widget/Button;

    .line 47
    const v0, 0x7f0c01c4

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnMiddle:Landroid/widget/Button;

    .line 48
    const v0, 0x7f0c01c5

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnBottom:Landroid/widget/Button;

    .line 49
    const v0, 0x7f0c01c6

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnOk:Landroid/widget/Button;

    .line 50
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnOk:Landroid/widget/Button;

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 51
    const v0, 0x7f0c006d

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnCancel:Landroid/widget/Button;

    .line 52
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnCancel:Landroid/widget/Button;

    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 54
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_nHAlign:I

    packed-switch v0, :pswitch_data_be

    .line 66
    :goto_94
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_nVAlign:I

    packed-switch v0, :pswitch_data_c8

    .line 77
    :goto_99
    return-void

    .line 56
    :pswitch_9a
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_94

    .line 59
    :pswitch_a0
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnCenter:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_94

    .line 62
    :pswitch_a6
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_94

    .line 68
    :pswitch_ac
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnTop:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_99

    .line 71
    :pswitch_b2
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnMiddle:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_99

    .line 74
    :pswitch_b8
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnBottom:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_99

    .line 54
    :pswitch_data_be
    .packed-switch 0x109
        :pswitch_9a
        :pswitch_a0
        :pswitch_a6
    .end packed-switch

    .line 66
    :pswitch_data_c8
    .packed-switch 0x10d
        :pswitch_ac
        :pswitch_b2
        :pswitch_b8
    .end packed-switch
.end method

.method private setControlAction()V
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnLeft:Landroid/widget/Button;

    new-instance v1, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$1;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$1;-><init>(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnCenter:Landroid/widget/Button;

    new-instance v1, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$2;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$2;-><init>(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnRight:Landroid/widget/Button;

    new-instance v1, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$3;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$3;-><init>(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnTop:Landroid/widget/Button;

    new-instance v1, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$4;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$4;-><init>(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnMiddle:Landroid/widget/Button;

    new-instance v1, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$5;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$5;-><init>(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnBottom:Landroid/widget/Button;

    new-instance v1, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$6;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$6;-><init>(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnOk:Landroid/widget/Button;

    new-instance v1, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$7;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$7;-><init>(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnCancel:Landroid/widget/Button;

    new-instance v1, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$8;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment$8;-><init>(Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 27
    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetFormatInfo()Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v0

    .line 28
    .local v0, sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;
    iget v1, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wHorizontalAlignment:I

    iput v1, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_nHAlign:I

    .line 29
    iget v1, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wVerticalAlignment:I

    iput v1, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_nVAlign:I

    .line 31
    const v1, 0x7f03004a

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->setContentView(I)V

    .line 32
    const v1, 0x7f0801a9

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->setTitle(I)V

    .line 34
    invoke-direct {p0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->initUI()V

    .line 35
    invoke-direct {p0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->setControlAction()V

    .line 36
    return-void
.end method

.method public onLocaleChange(I)V
    .registers 4
    .parameter "nLocale"

    .prologue
    .line 155
    const v0, 0x7f0801a9

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->setTitle(I)V

    .line 156
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_txtHorizontal:Landroid/widget/TextView;

    const v1, 0x7f0801ca

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 157
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_txtVertical:Landroid/widget/TextView;

    const v1, 0x7f0801cb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 158
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnOk:Landroid/widget/Button;

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 159
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetFormatAlignment;->m_btnCancel:Landroid/widget/Button;

    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 160
    return-void
.end method
