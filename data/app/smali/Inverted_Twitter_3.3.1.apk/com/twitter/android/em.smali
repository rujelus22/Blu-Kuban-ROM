.class final Lcom/twitter/android/em;
.super Lcom/twitter/android/client/g;


# instance fields
.field final synthetic a:Lcom/twitter/android/SearchTweetsActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/SearchTweetsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/em;->a:Lcom/twitter/android/SearchTweetsActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final h(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/twitter/android/em;->a:Lcom/twitter/android/SearchTweetsActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SearchTweetsActivity;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_1e

    iget-object v0, p0, Lcom/twitter/android/em;->a:Lcom/twitter/android/SearchTweetsActivity;

    const v1, 0x7f0b0150

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/twitter/android/em;->a:Lcom/twitter/android/SearchTweetsActivity;

    const/4 v1, 0x6

    iput v1, v0, Lcom/twitter/android/SearchTweetsActivity;->e:I

    :cond_1e
    return-void
.end method

.method public final i(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/em;->a:Lcom/twitter/android/SearchTweetsActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SearchTweetsActivity;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_1d

    iget-object v0, p0, Lcom/twitter/android/em;->a:Lcom/twitter/android/SearchTweetsActivity;

    const v1, 0x7f0b0151

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/twitter/android/em;->a:Lcom/twitter/android/SearchTweetsActivity;

    iput v2, v0, Lcom/twitter/android/SearchTweetsActivity;->e:I

    :cond_1d
    return-void
.end method
