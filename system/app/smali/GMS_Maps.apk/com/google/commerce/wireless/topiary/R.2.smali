.class Lcom/google/commerce/wireless/topiary/R;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/commerce/wireless/topiary/SelectAccountActivity;


# direct methods
.method public constructor <init>(Lcom/google/commerce/wireless/topiary/SelectAccountActivity;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/R;->a:Lcom/google/commerce/wireless/topiary/SelectAccountActivity;

    .line 57
    const v0, 0x1090003

    invoke-static {p2}, Lcom/google/commerce/wireless/topiary/b;->b(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 59
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/commerce/wireless/topiary/R;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 66
    const v1, 0x1020014

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-object v2
.end method
