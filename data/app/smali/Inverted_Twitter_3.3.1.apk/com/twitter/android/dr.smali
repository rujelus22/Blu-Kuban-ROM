.class final Lcom/twitter/android/dr;
.super Lcom/twitter/android/widget/c;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/twitter/android/client/b;

.field private final d:Lcom/twitter/android/ew;

.field private e:Lcom/twitter/android/api/ac;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/twitter/android/client/b;Lcom/twitter/android/widget/ai;)V
    .registers 12

    const/4 v2, 0x0

    new-instance v0, Lcom/twitter/android/gc;

    move-object v1, p1

    move v3, v2

    move-object v4, p3

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/gc;-><init>(Landroid/content/Context;IZLcom/twitter/android/widget/am;Lcom/twitter/android/client/b;Lcom/twitter/android/widget/ai;)V

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/widget/c;-><init>(Landroid/widget/ListAdapter;I)V

    iput-object p1, p0, Lcom/twitter/android/dr;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/twitter/android/dr;->c:Lcom/twitter/android/client/b;

    new-instance v0, Lcom/twitter/android/ew;

    const v1, 0x7f0b0056

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/ew;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    iput-object v0, p0, Lcom/twitter/android/dr;->d:Lcom/twitter/android/ew;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/dr;->b:Landroid/content/Context;

    const v1, 0x7f0b002a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/twitter/android/dr;->a(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/dr;->e:Lcom/twitter/android/api/ac;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/dr;->b:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/TimelineActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "owner_id"

    iget-object v2, p0, Lcom/twitter/android/dr;->e:Lcom/twitter/android/api/ac;

    iget-wide v2, v2, Lcom/twitter/android/api/ac;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    const v2, 0x7f0b002a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_5
.end method

.method protected final a(I)Ljava/lang/Object;
    .registers 8

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/twitter/android/dr;->b:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/TweetActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/twitter/android/dr;->a:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/twitter/android/gc;

    invoke-virtual {v0, p1}, Lcom/twitter/android/gc;->getItemId(I)J

    move-result-wide v2

    iget-object v0, p0, Lcom/twitter/android/dr;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/twitter/android/provider/o;->a(JJ)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/twitter/android/api/ac;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/dr;->e:Lcom/twitter/android/api/ac;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/twitter/android/dr;->e:Lcom/twitter/android/api/ac;

    invoke-virtual {v0, p1}, Lcom/twitter/android/api/ac;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/twitter/android/dr;->a:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/twitter/android/gc;

    iget-object v1, p1, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/gc;->a(Ljava/lang/String;)V

    :cond_18
    iput-object p1, p0, Lcom/twitter/android/dr;->e:Lcom/twitter/android/api/ac;

    invoke-virtual {p0}, Lcom/twitter/android/dr;->notifyDataSetChanged()V

    goto :goto_c
.end method

.method protected final b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/dr;->d:Lcom/twitter/android/ew;

    invoke-static {p1, p2, v0}, Lcom/twitter/android/ey;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/twitter/android/ew;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final b()Z
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/dr;->a:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/twitter/android/gc;

    invoke-virtual {v0}, Lcom/twitter/android/gc;->d()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/twitter/android/dr;->a:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/twitter/android/gc;

    invoke-virtual {v0}, Lcom/twitter/android/gc;->e()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0

    :cond_16
    invoke-super {p0}, Lcom/twitter/android/widget/c;->b()Z

    move-result v0

    goto :goto_15
.end method
