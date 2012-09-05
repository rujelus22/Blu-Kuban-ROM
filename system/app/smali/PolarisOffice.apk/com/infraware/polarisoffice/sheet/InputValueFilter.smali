.class public Lcom/infraware/polarisoffice/sheet/InputValueFilter;
.super Ljava/lang/Object;
.source "InputValueFilter.java"

# interfaces
.implements Lcom/infraware/office/baseframe/EvBaseE$PopupDialogEventType;


# instance fields
.field private context:Landroid/content/Context;

.field private filters:[Landroid/text/InputFilter;

.field private m_ToastMsg:Landroid/widget/Toast;

.field private nErrMsgId:I

.field private nMaxLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 7
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-array v0, v1, [Landroid/text/InputFilter;

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->filters:[Landroid/text/InputFilter;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->m_ToastMsg:Landroid/widget/Toast;

    .line 18
    iput v2, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->nErrMsgId:I

    .line 19
    iput v2, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->nMaxLength:I

    .line 27
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->context:Landroid/content/Context;

    .line 29
    packed-switch p2, :pswitch_data_4c

    .line 60
    :goto_16
    :pswitch_16
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->filters:[Landroid/text/InputFilter;

    new-instance v1, Lcom/infraware/polarisoffice/sheet/InputValueFilter$1;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/sheet/InputValueFilter$1;-><init>(Lcom/infraware/polarisoffice/sheet/InputValueFilter;)V

    aput-object v1, v0, v2

    .line 86
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->filters:[Landroid/text/InputFilter;

    const/4 v1, 0x1

    new-instance v2, Lcom/infraware/polarisoffice/sheet/InputValueFilter$2;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/sheet/InputValueFilter$2;-><init>(Lcom/infraware/polarisoffice/sheet/InputValueFilter;)V

    aput-object v2, v0, v1

    .line 101
    return-void

    .line 36
    :pswitch_2a
    const v0, 0x7f0801ee

    iput v0, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->nErrMsgId:I

    .line 37
    iput v1, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->nMaxLength:I

    goto :goto_16

    .line 42
    :pswitch_32
    const v0, 0x7f0801ec

    iput v0, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->nErrMsgId:I

    .line 43
    iput v3, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->nMaxLength:I

    goto :goto_16

    .line 48
    :pswitch_3a
    const v0, 0x7f0801ed

    iput v0, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->nErrMsgId:I

    .line 49
    iput v3, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->nMaxLength:I

    goto :goto_16

    .line 54
    :pswitch_42
    const v0, 0x7f0801ea

    iput v0, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->nErrMsgId:I

    .line 55
    const/4 v0, 0x3

    iput v0, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->nMaxLength:I

    goto :goto_16

    .line 29
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_32
        :pswitch_3a
        :pswitch_16
        :pswitch_42
    .end packed-switch
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/sheet/InputValueFilter;C)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->isValidChar(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/sheet/InputValueFilter;)I
    .registers 2
    .parameter

    .prologue
    .line 18
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->nErrMsgId:I

    return v0
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/sheet/InputValueFilter;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->onToastMessage(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/infraware/polarisoffice/sheet/InputValueFilter;)I
    .registers 2
    .parameter

    .prologue
    .line 19
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->nMaxLength:I

    return v0
.end method

.method private isValidChar(C)Z
    .registers 3
    .parameter "ch"

    .prologue
    .line 118
    const/16 v0, 0x30

    if-lt p1, v0, :cond_a

    const/16 v0, 0x39

    if-gt p1, v0, :cond_a

    .line 120
    const/4 v0, 0x1

    .line 122
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private onToastMessage(I)V
    .registers 5
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 105
    iget v0, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->nErrMsgId:I

    if-nez v0, :cond_6

    .line 114
    :goto_5
    return-void

    .line 108
    :cond_6
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->m_ToastMsg:Landroid/widget/Toast;

    if-nez v0, :cond_1f

    .line 109
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->context:Landroid/content/Context;

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->m_ToastMsg:Landroid/widget/Toast;

    .line 112
    :goto_12
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->m_ToastMsg:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 113
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 111
    :cond_1f
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_12
.end method


# virtual methods
.method public getFilters()[Landroid/text/InputFilter;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/InputValueFilter;->filters:[Landroid/text/InputFilter;

    return-object v0
.end method
