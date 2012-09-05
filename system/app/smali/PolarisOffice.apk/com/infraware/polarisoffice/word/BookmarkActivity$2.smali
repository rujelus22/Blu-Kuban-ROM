.class Lcom/infraware/polarisoffice/word/BookmarkActivity$2;
.super Landroid/os/Handler;
.source "BookmarkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/word/BookmarkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/word/BookmarkActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    .line 107
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/word/BookmarkActivity$2;)Lcom/infraware/polarisoffice/word/BookmarkActivity;
    .registers 2
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 109
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 110
    .local v2, bundle:Landroid/os/Bundle;
    const-string v5, "LIST_RIGHT_BTN"

    invoke-virtual {v2, v5, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 112
    .local v0, bRightBtn:Z
    iget-object v5, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity;->mbClick:Z
    invoke-static {v5}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->access$0(Lcom/infraware/polarisoffice/word/BookmarkActivity;)Z

    move-result v5

    if-nez v5, :cond_aa

    .line 114
    if-eqz v0, :cond_aa

    .line 116
    iget-object v5, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    const-string v6, "BUTTON_POS"

    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    #setter for: Lcom/infraware/polarisoffice/word/BookmarkActivity;->mBtnPos:I
    invoke-static {v5, v6}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->access$3(Lcom/infraware/polarisoffice/word/BookmarkActivity;I)V

    .line 117
    iget-object v5, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity;->mBtnPos:I
    invoke-static {v5}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->access$4(Lcom/infraware/polarisoffice/word/BookmarkActivity;)I

    move-result v5

    if-ltz v5, :cond_aa

    .line 119
    iget-object v5, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    #setter for: Lcom/infraware/polarisoffice/word/BookmarkActivity;->mbClick:Z
    invoke-static {v5, v8}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->access$5(Lcom/infraware/polarisoffice/word/BookmarkActivity;Z)V

    .line 120
    iget-object v5, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    iget-object v5, v5, Lcom/infraware/polarisoffice/word/BookmarkActivity;->mSrcListItem:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity;->mBtnPos:I
    invoke-static {v6}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->access$4(Lcom/infraware/polarisoffice/word/BookmarkActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/infraware/polarisoffice/common/MultiListItem;

    .line 121
    .local v4, item:Lcom/infraware/polarisoffice/common/MultiListItem;
    iget-object v5, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    invoke-virtual {v5}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08021f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, deleteStr:Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/common/MultiListItem;->getText1()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 123
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v5, ""

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 126
    new-instance v5, Lcom/infraware/polarisoffice/word/BookmarkActivity$2$1;

    invoke-direct {v5, p0}, Lcom/infraware/polarisoffice/word/BookmarkActivity$2$1;-><init>(Lcom/infraware/polarisoffice/word/BookmarkActivity$2;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 139
    new-instance v5, Lcom/infraware/polarisoffice/word/BookmarkActivity$2$2;

    invoke-direct {v5, p0}, Lcom/infraware/polarisoffice/word/BookmarkActivity$2$2;-><init>(Lcom/infraware/polarisoffice/word/BookmarkActivity$2;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 144
    iget-object v5, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    const v6, 0x7f080046

    new-instance v7, Lcom/infraware/polarisoffice/word/BookmarkActivity$2$3;

    invoke-direct {v7, p0}, Lcom/infraware/polarisoffice/word/BookmarkActivity$2$3;-><init>(Lcom/infraware/polarisoffice/word/BookmarkActivity$2;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 159
    const v7, 0x7f080047

    new-instance v8, Lcom/infraware/polarisoffice/word/BookmarkActivity$2$4;

    invoke-direct {v8, p0}, Lcom/infraware/polarisoffice/word/BookmarkActivity$2$4;-><init>(Lcom/infraware/polarisoffice/word/BookmarkActivity$2;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 166
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 144
    #setter for: Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_AlertDialog:Landroid/app/AlertDialog;
    invoke-static {v5, v6}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->access$9(Lcom/infraware/polarisoffice/word/BookmarkActivity;Landroid/app/AlertDialog;)V

    .line 167
    iget-object v5, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_AlertDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->access$10(Lcom/infraware/polarisoffice/word/BookmarkActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 168
    iget-object v5, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$2;->this$0:Lcom/infraware/polarisoffice/word/BookmarkActivity;

    #getter for: Lcom/infraware/polarisoffice/word/BookmarkActivity;->m_AlertDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/infraware/polarisoffice/word/BookmarkActivity;->access$10(Lcom/infraware/polarisoffice/word/BookmarkActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 173
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v3           #deleteStr:Ljava/lang/String;
    .end local v4           #item:Lcom/infraware/polarisoffice/common/MultiListItem;
    :cond_aa
    return-void
.end method
