.class public Lcom/android/email/EmailAddressAdapter;
.super Lcom/android/common/contacts/BaseEmailAddressAdapter;
.source "EmailAddressAdapter.java"

# interfaces
.implements Lcom/android/ex/chips/AccountSpecifier;


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/EmailAddressAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "view"
    .parameter "directoryType"
    .parameter "directoryName"
    .parameter "displayName"
    .parameter "emailAddress"

    .prologue
    .line 57
    const v2, 0x7f0e004f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    .local v0, text1:Landroid/widget/TextView;
    const v2, 0x7f0e00c5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 59
    .local v1, text2:Landroid/widget/TextView;
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method protected bindViewLoading(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "view"
    .parameter "directoryType"
    .parameter "directoryName"

    .prologue
    .line 65
    const v2, 0x7f0e004f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 66
    .local v1, text1:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/email/EmailAddressAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080169

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_24

    .end local p2
    :goto_1a
    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, text:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void

    .end local v0           #text:Ljava/lang/String;
    .restart local p2
    :cond_24
    move-object p2, p3

    .line 66
    goto :goto_1a
.end method

.method protected inflateItemView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "parent"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/email/EmailAddressAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected inflateItemViewLoading(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "parent"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/email/EmailAddressAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
