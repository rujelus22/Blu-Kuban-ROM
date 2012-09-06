.class public Lcom/twitter/android/fz;
.super Lcom/twitter/android/client/g;


# instance fields
.field protected final b:Landroid/content/Context;

.field final synthetic c:Lcom/twitter/android/TweetListFragment;


# direct methods
.method public constructor <init>(Lcom/twitter/android/TweetListFragment;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/twitter/android/fz;->c:Lcom/twitter/android/TweetListFragment;

    invoke-direct {p0}, Lcom/twitter/android/client/g;-><init>()V

    iput-object p2, p0, Lcom/twitter/android/fz;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJ)V
    .registers 11

    iget-object v0, p0, Lcom/twitter/android/fz;->c:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TweetListFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_1d

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_1d

    const/16 v0, 0x8b

    if-eq p5, v0, :cond_1d

    iget-object v0, p0, Lcom/twitter/android/fz;->b:Landroid/content/Context;

    const v1, 0x7f0b0044

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1d
    return-void
.end method

.method public final e(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V
    .registers 10

    iget-object v0, p0, Lcom/twitter/android/fz;->c:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TweetListFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_19

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_19

    iget-object v0, p0, Lcom/twitter/android/fz;->b:Landroid/content/Context;

    const v1, 0x7f0b0045

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_19
    return-void
.end method

.method public final f(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V
    .registers 10

    iget-object v0, p0, Lcom/twitter/android/fz;->c:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TweetListFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_19

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_19

    iget-object v0, p0, Lcom/twitter/android/fz;->b:Landroid/content/Context;

    const v1, 0x7f0b0048

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_19
    return-void
.end method

.method public final n(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/twitter/android/fz;->c:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TweetListFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_19

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_19

    iget-object v0, p0, Lcom/twitter/android/fz;->b:Landroid/content/Context;

    const v1, 0x7f0b004a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_19
    return-void
.end method
