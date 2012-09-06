.class final Lcom/twitter/android/i;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/android/client/b;

.field private c:[Lcom/twitter/android/gf;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/client/b;[Lcom/twitter/android/gf;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/twitter/android/i;->b:Lcom/twitter/android/client/b;

    iput-object p3, p0, Lcom/twitter/android/i;->c:[Lcom/twitter/android/gf;

    iput-object p4, p0, Lcom/twitter/android/i;->d:Ljava/lang/String;

    return-void
.end method

.method private a(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/twitter/android/i;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/i;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/twitter/android/i;->notifyDataSetChanged()V

    return-void
.end method

.method public final a([Lcom/twitter/android/gf;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/i;->c:[Lcom/twitter/android/gf;

    invoke-virtual {p0}, Lcom/twitter/android/i;->notifyDataSetChanged()V

    return-void
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/i;->c:[Lcom/twitter/android/gf;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/twitter/android/i;->c:[Lcom/twitter/android/gf;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 6

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/twitter/android/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/twitter/android/i;->c:[Lcom/twitter/android/gf;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/twitter/android/i;->c:[Lcom/twitter/android/gf;

    array-length v0, v0

    if-gt v0, v3, :cond_20

    :cond_10
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/i;->a:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "add_account"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/i;->a:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1f

    :cond_2a
    iget-object v0, p0, Lcom/twitter/android/i;->c:[Lcom/twitter/android/gf;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/twitter/android/gf;->b:Lcom/twitter/android/api/ac;

    if-nez v0, :cond_34

    const/4 v0, 0x0

    goto :goto_1f

    :cond_34
    iget-object v0, p0, Lcom/twitter/android/i;->c:[Lcom/twitter/android/gf;

    aget-object v0, v0, p1

    goto :goto_1f
.end method

.method public final getItemId(I)J
    .registers 5

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1}, Lcom/twitter/android/i;->a(I)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    :goto_8
    return-wide v0

    :cond_9
    iget-object v2, p0, Lcom/twitter/android/i;->c:[Lcom/twitter/android/gf;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/twitter/android/gf;->b:Lcom/twitter/android/api/ac;

    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/twitter/android/i;->c:[Lcom/twitter/android/gf;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/twitter/android/gf;->b:Lcom/twitter/android/api/ac;

    iget-wide v0, v0, Lcom/twitter/android/api/ac;->a:J

    goto :goto_8
.end method

.method public final getItemViewType(I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/twitter/android/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1}, Lcom/twitter/android/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_50

    if-nez p2, :cond_3f

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030043

    invoke-virtual {v0, v1, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/twitter/android/ey;

    invoke-direct {v0, p2}, Lcom/twitter/android/ey;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_21
    iget-object v1, p0, Lcom/twitter/android/i;->c:[Lcom/twitter/android/gf;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/twitter/android/i;->c:[Lcom/twitter/android/gf;

    array-length v1, v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_46

    :cond_2b
    iget-object v0, v0, Lcom/twitter/android/ey;->b:Landroid/widget/TextView;

    const v1, 0x7f0b0163

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object v1, p2

    :goto_34
    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    invoke-virtual {p0}, Lcom/twitter/android/i;->getCount()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    return-object v1

    :cond_3f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ey;

    goto :goto_21

    :cond_46
    iget-object v0, v0, Lcom/twitter/android/ey;->b:Landroid/widget/TextView;

    const v1, 0x7f0b0168

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object v1, p2

    goto :goto_34

    :cond_50
    if-nez p2, :cond_87

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

    move-object v2, v0

    :goto_6d
    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/UserView;

    iget-object v3, p0, Lcom/twitter/android/i;->c:[Lcom/twitter/android/gf;

    aget-object v3, v3, p1

    iget-object v4, v3, Lcom/twitter/android/gf;->b:Lcom/twitter/android/api/ac;

    if-nez v4, :cond_90

    invoke-virtual {v0, v8}, Lcom/twitter/android/widget/UserView;->a(Landroid/graphics/Bitmap;)V

    iget-object v3, v3, Lcom/twitter/android/gf;->a:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v8}, Lcom/twitter/android/widget/UserView;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_82
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_34

    :cond_87
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object v2, v0

    move-object v1, p2

    goto :goto_6d

    :cond_90
    iget-object v5, v4, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    iget-wide v6, v4, Lcom/twitter/android/api/ac;->a:J

    if-eqz v5, :cond_c1

    iget-object v8, p0, Lcom/twitter/android/i;->b:Lcom/twitter/android/client/b;

    invoke-virtual {v8, v6, v7, v5}, Lcom/twitter/android/client/b;->g(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/twitter/android/widget/UserView;->a(Landroid/graphics/Bitmap;)V

    :goto_9f
    iget-object v5, v4, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    iget-object v6, v4, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/twitter/android/widget/UserView;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, v4, Lcom/twitter/android/api/ac;->h:Z

    invoke-virtual {v0, v5}, Lcom/twitter/android/widget/UserView;->b(Z)V

    iget-boolean v4, v4, Lcom/twitter/android/api/ac;->i:Z

    invoke-virtual {v0, v4}, Lcom/twitter/android/widget/UserView;->c(Z)V

    iget-object v0, v3, Lcom/twitter/android/gf;->a:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_34

    :cond_c1
    invoke-virtual {v0, v8}, Lcom/twitter/android/widget/UserView;->a(Landroid/graphics/Bitmap;)V

    goto :goto_9f
.end method

.method public final getViewTypeCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
