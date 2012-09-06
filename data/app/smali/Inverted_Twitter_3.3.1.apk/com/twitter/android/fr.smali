.class final Lcom/twitter/android/fr;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/twitter/android/TweetFragment;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/twitter/android/widget/am;

.field private final d:I

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/twitter/android/TweetFragment;Landroid/content/Context;Lcom/twitter/android/widget/am;IZ)V
    .registers 7

    iput-object p1, p0, Lcom/twitter/android/fr;->a:Lcom/twitter/android/TweetFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/twitter/android/fr;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/twitter/android/fr;->c:Lcom/twitter/android/widget/am;

    iput p4, p0, Lcom/twitter/android/fr;->d:I

    iput-boolean p5, p0, Lcom/twitter/android/fr;->e:Z

    return-void
.end method


# virtual methods
.method public final getItemId(I)J
    .registers 4

    invoke-virtual {p0, p1}, Lcom/twitter/android/fr;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/m;

    iget-wide v0, v0, Lcom/twitter/android/provider/m;->o:J

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lcom/twitter/android/fr;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/m;

    if-nez p2, :cond_5a

    iget-object v1, p0, Lcom/twitter/android/fr;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/twitter/android/fr;->d:I

    invoke-virtual {v1, v2, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/twitter/android/fs;

    invoke-direct {v1, p2}, Lcom/twitter/android/fs;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/twitter/android/fs;->a:Lcom/twitter/android/widget/TweetView;

    iget-object v3, p0, Lcom/twitter/android/fr;->c:Lcom/twitter/android/widget/am;

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/widget/am;)V

    iget-object v2, v1, Lcom/twitter/android/fs;->a:Lcom/twitter/android/widget/TweetView;

    iget-object v3, p0, Lcom/twitter/android/fr;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/widget/ai;)V

    move-object v2, v1

    move-object v1, p2

    :goto_2d
    iget-object v3, v2, Lcom/twitter/android/fs;->a:Lcom/twitter/android/widget/TweetView;

    iget-object v4, p0, Lcom/twitter/android/fr;->a:Lcom/twitter/android/TweetFragment;

    iget-object v4, v4, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/client/b;

    iget v4, v4, Lcom/twitter/android/client/b;->f:F

    invoke-virtual {v3, v4}, Lcom/twitter/android/widget/TweetView;->a(F)V

    iget-object v3, v2, Lcom/twitter/android/fs;->a:Lcom/twitter/android/widget/TweetView;

    invoke-virtual {v3, v0}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/provider/m;)V

    iget-boolean v3, p0, Lcom/twitter/android/fr;->e:Z

    if-eqz v3, :cond_63

    if-nez p1, :cond_63

    iget-object v0, p0, Lcom/twitter/android/fr;->b:Landroid/content/Context;

    const v3, 0x7f0b01a8

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/android/fs;->a(Ljava/lang/String;)V

    :goto_4f
    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/CardRowView;

    invoke-virtual {p0}, Lcom/twitter/android/fr;->getCount()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    return-object v1

    :cond_5a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/fs;

    move-object v2, v1

    move-object v1, p2

    goto :goto_2d

    :cond_63
    iget-boolean v3, p0, Lcom/twitter/android/fr;->e:Z

    if-nez v3, :cond_83

    invoke-virtual {p0}, Lcom/twitter/android/fr;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_83

    iget-object v3, p0, Lcom/twitter/android/fr;->b:Landroid/content/Context;

    const v4, 0x7f0b010b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/twitter/android/provider/m;->f:Ljava/lang/String;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/android/fs;->a(Ljava/lang/String;)V

    goto :goto_4f

    :cond_83
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/twitter/android/fs;->a(Ljava/lang/String;)V

    goto :goto_4f
.end method
