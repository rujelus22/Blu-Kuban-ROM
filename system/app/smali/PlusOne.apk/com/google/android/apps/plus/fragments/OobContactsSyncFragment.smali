.class public Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;
.super Landroid/support/v4/app/Fragment;
.source "OobContactsSyncFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment$ContactsSyncConfigListener;
    }
.end annotation


# instance fields
.field private mContactsSyncChoice:Landroid/widget/RadioGroup;

.field private mListener:Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment$ContactsSyncConfigListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    .line 80
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mContactsSyncChoice:Landroid/widget/RadioGroup;

    invoke-virtual {v5}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    .line 81
    .local v3, option:I
    const v5, 0x7f0d00f3

    if-ne v3, v5, :cond_25

    const/4 v4, 0x1

    .line 83
    .local v4, syncOn:Z
    :goto_c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 84
    .local v1, activity:Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 85
    .local v2, myIntent:Landroid/content/Intent;
    const-string v5, "account"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 87
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1, v0, v4}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveContactsSyncPreference(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 89
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mListener:Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment$ContactsSyncConfigListener;

    invoke-interface {v5}, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment$ContactsSyncConfigListener;->onContinue()V

    .line 90
    return-void

    .line 81
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v1           #activity:Landroid/support/v4/app/FragmentActivity;
    .end local v2           #myIntent:Landroid/content/Intent;
    .end local v4           #syncOn:Z
    :cond_25
    const/4 v4, 0x0

    goto :goto_c
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 55
    const v5, 0x7f030054

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 57
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0d0033

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 58
    .local v3, title:Landroid/widget/TextView;
    const v5, 0x7f070055

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 60
    const v5, 0x7f0d00fc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    .local v0, desc:Landroid/widget/TextView;
    const v5, 0x7f070056

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 63
    const v5, 0x7f0d0101

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 64
    .local v1, items:Landroid/widget/LinearLayout;
    const v5, 0x7f03004e

    invoke-virtual {p1, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    const v5, 0x7f0d00f2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mContactsSyncChoice:Landroid/widget/RadioGroup;

    .line 67
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mContactsSyncChoice:Landroid/widget/RadioGroup;

    const v6, 0x7f0d00f3

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 69
    const v5, 0x7f0d00f5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 70
    .local v2, mContinueButton:Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-object v4
.end method

.method public setContactsSyncConfigListener(Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment$ContactsSyncConfigListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mListener:Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment$ContactsSyncConfigListener;

    .line 47
    return-void
.end method
