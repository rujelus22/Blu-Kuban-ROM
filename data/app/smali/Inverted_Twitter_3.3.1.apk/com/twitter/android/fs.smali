.class final Lcom/twitter/android/fs;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/twitter/android/widget/TweetView;

.field final b:Lcom/twitter/android/widget/NotchView;

.field final c:Landroid/widget/TextView;

.field final d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f070032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/TweetView;

    iput-object v0, p0, Lcom/twitter/android/fs;->a:Lcom/twitter/android/widget/TweetView;

    const v0, 0x7f070086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/NotchView;

    iput-object v0, p0, Lcom/twitter/android/fs;->b:Lcom/twitter/android/widget/NotchView;

    const v0, 0x7f070087

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/fs;->c:Landroid/widget/TextView;

    const v0, 0x7f070088

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/fs;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/twitter/android/fs;->b:Lcom/twitter/android/widget/NotchView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/twitter/android/fs;->b:Lcom/twitter/android/widget/NotchView;

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/NotchView;->setVisibility(I)V

    :cond_e
    iget-object v0, p0, Lcom/twitter/android/fs;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/fs;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/twitter/android/fs;->b:Lcom/twitter/android/widget/NotchView;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/twitter/android/fs;->b:Lcom/twitter/android/widget/NotchView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/NotchView;->setVisibility(I)V

    :cond_22
    iget-object v0, p0, Lcom/twitter/android/fs;->d:Landroid/view/View;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/twitter/android/fs;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2b
    iget-object v0, p0, Lcom/twitter/android/fs;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_18
.end method
