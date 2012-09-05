.class public Lcom/infraware/polarisoffice/common/InsertTableActivity;
.super Lcom/infraware/common/baseactivity/BaseActivity;
.source "InsertTableActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/common/InsertTableActivity$TouchListenerClass;
    }
.end annotation


# static fields
.field private static final MAX_COLS:I = 0x14

.field private static final MAX_ROWS:I = 0x1e

.field private static final MIN_COLS_ROWS:I = 0x1


# instance fields
.field TocuchListener:Lcom/infraware/polarisoffice/common/InsertTableActivity$TouchListenerClass;

.field m_ColView:Landroid/widget/EditText;

.field m_DrawView:Lcom/infraware/polarisoffice/common/InsertTableDrawView;

.field m_RowView:Landroid/widget/EditText;

.field m_nCol:I

.field m_nRow:I

.field private m_toastMsg:Landroid/widget/Toast;

.field watcherCol:Landroid/text/TextWatcher;

.field watcherRow:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/infraware/common/baseactivity/BaseActivity;-><init>()V

    .line 26
    new-instance v0, Lcom/infraware/polarisoffice/common/InsertTableActivity$TouchListenerClass;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/InsertTableActivity$TouchListenerClass;-><init>(Lcom/infraware/polarisoffice/common/InsertTableActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity;->TocuchListener:Lcom/infraware/polarisoffice/common/InsertTableActivity$TouchListenerClass;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_toastMsg:Landroid/widget/Toast;

    .line 99
    new-instance v0, Lcom/infraware/polarisoffice/common/InsertTableActivity$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/InsertTableActivity$1;-><init>(Lcom/infraware/polarisoffice/common/InsertTableActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity;->watcherCol:Landroid/text/TextWatcher;

    .line 135
    new-instance v0, Lcom/infraware/polarisoffice/common/InsertTableActivity$2;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/InsertTableActivity$2;-><init>(Lcom/infraware/polarisoffice/common/InsertTableActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity;->watcherRow:Landroid/text/TextWatcher;

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/common/InsertTableActivity;II)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/infraware/polarisoffice/common/InsertTableActivity;->onShowFieldValueError(II)V

    return-void
.end method

.method private onShowFieldValueError(II)V
    .registers 9
    .parameter "nMin"
    .parameter "nMax"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/InsertTableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08026e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, formattedString:Ljava/lang/String;
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_toastMsg:Landroid/widget/Toast;

    if-nez v1, :cond_3b

    .line 91
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/InsertTableActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_toastMsg:Landroid/widget/Toast;

    .line 95
    :goto_2e
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_toastMsg:Landroid/widget/Toast;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 96
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_toastMsg:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 97
    return-void

    .line 93
    :cond_3b
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_toastMsg:Landroid/widget/Toast;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2e
.end method


# virtual methods
.method public OnCancel(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 191
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 192
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "id_inserttable_row"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    const-string v1, "id_inserttable_col"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0, v2, v0}, Lcom/infraware/polarisoffice/common/InsertTableActivity;->setResult(ILandroid/content/Intent;)V

    .line 195
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/InsertTableActivity;->finish()V

    .line 196
    return-void
.end method

.method public OnOk(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 184
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "id_inserttable_row"

    iget v2, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_nRow:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    const-string v1, "id_inserttable_col"

    iget v2, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_nCol:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/infraware/polarisoffice/common/InsertTableActivity;->setResult(ILandroid/content/Intent;)V

    .line 187
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/InsertTableActivity;->finish()V

    .line 188
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 175
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 176
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "id_inserttable_row"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    const-string v1, "id_inserttable_col"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v2, v0}, Lcom/infraware/polarisoffice/common/InsertTableActivity;->setResult(ILandroid/content/Intent;)V

    .line 179
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->onBackPressed()V

    .line 180
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x2

    .line 34
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v1, 0x7f03002b

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/InsertTableActivity;->setContentView(I)V

    .line 36
    const v1, 0x7f080114

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/InsertTableActivity;->setTitle(I)V

    .line 38
    const v1, 0x7f0c0119

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/InsertTableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/InsertTableDrawView;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_DrawView:Lcom/infraware/polarisoffice/common/InsertTableDrawView;

    .line 39
    const v1, 0x7f0c0117

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/InsertTableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_ColView:Landroid/widget/EditText;

    .line 40
    const v1, 0x7f0c0118

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/InsertTableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_RowView:Landroid/widget/EditText;

    .line 41
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_DrawView:Lcom/infraware/polarisoffice/common/InsertTableDrawView;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity;->TocuchListener:Lcom/infraware/polarisoffice/common/InsertTableActivity$TouchListenerClass;

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/InsertTableDrawView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 42
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_ColView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity;->watcherCol:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 43
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_RowView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity;->watcherRow:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 44
    iput v3, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_nRow:I

    .line 45
    iput v3, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_nCol:I

    .line 47
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/InsertTableActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 49
    const v1, 0x7f08021e

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 50
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 51
    return-void
.end method

.method public onLocaleChange(I)V
    .registers 3
    .parameter "nLocale"

    .prologue
    .line 200
    const v0, 0x7f080114

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/InsertTableActivity;->setTitle(I)V

    .line 201
    return-void
.end method
