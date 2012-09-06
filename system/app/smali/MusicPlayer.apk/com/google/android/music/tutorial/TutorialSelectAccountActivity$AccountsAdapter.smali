.class Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TutorialSelectAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 341
    iput-object p1, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    .line 342
    const v0, 0x7f040065

    const/4 v1, -0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 343
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 344
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 350
    if-nez p2, :cond_2d

    .line 351
    iget-object v3, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040065

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 352
    .local v2, view:Landroid/view/View;
    new-instance v3, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter$ViewHolder;

    invoke-direct {v3, p0, v2}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter$ViewHolder;-><init>(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 357
    :goto_14
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter$ViewHolder;

    .line 359
    .local v1, vh:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 360
    .local v0, account:Landroid/accounts/Account;
    #setter for: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter$ViewHolder;->account:Landroid/accounts/Account;
    invoke-static {v1, v0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter$ViewHolder;->access$1002(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter$ViewHolder;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 361
    #getter for: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter$ViewHolder;->title:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter$ViewHolder;->access$1100(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    return-object v2

    .line 354
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #vh:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter$ViewHolder;
    .end local v2           #view:Landroid/view/View;
    :cond_2d
    move-object v2, p2

    .restart local v2       #view:Landroid/view/View;
    goto :goto_14
.end method
