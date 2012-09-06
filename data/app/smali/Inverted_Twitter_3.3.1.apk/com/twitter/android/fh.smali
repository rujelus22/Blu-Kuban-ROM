.class final Lcom/twitter/android/fh;
.super Lcom/twitter/android/fz;


# instance fields
.field final synthetic a:Lcom/twitter/android/TimelineFragment;


# direct methods
.method public constructor <init>(Lcom/twitter/android/TimelineFragment;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/twitter/android/fh;->a:Lcom/twitter/android/TimelineFragment;

    invoke-direct {p0, p1, p2}, Lcom/twitter/android/fz;-><init>(Lcom/twitter/android/TweetListFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JJII)V
    .registers 16

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/twitter/android/fh;->a:Lcom/twitter/android/TimelineFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/twitter/android/fh;->a:Lcom/twitter/android/TimelineFragment;

    iget v2, v0, Lcom/twitter/android/cm;->b:I

    invoke-virtual {v1, v2}, Lcom/twitter/android/TimelineFragment;->c(I)V

    const/16 v1, 0xc8

    if-eq p3, v1, :cond_21

    iget-object v0, p0, Lcom/twitter/android/fh;->b:Landroid/content/Context;

    const v1, 0x7f0b0041

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_20
    :goto_20
    return-void

    :cond_21
    iget v0, v0, Lcom/twitter/android/cm;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_20

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "home"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "discover"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/twitter/android/fh;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/fh;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/fh;->a:Lcom/twitter/android/TimelineFragment;

    iget-object v3, v3, Lcom/twitter/android/TimelineFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v3}, Lcom/twitter/android/client/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v1, v0, v4, v2}, Lcom/twitter/android/platform/TwitterDataSyncService;->a(Landroid/content/Context;Landroid/os/Bundle;ZLandroid/accounts/Account;)V

    goto :goto_20
.end method

.method public final b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V
    .registers 10

    iget-object v0, p0, Lcom/twitter/android/fh;->a:Lcom/twitter/android/TimelineFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/twitter/android/fh;->a:Lcom/twitter/android/TimelineFragment;

    iget v0, v0, Lcom/twitter/android/cm;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/TimelineFragment;->c(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_20

    iget-object v0, p0, Lcom/twitter/android/fh;->b:Landroid/content/Context;

    const v1, 0x7f0b0041

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_20
    return-void
.end method

.method public final b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JI)V
    .registers 11

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/twitter/android/fh;->a:Lcom/twitter/android/TimelineFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/twitter/android/fh;->a:Lcom/twitter/android/TimelineFragment;

    iget v0, v0, Lcom/twitter/android/cm;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/TimelineFragment;->c(I)V

    const/16 v0, 0x191

    if-ne p3, v0, :cond_21

    iget-object v0, p0, Lcom/twitter/android/fh;->b:Landroid/content/Context;

    const v1, 0x7f0b0042

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_20
    :goto_20
    return-void

    :cond_21
    const/16 v0, 0xc8

    if-eq p3, v0, :cond_20

    iget-object v0, p0, Lcom/twitter/android/fh;->b:Landroid/content/Context;

    const v1, 0x7f0b0041

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_20
.end method

.method public final b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JJII)V
    .registers 16

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/twitter/android/fh;->a:Lcom/twitter/android/TimelineFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/twitter/android/fh;->a:Lcom/twitter/android/TimelineFragment;

    iget v2, v0, Lcom/twitter/android/cm;->b:I

    invoke-virtual {v1, v2}, Lcom/twitter/android/TimelineFragment;->c(I)V

    const/16 v1, 0xc8

    if-eq p3, v1, :cond_21

    iget-object v0, p0, Lcom/twitter/android/fh;->b:Landroid/content/Context;

    const v1, 0x7f0b0041

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_20
    :goto_20
    return-void

    :cond_21
    iget v0, v0, Lcom/twitter/android/cm;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_20

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "discover"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/twitter/android/fh;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/fh;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/fh;->a:Lcom/twitter/android/TimelineFragment;

    iget-object v3, v3, Lcom/twitter/android/TimelineFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v3}, Lcom/twitter/android/client/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v1, v0, v4, v2}, Lcom/twitter/android/platform/TwitterDataSyncService;->a(Landroid/content/Context;Landroid/os/Bundle;ZLandroid/accounts/Account;)V

    goto :goto_20
.end method

.method public final c(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 9

    iget-object v0, p0, Lcom/twitter/android/fh;->a:Lcom/twitter/android/TimelineFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/twitter/android/fh;->a:Lcom/twitter/android/TimelineFragment;

    iget v0, v0, Lcom/twitter/android/cm;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/TimelineFragment;->c(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_20

    iget-object v0, p0, Lcom/twitter/android/fh;->b:Landroid/content/Context;

    const v1, 0x7f0b0041

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_20
    return-void
.end method

.method public final c(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V
    .registers 10

    iget-object v0, p0, Lcom/twitter/android/fh;->a:Lcom/twitter/android/TimelineFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/twitter/android/fh;->a:Lcom/twitter/android/TimelineFragment;

    iget v0, v0, Lcom/twitter/android/cm;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/TimelineFragment;->c(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_20

    iget-object v0, p0, Lcom/twitter/android/fh;->b:Landroid/content/Context;

    const v1, 0x7f0b0041

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_20
    return-void
.end method

.method public final k(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/twitter/android/fh;->a:Lcom/twitter/android/TimelineFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/twitter/android/fh;->a:Lcom/twitter/android/TimelineFragment;

    iget v0, v0, Lcom/twitter/android/cm;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/TimelineFragment;->c(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_20

    iget-object v0, p0, Lcom/twitter/android/fh;->b:Landroid/content/Context;

    const v1, 0x7f0b0041

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_20
    return-void
.end method

.method public final l(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/twitter/android/fh;->a:Lcom/twitter/android/TimelineFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/twitter/android/fh;->a:Lcom/twitter/android/TimelineFragment;

    iget v0, v0, Lcom/twitter/android/cm;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/TimelineFragment;->c(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_20

    iget-object v0, p0, Lcom/twitter/android/fh;->b:Landroid/content/Context;

    const v1, 0x7f0b0041

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_20
    return-void
.end method

.method public final m(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/twitter/android/fh;->a:Lcom/twitter/android/TimelineFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/twitter/android/fh;->a:Lcom/twitter/android/TimelineFragment;

    iget v0, v0, Lcom/twitter/android/cm;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/TimelineFragment;->c(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_20

    iget-object v0, p0, Lcom/twitter/android/fh;->b:Landroid/content/Context;

    const v1, 0x7f0b0041

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_20
    return-void
.end method
