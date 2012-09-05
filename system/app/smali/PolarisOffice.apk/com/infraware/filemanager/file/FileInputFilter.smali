.class public Lcom/infraware/filemanager/file/FileInputFilter;
.super Ljava/lang/Object;
.source "FileInputFilter.java"


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
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/text/InputFilter;

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileInputFilter;->filters:[Landroid/text/InputFilter;

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/filemanager/file/FileInputFilter;->m_ToastMsg:Landroid/widget/Toast;

    .line 16
    const/16 v0, 0x3c

    iput v0, p0, Lcom/infraware/filemanager/file/FileInputFilter;->m_nMaxLength:I

    .line 29
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileInputFilter;->context:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileInputFilter;->filters:[Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/infraware/filemanager/file/FileInputFilter$1;

    invoke-direct {v2, p0}, Lcom/infraware/filemanager/file/FileInputFilter$1;-><init>(Lcom/infraware/filemanager/file/FileInputFilter;)V

    aput-object v2, v0, v1

    .line 67
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileInputFilter;->filters:[Landroid/text/InputFilter;

    const/4 v1, 0x1

    new-instance v2, Lcom/infraware/filemanager/file/FileInputFilter$2;

    invoke-direct {v2, p0}, Lcom/infraware/filemanager/file/FileInputFilter$2;-><init>(Lcom/infraware/filemanager/file/FileInputFilter;)V

    aput-object v2, v0, v1

    .line 83
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/filemanager/file/FileInputFilter;)I
    .registers 2
    .parameter

    .prologue
    .line 16
    iget v0, p0, Lcom/infraware/filemanager/file/FileInputFilter;->m_nMaxLength:I

    return v0
.end method

.method static synthetic access$1(Lcom/infraware/filemanager/file/FileInputFilter;C)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/infraware/filemanager/file/FileInputFilter;->isValidChar(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/infraware/filemanager/file/FileInputFilter;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/infraware/filemanager/file/FileInputFilter;->onToastMessage(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/infraware/filemanager/file/FileInputFilter;C)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/infraware/filemanager/file/FileInputFilter;->isCarriageReturn(C)Z

    move-result v0

    return v0
.end method

.method private isCarriageReturn(C)Z
    .registers 3
    .parameter "ch"

    .prologue
    .line 115
    const/16 v0, 0xa

    if-eq p1, v0, :cond_10

    const/16 v0, 0xd

    if-eq p1, v0, :cond_10

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_10

    const/16 v0, 0x115f

    if-ne p1, v0, :cond_12

    .line 117
    :cond_10
    const/4 v0, 0x1

    .line 119
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isValidChar(C)Z
    .registers 3
    .parameter "ch"

    .prologue
    .line 105
    const/16 v0, 0x5c

    if-eq p1, v0, :cond_34

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_34

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_34

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_34

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_34

    .line 106
    const/16 v0, 0x3c

    if-eq p1, v0, :cond_34

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_34

    const/16 v0, 0x7c

    if-eq p1, v0, :cond_34

    const/16 v0, 0x22

    if-eq p1, v0, :cond_34

    const/16 v0, 0xa

    if-eq p1, v0, :cond_34

    const/16 v0, 0xd

    if-eq p1, v0, :cond_34

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_34

    const/16 v0, 0x115f

    if-ne p1, v0, :cond_36

    .line 108
    :cond_34
    const/4 v0, 0x0

    .line 110
    :goto_35
    return v0

    :cond_36
    const/4 v0, 0x1

    goto :goto_35
.end method

.method private onToastMessage(I)V
    .registers 7
    .parameter "err"

    .prologue
    const/4 v4, 0x0

    .line 87
    const/16 v2, -0xa

    if-ne p1, v2, :cond_33

    .line 89
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileInputFilter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, formattedString:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/infraware/filemanager/file/FileInputFilter;->m_nMaxLength:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .end local v1           #formattedString:Ljava/lang/String;
    .local v0, errMsg:Ljava/lang/String;
    :goto_21
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileInputFilter;->m_ToastMsg:Landroid/widget/Toast;

    if-nez v2, :cond_3a

    .line 96
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileInputFilter;->context:Landroid/content/Context;

    invoke-static {v2, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/filemanager/file/FileInputFilter;->m_ToastMsg:Landroid/widget/Toast;

    .line 100
    :goto_2d
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileInputFilter;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 101
    return-void

    .line 93
    .end local v0           #errMsg:Ljava/lang/String;
    :cond_33
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileInputFilter;->context:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/infraware/filemanager/porting/FileError;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #errMsg:Ljava/lang/String;
    goto :goto_21

    .line 98
    :cond_3a
    iget-object v2, p0, Lcom/infraware/filemanager/file/FileInputFilter;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v2, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2d
.end method


# virtual methods
.method public getFilters()[Landroid/text/InputFilter;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileInputFilter;->filters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public setMaxLength(I)V
    .registers 2
    .parameter "maxLength"

    .prologue
    .line 25
    iput p1, p0, Lcom/infraware/filemanager/file/FileInputFilter;->m_nMaxLength:I

    .line 26
    return-void
.end method
