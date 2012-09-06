.class final Lcom/twitter/android/bh;
.super Lcom/twitter/android/client/g;


# instance fields
.field final synthetic a:Lcom/twitter/android/ListTabActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/ListTabActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/bh;->a:Lcom/twitter/android/ListTabActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJJ)V
    .registers 13

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/twitter/android/bh;->a:Lcom/twitter/android/ListTabActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ListTabActivity;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_1e

    iget-object v0, p0, Lcom/twitter/android/bh;->a:Lcom/twitter/android/ListTabActivity;

    iput v2, v0, Lcom/twitter/android/ListTabActivity;->i:I

    const v0, 0x7f0b0076

    :goto_14
    iget-object v1, p0, Lcom/twitter/android/bh;->a:Lcom/twitter/android/ListTabActivity;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1d
    return-void

    :cond_1e
    const v0, 0x7f0b0077

    goto :goto_14
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JJ)V
    .registers 11

    iget-object v0, p0, Lcom/twitter/android/bh;->a:Lcom/twitter/android/ListTabActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ListTabActivity;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/twitter/android/bh;->a:Lcom/twitter/android/ListTabActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/android/ListTabActivity;->a(Lcom/twitter/android/ListTabActivity;Z)V

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_1a

    iget-object v0, p0, Lcom/twitter/android/bh;->a:Lcom/twitter/android/ListTabActivity;

    iput-wide p5, v0, Lcom/twitter/android/ListTabActivity;->g:J

    iget-object v0, p0, Lcom/twitter/android/bh;->a:Lcom/twitter/android/ListTabActivity;

    iput-wide p7, v0, Lcom/twitter/android/ListTabActivity;->f:J

    :cond_1a
    iget-object v0, p0, Lcom/twitter/android/bh;->a:Lcom/twitter/android/ListTabActivity;

    invoke-virtual {v0}, Lcom/twitter/android/ListTabActivity;->d()V

    :cond_1f
    return-void
.end method

.method public final b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJJ)V
    .registers 13

    iget-object v0, p0, Lcom/twitter/android/bh;->a:Lcom/twitter/android/ListTabActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ListTabActivity;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_1f

    iget-object v0, p0, Lcom/twitter/android/bh;->a:Lcom/twitter/android/ListTabActivity;

    const/4 v1, 0x2

    iput v1, v0, Lcom/twitter/android/ListTabActivity;->i:I

    const v0, 0x7f0b0078

    :goto_14
    iget-object v1, p0, Lcom/twitter/android/bh;->a:Lcom/twitter/android/ListTabActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1e
    return-void

    :cond_1f
    const v0, 0x7f0b0079

    goto :goto_14
.end method

.method public final c(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJJ)V
    .registers 12

    iget-object v0, p0, Lcom/twitter/android/bh;->a:Lcom/twitter/android/ListTabActivity;

    iget-wide v0, v0, Lcom/twitter/android/ListTabActivity;->f:J

    cmp-long v0, v0, p6

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/twitter/android/bh;->a:Lcom/twitter/android/ListTabActivity;

    iget-object v0, v0, Lcom/twitter/android/ListTabActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v0

    cmp-long v0, p8, v0

    if-nez v0, :cond_21

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_1c

    const/16 v0, 0x194

    if-ne p3, v0, :cond_21

    :cond_1c
    iget-object v0, p0, Lcom/twitter/android/bh;->a:Lcom/twitter/android/ListTabActivity;

    invoke-virtual {v0}, Lcom/twitter/android/ListTabActivity;->a()V

    :cond_21
    return-void
.end method
