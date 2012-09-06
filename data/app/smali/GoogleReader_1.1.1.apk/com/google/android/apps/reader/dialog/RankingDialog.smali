.class public Lcom/google/android/apps/reader/dialog/RankingDialog;
.super Lcom/google/android/apps/reader/dialog/DataDialog;
.source "RankingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field protected static final ARG_TITLE:Ljava/lang/String; = "reader:title"


# instance fields
.field private mRankingKeys:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/apps/reader/dialog/DataDialog;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "data"
    .parameter "title"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/apps/reader/dialog/DataDialog;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "reader:data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 48
    const-string v1, "reader:title"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/dialog/RankingDialog;->setArguments(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method

.method private getRankingKeyIndex()I
    .registers 4

    .prologue
    .line 66
    iget-object v2, p0, Lcom/google/android/apps/reader/dialog/RankingDialog;->mData:Landroid/net/Uri;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/google/android/apps/reader/dialog/RankingDialog;->mData:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getRanking(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 67
    .local v1, ranking:Ljava/lang/String;
    :goto_b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    iget-object v2, p0, Lcom/google/android/apps/reader/dialog/RankingDialog;->mRankingKeys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_23

    .line 68
    iget-object v2, p0, Lcom/google/android/apps/reader/dialog/RankingDialog;->mRankingKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    move v2, v0

    .line 72
    :goto_1c
    return v2

    .line 66
    .end local v0           #i:I
    .end local v1           #ranking:Ljava/lang/String;
    :cond_1d
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_b

    .line 67
    .restart local v0       #i:I
    .restart local v1       #ranking:Ljava/lang/String;
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 72
    :cond_23
    const/4 v2, -0x1

    goto :goto_1c
.end method

.method private setRankingPreference(Ljava/lang/String;)Z
    .registers 6
    .parameter "ranking"

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/RankingDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 97
    .local v1, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/google/android/apps/reader/dialog/RankingDialog;->mData:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 98
    .local v0, account:Lcom/google/android/accounts/Account;
    iget-object v3, p0, Lcom/google/android/apps/reader/dialog/RankingDialog;->mData:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getStreamId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, streamId:Ljava/lang/String;
    invoke-static {v1, v0, v2, p1}, Lcom/google/android/apps/reader/preference/StreamPreferences;->setRanking(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/reader/dialog/RankingDialog;->mRankingKeys:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 88
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/dialog/RankingDialog;->setRankingPreference(Ljava/lang/String;)Z

    .line 89
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 90
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/dialog/DataDialog;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/RankingDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/reader/dialog/RankingDialog;->mRankingKeys:[Ljava/lang/String;

    .line 58
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    .line 77
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/RankingDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/RankingDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "reader:title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 79
    invoke-direct {p0}, Lcom/google/android/apps/reader/dialog/RankingDialog;->getRankingKeyIndex()I

    move-result v1

    .line 81
    const v2, 0x7f070007

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
