.class public final Lcom/twitter/android/bu;
.super Landroid/support/v4/widget/CursorAdapter;


# instance fields
.field private final a:Lcom/twitter/android/client/b;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/twitter/android/client/b;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object p1, p0, Lcom/twitter/android/bu;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/twitter/android/bu;->a:Lcom/twitter/android/client/b;

    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/TweetView;

    iget-object v1, p0, Lcom/twitter/android/bu;->a:Lcom/twitter/android/client/b;

    iget v1, v1, Lcom/twitter/android/client/b;->f:F

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TweetView;->a(F)V

    new-instance v1, Lcom/twitter/android/provider/l;

    iget-object v2, p0, Lcom/twitter/android/bu;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p3}, Lcom/twitter/android/provider/l;-><init>(JLandroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/provider/m;)V

    check-cast p1, Lcom/twitter/android/widget/CardRowView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/bu;->getCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    return-void
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 9

    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iget-object v1, p0, Lcom/twitter/android/bu;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v1

    new-instance v3, Lcom/twitter/android/provider/l;

    invoke-direct {v3, v1, v2, v0}, Lcom/twitter/android/provider/l;-><init>(JLandroid/database/Cursor;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/twitter/android/bu;->b:Landroid/content/Context;

    const-class v5, Lcom/twitter/android/MessagesThreadActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "user_id"

    iget-wide v5, v3, Lcom/twitter/android/provider/l;->q:J

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "owner_id"

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "user_name"

    iget-object v2, v3, Lcom/twitter/android/provider/l;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f070065

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/TweetView;

    iget-object v2, p0, Lcom/twitter/android/bu;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/widget/am;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method
