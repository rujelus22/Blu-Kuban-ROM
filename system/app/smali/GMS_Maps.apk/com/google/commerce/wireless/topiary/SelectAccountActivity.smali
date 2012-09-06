.class public Lcom/google/commerce/wireless/topiary/SelectAccountActivity;
.super Landroid/app/ListActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/SelectAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.commerce.wireless.topiary.ORIGINAL_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/SelectAccountActivity;->a:Landroid/content/Intent;

    .line 40
    new-instance v0, Lcom/google/commerce/wireless/topiary/R;

    invoke-direct {v0, p0, p0}, Lcom/google/commerce/wireless/topiary/R;-><init>(Lcom/google/commerce/wireless/topiary/SelectAccountActivity;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/commerce/wireless/topiary/SelectAccountActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 41
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 47
    invoke-static {p0, v0}, Lcom/google/commerce/wireless/topiary/b;->a(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 49
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/SelectAccountActivity;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/google/commerce/wireless/topiary/b;->a(Landroid/accounts/Account;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 50
    const/high16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v0}, Lcom/google/commerce/wireless/topiary/SelectAccountActivity;->startActivity(Landroid/content/Intent;)V

    .line 52
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/SelectAccountActivity;->finish()V

    .line 53
    return-void
.end method
