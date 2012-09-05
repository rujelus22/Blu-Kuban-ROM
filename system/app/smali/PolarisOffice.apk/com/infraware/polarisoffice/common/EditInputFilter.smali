.class public Lcom/infraware/polarisoffice/common/EditInputFilter;
.super Ljava/lang/Object;
.source "EditInputFilter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private filters:[Landroid/text/InputFilter;

.field private m_ToastMsg:Landroid/widget/Toast;

.field private m_nMaxLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/text/InputFilter;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/EditInputFilter;->filters:[Landroid/text/InputFilter;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/EditInputFilter;->m_ToastMsg:Landroid/widget/Toast;

    .line 15
    const/16 v0, 0x3c

    iput v0, p0, Lcom/infraware/polarisoffice/common/EditInputFilter;->m_nMaxLength:I

    .line 28
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/EditInputFilter;->context:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/EditInputFilter;->filters:[Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/infraware/polarisoffice/common/EditInputFilter$1;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/common/EditInputFilter$1;-><init>(Lcom/infraware/polarisoffice/common/EditInputFilter;)V

    aput-object v2, v0, v1

    .line 52
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/EditInputFilter;->filters:[Landroid/text/InputFilter;

    const/4 v1, 0x1

    new-instance v2, Lcom/infraware/polarisoffice/common/EditInputFilter$2;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/common/EditInputFilter$2;-><init>(Lcom/infraware/polarisoffice/common/EditInputFilter;)V

    aput-object v2, v0, v1

    .line 68
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/common/EditInputFilter;)I
    .registers 2
    .parameter

    .prologue
    .line 15
    iget v0, p0, Lcom/infraware/polarisoffice/common/EditInputFilter;->m_nMaxLength:I

    return v0
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/common/EditInputFilter;C)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/common/EditInputFilter;->isCarriageReturn(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/common/EditInputFilter;)V
    .registers 1
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/EditInputFilter;->onToastMessage()V

    return-void
.end method

.method private isCarriageReturn(C)Z
    .registers 3
    .parameter "ch"

    .prologue
    .line 85
    const/16 v0, 0xa0

    if-ne p1, v0, :cond_6

    .line 87
    const/4 v0, 0x1

    .line 89
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private onToastMessage()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 72
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/EditInputFilter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08026f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, formattedString:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/infraware/polarisoffice/common/EditInputFilter;->m_nMaxLength:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, errMsg:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/EditInputFilter;->m_ToastMsg:Landroid/widget/Toast;

    if-nez v2, :cond_2f

    .line 76
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/EditInputFilter;->context:Landroid/content/Context;

    invoke-static {v2, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/common/EditInputFilter;->m_ToastMsg:Landroid/widget/Toast;

    .line 80
    :goto_29
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/EditInputFilter;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 81
    return-void

    .line 78
    :cond_2f
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/EditInputFilter;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v2, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_29
.end method


# virtual methods
.method public getFilters()[Landroid/text/InputFilter;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/EditInputFilter;->filters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public setMaxLength(I)V
    .registers 2
    .parameter "maxLength"

    .prologue
    .line 24
    iput p1, p0, Lcom/infraware/polarisoffice/common/EditInputFilter;->m_nMaxLength:I

    .line 25
    return-void
.end method
