.class Lcom/google/googlenav/friend/android/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Landroid/widget/ArrayAdapter;

.field final synthetic c:Lcom/google/googlenav/friend/android/InviteActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/android/InviteActivity;Landroid/widget/ListView;Landroid/widget/ArrayAdapter;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/friend/android/k;->c:Lcom/google/googlenav/friend/android/InviteActivity;

    iput-object p2, p0, Lcom/google/googlenav/friend/android/k;->a:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/google/googlenav/friend/android/k;->b:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3f

    iget-object v0, p0, Lcom/google/googlenav/friend/android/k;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_31

    invoke-static {v2}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v2, :cond_2c

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_29

    iget-object v5, p0, Lcom/google/googlenav/friend/android/k;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v4}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_2c
    iget-object v0, p0, Lcom/google/googlenav/friend/android/k;->c:Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-static {v0, v3}, Lcom/google/googlenav/friend/android/InviteActivity;->a(Lcom/google/googlenav/friend/android/InviteActivity;Ljava/util/List;)V

    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/google/googlenav/friend/android/k;->c:Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/InviteActivity;->d(Lcom/google/googlenav/friend/android/InviteActivity;)I

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/google/googlenav/friend/android/k;->c:Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/android/InviteActivity;->finish()V

    :cond_3e
    return-void

    :cond_3f
    const/4 v0, -0x2

    if-ne p2, v0, :cond_31

    iget-object v0, p0, Lcom/google/googlenav/friend/android/k;->c:Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/InviteActivity;->c(Lcom/google/googlenav/friend/android/InviteActivity;)Lcom/google/googlenav/friend/android/o;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlenav/friend/android/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_31
.end method
