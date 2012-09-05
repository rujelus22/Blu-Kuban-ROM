.class Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TutorialSelectAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private account:Landroid/accounts/Account;

.field final synthetic this$1:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter "view"

    .prologue
    .line 346
    iput-object p1, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter$ViewHolder;->this$1:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    const/high16 v0, 0x7f10

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 348
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter$ViewHolder;)Landroid/accounts/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter$ViewHolder;->account:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter$ViewHolder;Landroid/accounts/Account;)Landroid/accounts/Account;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 341
    iput-object p1, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter$ViewHolder;->account:Landroid/accounts/Account;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method
