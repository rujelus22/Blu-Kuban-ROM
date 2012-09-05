.class public Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;
.super Landroid/app/Activity;
.source "AxT9UmlautPopup.java"


# instance fields
.field keysClickListener:Landroid/view/View$OnClickListener;

.field mButtonlayout:Landroid/widget/LinearLayout;

.field private mExtendKeys:Landroid/widget/Button;

.field mNumberlayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup$2;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->keysClickListener:Landroid/view/View$OnClickListener;

    .line 14
    return-void
.end method

.method private sendCode(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "codechar"

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 117
    .local v0, code:Landroid/content/Intent;
    const-string v1, "commit_char"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v1, "altenative_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->finish()V

    .line 121
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v7, 0x32

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v3, 0x7f03000a

    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "umlautlist"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, umlautList:Ljava/lang/String;
    const v3, 0x7f070019

    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mNumberlayout:Landroid/widget/LinearLayout;

    .line 33
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, close:Landroid/widget/Button;
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup$1;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const/4 v1, 0x0

    .local v1, i:I
    :goto_30
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_7b

    .line 43
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mExtendKeys:Landroid/widget/Button;

    .line 44
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mExtendKeys:Landroid/widget/Button;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mExtendKeys:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 46
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mExtendKeys:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 47
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mExtendKeys:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mExtendKeys:Landroid/widget/Button;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 49
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mExtendKeys:Landroid/widget/Button;

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 50
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mExtendKeys:Landroid/widget/Button;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setHeight(I)V

    .line 51
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mExtendKeys:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setWidth(I)V

    .line 52
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mNumberlayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mExtendKeys:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 55
    :cond_7b
    const v3, 0x7f07001a

    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mButtonlayout:Landroid/widget/LinearLayout;

    .line 56
    const/4 v1, 0x0

    :goto_87
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_c8

    .line 57
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mExtendKeys:Landroid/widget/Button;

    .line 58
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mExtendKeys:Landroid/widget/Button;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->keysClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mExtendKeys:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mExtendKeys:Landroid/widget/Button;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setId(I)V

    .line 61
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mExtendKeys:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setWidth(I)V

    .line 62
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mExtendKeys:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 63
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mExtendKeys:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setFocusable(Z)V

    .line 64
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mButtonlayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mExtendKeys:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_87

    .line 66
    :cond_c8
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mButtonlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mExtendKeys:Landroid/widget/Button;

    .line 67
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mExtendKeys:Landroid/widget/Button;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setNextFocusLeftId(I)V

    .line 68
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mExtendKeys:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->requestFocus()Z

    .line 69
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020124

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setId(I)V

    .line 71
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setNextFocusRightId(I)V

    .line 72
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mButtonlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 88
    const/4 v4, 0x7

    if-lt p1, v4, :cond_2b

    const/16 v4, 0x10

    if-gt p1, v4, :cond_2b

    .line 89
    add-int/lit8 v1, p1, -0x7

    .line 90
    .local v1, number:I
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mButtonlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 91
    .local v3, viewNum:I
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mButtonlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 92
    .local v0, bt:Landroid/widget/Button;
    if-eqz v0, :cond_1e

    .line 93
    if-ne v1, v3, :cond_23

    .line 94
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->finish()V

    .line 112
    .end local v0           #bt:Landroid/widget/Button;
    .end local v1           #number:I
    .end local v3           #viewNum:I
    :cond_1e
    :goto_1e
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    return v4

    .line 96
    .restart local v0       #bt:Landroid/widget/Button;
    .restart local v1       #number:I
    .restart local v3       #viewNum:I
    :cond_23
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->sendCode(Ljava/lang/CharSequence;)V

    goto :goto_1e

    .line 99
    .end local v0           #bt:Landroid/widget/Button;
    .end local v1           #number:I
    .end local v3           #viewNum:I
    :cond_2b
    const/16 v4, 0x62

    if-ne p1, v4, :cond_4e

    .line 100
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mButtonlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 101
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_43

    .line 102
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mButtonlayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x42

    invoke-virtual {v4, v2, v5}, Landroid/widget/LinearLayout;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto :goto_1e

    .line 104
    :cond_43
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mButtonlayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto :goto_1e

    .line 106
    .end local v2           #v:Landroid/view/View;
    :cond_4e
    const/16 v4, 0x3e

    if-ne p1, v4, :cond_1e

    .line 107
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->mButtonlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->findFocus()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 108
    .restart local v0       #bt:Landroid/widget/Button;
    if-eqz v0, :cond_1e

    .line 109
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;->sendCode(Ljava/lang/CharSequence;)V

    goto :goto_1e
.end method
