.class public Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;
.super Landroid/widget/LinearLayout;
.source "SocialHubAccountBar.java"


# instance fields
.field private mEmail:Landroid/widget/TextView;

.field private mGateway:Landroid/widget/Button;

.field private mLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object v0, p0, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->mEmail:Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->mGateway:Landroid/widget/Button;

    .line 29
    iput-object v0, p0, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->mLayout:Landroid/widget/LinearLayout;

    .line 35
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->initialize(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-object v0, p0, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->mEmail:Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->mGateway:Landroid/widget/Button;

    .line 29
    iput-object v0, p0, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->mLayout:Landroid/widget/LinearLayout;

    .line 41
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->initialize(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 46
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 47
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->mLayout:Landroid/widget/LinearLayout;

    .line 48
    iget-object v1, p0, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->mLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00f2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->mGateway:Landroid/widget/Button;

    .line 49
    iget-object v1, p0, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->mLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00f1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->mEmail:Landroid/widget/TextView;

    .line 51
    iget-object v1, p0, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->mLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v1, p0, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->mGateway:Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 54
    return-void
.end method


# virtual methods
.method public displayAccount(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;Ljava/lang/String;)V
    .registers 9
    .parameter "account"
    .parameter "all"

    .prologue
    const/4 v5, 0x0

    .line 63
    if-eqz p1, :cond_7

    iget-object v4, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    if-nez v4, :cond_f

    .line 65
    :cond_7
    iget-object v4, p0, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->mLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 108
    :cond_e
    :goto_e
    return-void

    .line 69
    :cond_f
    iget-object v4, p0, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 71
    const-string v4, "0_All"

    iget-object v5, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 73
    iget-object v4, p0, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->mEmail:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v4, p0, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->mGateway:Landroid/widget/Button;

    invoke-virtual {v4, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 76
    :cond_2b
    const-string v4, "2_Email"

    iget-object v5, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3f

    const-string v4, "3_SevenEmail"

    iget-object v5, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 78
    :cond_3f
    iget-object v5, p0, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->mEmail:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->email:Ljava/lang/String;

    if-eqz v4, :cond_5e

    iget-object v4, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->email:Ljava/lang/String;

    :goto_47
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v4, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->displayName:Ljava/lang/String;

    if-eqz v4, :cond_61

    iget-object v4, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->displayName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_61

    .line 81
    iget-object v4, p0, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->mGateway:Landroid/widget/Button;

    iget-object v5, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 78
    :cond_5e
    const-string v4, ""

    goto :goto_47

    .line 83
    :cond_61
    iget-object v4, p0, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->mGateway:Landroid/widget/Button;

    iget-object v5, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 87
    :cond_69
    iget-object v5, p0, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->mEmail:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->email:Ljava/lang/String;

    if-eqz v4, :cond_a9

    iget-object v4, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->email:Ljava/lang/String;

    :goto_71
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v4, p0, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->mGateway:Landroid/widget/Button;

    iget-object v5, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const-string v4, "5_SNS"

    iget-object v5, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 92
    iget-object v4, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v0

    .line 93
    .local v0, adapter:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    if-eqz v0, :cond_e

    .line 97
    const/4 v4, 0x0

    :try_start_92
    invoke-interface {v0, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getStringResource(I)I

    move-result v3

    .line 98
    .local v3, resource:I
    iget-object v4, p0, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, ispName:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->mGateway:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_a1} :catch_a3

    goto/16 :goto_e

    .line 101
    .end local v2           #ispName:Ljava/lang/String;
    .end local v3           #resource:I
    :catch_a3
    move-exception v1

    .line 103
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_e

    .line 87
    .end local v0           #adapter:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_a9
    const-string v4, ""

    goto :goto_71
.end method

.method public getButton()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->mGateway:Landroid/widget/Button;

    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->removeAllViews()V

    .line 59
    return-void
.end method
