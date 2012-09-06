.class final Lcom/twitter/android/g;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/twitter/android/AccountsDialogActivity;


# direct methods
.method public constructor <init>(Lcom/twitter/android/AccountsDialogActivity;Landroid/content/Context;[Lcom/twitter/android/gf;)V
    .registers 5

    iput-object p1, p0, Lcom/twitter/android/g;->a:Lcom/twitter/android/AccountsDialogActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14

    const/4 v9, 0x0

    if-nez p2, :cond_5d

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f03

    invoke-virtual {v0, v1, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f070013

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, v0

    :goto_1e
    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/UserView;

    invoke-virtual {p0, p1}, Lcom/twitter/android/g;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/gf;

    iget-object v4, v2, Lcom/twitter/android/gf;->b:Lcom/twitter/android/api/ac;

    iget-object v5, v4, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    iget-wide v6, v4, Lcom/twitter/android/api/ac;->a:J

    if-eqz v5, :cond_66

    iget-object v8, p0, Lcom/twitter/android/g;->a:Lcom/twitter/android/AccountsDialogActivity;

    iget-object v8, v8, Lcom/twitter/android/AccountsDialogActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v8, v6, v7, v5}, Lcom/twitter/android/client/b;->g(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/twitter/android/widget/UserView;->a(Landroid/graphics/Bitmap;)V

    :goto_3a
    iget-object v5, v4, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    iget-object v6, v4, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/twitter/android/widget/UserView;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, v4, Lcom/twitter/android/api/ac;->h:Z

    invoke-virtual {v0, v5}, Lcom/twitter/android/widget/UserView;->b(Z)V

    iget-boolean v4, v4, Lcom/twitter/android/api/ac;->i:Z

    invoke-virtual {v0, v4}, Lcom/twitter/android/widget/UserView;->c(Z)V

    iget-object v0, v2, Lcom/twitter/android/gf;->a:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/g;->a:Lcom/twitter/android/AccountsDialogActivity;

    iget-object v2, v2, Lcom/twitter/android/AccountsDialogActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5c
    return-object v1

    :cond_5d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    move-object v1, p2

    goto :goto_1e

    :cond_66
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/twitter/android/widget/UserView;->a(Landroid/graphics/Bitmap;)V

    goto :goto_3a

    :cond_6b
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5c
.end method
