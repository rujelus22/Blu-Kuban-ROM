.class Lcom/google/googlenav/friend/android/j;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/android/InviteActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/android/InviteActivity;Landroid/content/Context;IILjava/util/List;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/google/googlenav/friend/android/j;->a:Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    if-nez p2, :cond_22

    .line 341
    iget-object v0, p0, Lcom/google/googlenav/friend/android/j;->a:Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/InviteActivity;->b(Lcom/google/googlenav/friend/android/InviteActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040097

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/android/InviteItemView;

    move-object p2, v0

    .line 345
    :goto_13
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/android/j;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/android/n;

    .line 347
    iget-object v1, v0, Lcom/google/googlenav/friend/android/n;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/googlenav/friend/android/n;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v0, v2}, Lcom/google/googlenav/friend/android/InviteItemView;->set(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 348
    return-object p2

    .line 343
    :cond_22
    check-cast p2, Lcom/google/googlenav/friend/android/InviteItemView;

    goto :goto_13
.end method
