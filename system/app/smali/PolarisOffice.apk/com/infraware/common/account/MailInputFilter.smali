.class public Lcom/infraware/common/account/MailInputFilter;
.super Ljava/lang/Object;
.source "MailInputFilter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private filters:[Landroid/text/InputFilter;

.field private m_MaxLength:I

.field private m_ToastMsg:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/text/InputFilter;

    iput-object v0, p0, Lcom/infraware/common/account/MailInputFilter;->filters:[Landroid/text/InputFilter;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/common/account/MailInputFilter;->m_ToastMsg:Landroid/widget/Toast;

    .line 15
    const/16 v0, 0x80

    iput v0, p0, Lcom/infraware/common/account/MailInputFilter;->m_MaxLength:I

    .line 23
    iput-object p1, p0, Lcom/infraware/common/account/MailInputFilter;->context:Landroid/content/Context;

    .line 25
    iget-object v0, p0, Lcom/infraware/common/account/MailInputFilter;->filters:[Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/infraware/common/account/MailInputFilter$1;

    invoke-direct {v2, p0}, Lcom/infraware/common/account/MailInputFilter$1;-><init>(Lcom/infraware/common/account/MailInputFilter;)V

    aput-object v2, v0, v1

    .line 58
    iget-object v0, p0, Lcom/infraware/common/account/MailInputFilter;->filters:[Landroid/text/InputFilter;

    const/4 v1, 0x1

    new-instance v2, Lcom/infraware/common/account/MailInputFilter$2;

    invoke-direct {v2, p0}, Lcom/infraware/common/account/MailInputFilter$2;-><init>(Lcom/infraware/common/account/MailInputFilter;)V

    aput-object v2, v0, v1

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/common/account/MailInputFilter;)I
    .registers 2
    .parameter

    .prologue
    .line 15
    iget v0, p0, Lcom/infraware/common/account/MailInputFilter;->m_MaxLength:I

    return v0
.end method

.method static synthetic access$1(Lcom/infraware/common/account/MailInputFilter;C)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/infraware/common/account/MailInputFilter;->isValidChar(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/infraware/common/account/MailInputFilter;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/infraware/common/account/MailInputFilter;->onToastMessage(I)V

    return-void
.end method

.method private isValidChar(C)Z
    .registers 3
    .parameter "ch"

    .prologue
    .line 89
    const/16 v0, 0x30

    if-lt p1, v0, :cond_8

    const/16 v0, 0x39

    if-le p1, v0, :cond_28

    :cond_8
    const/16 v0, 0x61

    if-lt p1, v0, :cond_10

    const/16 v0, 0x7a

    if-le p1, v0, :cond_28

    :cond_10
    const/16 v0, 0x41

    if-lt p1, v0, :cond_18

    const/16 v0, 0x5a

    if-le p1, v0, :cond_28

    .line 90
    :cond_18
    const/16 v0, 0x2e

    if-eq p1, v0, :cond_28

    const/16 v0, 0x40

    if-eq p1, v0, :cond_28

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_28

    const/16 v0, 0x5f

    if-ne p1, v0, :cond_2a

    .line 92
    :cond_28
    const/4 v0, 0x1

    .line 94
    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private onToastMessage(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/infraware/common/account/MailInputFilter;->m_ToastMsg:Landroid/widget/Toast;

    if-nez v0, :cond_13

    .line 78
    iget-object v0, p0, Lcom/infraware/common/account/MailInputFilter;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/account/MailInputFilter;->m_ToastMsg:Landroid/widget/Toast;

    .line 81
    :goto_d
    iget-object v0, p0, Lcom/infraware/common/account/MailInputFilter;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 82
    return-void

    .line 80
    :cond_13
    iget-object v0, p0, Lcom/infraware/common/account/MailInputFilter;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_d
.end method


# virtual methods
.method public getFilters()[Landroid/text/InputFilter;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/infraware/common/account/MailInputFilter;->filters:[Landroid/text/InputFilter;

    return-object v0
.end method
