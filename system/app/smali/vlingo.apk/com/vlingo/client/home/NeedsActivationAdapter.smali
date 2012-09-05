.class public Lcom/vlingo/client/home/NeedsActivationAdapter;
.super Landroid/widget/BaseAdapter;
.source "NeedsActivationAdapter.java"


# instance fields
.field isCheckingActivation:Z

.field private mContext:Landroid/content/Context;

.field m_onActivateButtonClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/home/NeedsActivationAdapter;->isCheckingActivation:Z

    .line 28
    iput-object p1, p0, Lcom/vlingo/client/home/NeedsActivationAdapter;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 40
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 50
    iget-object v5, p0, Lcom/vlingo/client/home/NeedsActivationAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f030029

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 51
    .local v4, row:Landroid/view/View;
    const v5, 0x7f0f0089

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 52
    .local v2, prog:Landroid/widget/ProgressBar;
    const v5, 0x7f0f009e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 53
    .local v0, btn:Landroid/widget/Button;
    const v5, 0x7f0f009a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 54
    .local v1, hint:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/vlingo/client/home/NeedsActivationAdapter;->m_onActivateButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 56
    .local v3, res:Landroid/content/res/Resources;
    iget-boolean v5, p0, Lcom/vlingo/client/home/NeedsActivationAdapter;->isCheckingActivation:Z

    if-eqz v5, :cond_4a

    .line 57
    const v5, 0x7f0902d0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 59
    invoke-virtual {v2, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 71
    :goto_49
    return-object v4

    .line 61
    :cond_4a
    const v5, 0x7f0902d8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 63
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 64
    const-string v5, "hello_request_complete"

    invoke-static {v5, v8}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 65
    const v5, 0x7f0902d1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_49

    .line 68
    :cond_6d
    const v5, 0x7f0902cf

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_49
.end method

.method setOnActivateButtonClick(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter "onActivateButtonClick"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/vlingo/client/home/NeedsActivationAdapter;->m_onActivateButtonClick:Landroid/view/View$OnClickListener;

    .line 47
    return-void
.end method
