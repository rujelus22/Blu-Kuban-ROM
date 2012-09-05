.class public abstract Lcom/sec/android/socialhub/view/SearchBaseLayout;
.super Landroid/widget/LinearLayout;
.source "SearchBaseLayout.java"

# interfaces
.implements Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;
.implements Lcom/sec/android/socialhub/view/SocialHubSearchBar$ISearchHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;,
        Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;
    }
.end annotation


# instance fields
.field protected mAccountbar:Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;

.field protected mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;",
            ">;"
        }
    .end annotation
.end field

.field protected mDlgMgr:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

.field protected mGatewayButton:Landroid/widget/Button;

.field private mHideIME:Ljava/lang/Runnable;

.field protected mIMEmanager:Landroid/view/inputmethod/InputMethodManager;

.field public mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

.field protected mSearchDialog:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;

.field protected mSearchHandler:Landroid/os/Handler;

.field protected mSelectedPos:I

.field private mShowIME:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mAccountbar:Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;

    .line 50
    iput-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    .line 52
    iput-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mGatewayButton:Landroid/widget/Button;

    .line 54
    iput-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchDialog:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;

    .line 56
    iput-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mArrayList:Ljava/util/ArrayList;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSelectedPos:I

    .line 63
    iput-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mIMEmanager:Landroid/view/inputmethod/InputMethodManager;

    .line 65
    iput-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mDlgMgr:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    .line 67
    iput-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchHandler:Landroid/os/Handler;

    .line 200
    new-instance v0, Lcom/sec/android/socialhub/view/SearchBaseLayout$3;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/view/SearchBaseLayout$3;-><init>(Lcom/sec/android/socialhub/view/SearchBaseLayout;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mShowIME:Ljava/lang/Runnable;

    .line 221
    new-instance v0, Lcom/sec/android/socialhub/view/SearchBaseLayout$4;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/view/SearchBaseLayout$4;-><init>(Lcom/sec/android/socialhub/view/SearchBaseLayout;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mHideIME:Ljava/lang/Runnable;

    .line 75
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->initialize(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mAccountbar:Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;

    .line 50
    iput-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    .line 52
    iput-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mGatewayButton:Landroid/widget/Button;

    .line 54
    iput-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchDialog:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;

    .line 56
    iput-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mArrayList:Ljava/util/ArrayList;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSelectedPos:I

    .line 63
    iput-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mIMEmanager:Landroid/view/inputmethod/InputMethodManager;

    .line 65
    iput-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mDlgMgr:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    .line 67
    iput-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchHandler:Landroid/os/Handler;

    .line 200
    new-instance v0, Lcom/sec/android/socialhub/view/SearchBaseLayout$3;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/view/SearchBaseLayout$3;-><init>(Lcom/sec/android/socialhub/view/SearchBaseLayout;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mShowIME:Ljava/lang/Runnable;

    .line 221
    new-instance v0, Lcom/sec/android/socialhub/view/SearchBaseLayout$4;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/view/SearchBaseLayout$4;-><init>(Lcom/sec/android/socialhub/view/SearchBaseLayout;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mHideIME:Ljava/lang/Runnable;

    .line 81
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->initialize(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method private initSearchEditText()V
    .registers 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 272
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 86
    iput-object p1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mContext:Landroid/content/Context;

    .line 89
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->getSearchBar(Landroid/content/Context;)Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    .line 91
    new-instance v0, Lcom/sec/android/socialhub/view/SearchBaseLayout$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/view/SearchBaseLayout$1;-><init>(Lcom/sec/android/socialhub/view/SearchBaseLayout;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchHandler:Landroid/os/Handler;

    .line 116
    new-instance v0, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mDlgMgr:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    .line 117
    new-instance v0, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;

    invoke-direct {v0, p1}, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mAccountbar:Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;

    .line 120
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mAccountbar:Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 124
    .local v7, param:Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 125
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v0, v7}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mAccountbar:Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .end local v7           #param:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 128
    .restart local v7       #param:Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 129
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mAccountbar:Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;

    invoke-virtual {v0, v7}, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mAccountbar:Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->getButton()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mGatewayButton:Landroid/widget/Button;

    .line 132
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mGatewayButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/socialhub/view/SearchBaseLayout$2;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/view/SearchBaseLayout$2;-><init>(Lcom/sec/android/socialhub/view/SearchBaseLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->setOnQueryHandler(Lcom/sec/android/socialhub/view/SocialHubSearchBar$ISearchHandler;)V

    .line 142
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->getSearchFieldList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mArrayList:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;

    const/4 v4, 0x0

    const v1, 0x7f080008

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mArrayList:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;-><init>(Lcom/sec/android/socialhub/view/SearchBaseLayout;Landroid/content/Context;Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchDialog:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;

    .line 146
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mIMEmanager:Landroid/view/inputmethod/InputMethodManager;

    .line 148
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->onCreate(Landroid/content/Context;)V

    .line 149
    return-void
.end method


# virtual methods
.method public displayAccount(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;Ljava/lang/String;)V
    .registers 4
    .parameter "account"
    .parameter "all"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mAccountbar:Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->displayAccount(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public getAccountBar()Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mAccountbar:Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;

    return-object v0
.end method

.method public getSearchBar()Lcom/sec/android/socialhub/view/SocialHubSearchBar;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    return-object v0
.end method

.method protected getSearchBar(Landroid/content/Context;)Lcom/sec/android/socialhub/view/SocialHubSearchBar;
    .registers 3
    .parameter "context"

    .prologue
    .line 261
    new-instance v0, Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-direct {v0, p1}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract getSearchFieldList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;",
            ">;"
        }
    .end annotation
.end method

.method public invokeButtonClick()V
    .registers 1

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->onCreateSearchButton()V

    .line 318
    return-void
.end method

.method public invokeSearchText(Ljava/lang/String;)V
    .registers 7
    .parameter "str"

    .prologue
    const/4 v4, 0x1

    .line 302
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-ne v1, v4, :cond_17

    .line 304
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 305
    const-string v1, "SearchBaseLayout"

    const-string v2, "invokeSearchText()"

    const-string v3, "remove handle messages"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_17
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 309
    .local v0, msg:Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 310
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 311
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 312
    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 154
    return-void
.end method

.method public onCreateSearchButton()V
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchDialog:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->showDialog()V

    .line 297
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchDialog:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 174
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 175
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->onDestory()V

    .line 176
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mAccountbar:Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->onDestroy()V

    .line 178
    iput-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchDialog:Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;

    .line 179
    iput-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    .line 180
    iput-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mAccountbar:Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;

    .line 182
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->removeAllViews()V

    .line 183
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->removeAllViewsInLayout()V

    .line 184
    return-void
.end method

.method public onGatewayButtonClick()V
    .registers 1

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->initSearchEditText()V

    .line 280
    return-void
.end method

.method public onMessageApiCalled(III)V
    .registers 8
    .parameter "reqID"
    .parameter "reqType"
    .parameter "reqOption"

    .prologue
    .line 556
    const-string v0, "SearchBaseLayout"

    const-string v1, "onMessageApiCalled()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reqType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method public onMessageReponse(IIZILjava/lang/String;)V
    .registers 10
    .parameter "reqID"
    .parameter "reqType"
    .parameter "bSuccess"
    .parameter "errorCode"
    .parameter "reason"

    .prologue
    .line 546
    const-string v0, "SearchBaseLayout"

    const-string v1, "onMessageReponse()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reqID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reqType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bSuccess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 164
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->getSearchModel()Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;->getTextResource()I

    move-result v1

    const v2, 0x7f0800e2

    if-ne v1, v2, :cond_24

    .line 166
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    iget-object v0, v1, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->date:Ljava/util/Date;

    .line 167
    .local v0, date:Ljava/util/Date;
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    iget-object v1, v1, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/socialhub/util/SocialHubDateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    .end local v0           #date:Ljava/util/Date;
    :cond_24
    return-void
.end method

.method public onSearchText(Ljava/lang/String;Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;)V
    .registers 3
    .parameter "str"
    .parameter "model"

    .prologue
    .line 289
    return-void
.end method

.method public showInputMethod(Z)V
    .registers 5
    .parameter "isShow"

    .prologue
    .line 188
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 190
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mShowIME:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    :goto_a
    return-void

    .line 194
    :cond_b
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mShowIME:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 195
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mHideIME:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a
.end method
