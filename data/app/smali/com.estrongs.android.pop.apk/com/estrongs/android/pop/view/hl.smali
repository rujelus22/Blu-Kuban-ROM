.class Lcom/estrongs/android/pop/view/hl;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/hl;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    const/16 v6, 0xa

    const/16 v5, 0x9

    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v3, 0x2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hl;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->a(Lcom/estrongs/android/pop/view/FilemgrUpgrade;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hl;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->b(Lcom/estrongs/android/pop/view/FilemgrUpgrade;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hl;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->a(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_7b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hl;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->a(Lcom/estrongs/android/pop/view/FilemgrUpgrade;I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/pop/view/hr;

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hl;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->a(Lcom/estrongs/android/pop/view/FilemgrUpgrade;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hl;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->b(Lcom/estrongs/android/pop/view/FilemgrUpgrade;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hl;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->a(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)V

    goto :goto_1b

    :cond_3c
    sget v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->o:I

    :try_start_3e
    iget-object v2, v0, Lcom/estrongs/android/pop/view/hr;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_43} :catch_72

    move-result v2

    :goto_44
    if-ge v3, v2, :cond_75

    iget-object v1, p0, Lcom/estrongs/android/pop/view/hl;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->b(Lcom/estrongs/android/pop/view/FilemgrUpgrade;I)V

    :goto_4c
    iget-object v1, p0, Lcom/estrongs/android/pop/view/hl;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    iget-object v2, v0, Lcom/estrongs/android/pop/view/hr;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->a(Lcom/estrongs/android/pop/view/FilemgrUpgrade;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/hl;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/hr;->c:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->a(Lcom/estrongs/android/pop/view/FilemgrUpgrade;Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hl;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/c;->b(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hl;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->a(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)V

    goto :goto_1b

    :catch_72
    move-exception v2

    move v2, v1

    goto :goto_44

    :cond_75
    iget-object v2, p0, Lcom/estrongs/android/pop/view/hl;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v2, v1}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->b(Lcom/estrongs/android/pop/view/FilemgrUpgrade;I)V

    goto :goto_4c

    :cond_7b
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_fb

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hl;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->b(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Lcom/estrongs/android/util/v;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/util/v;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hl;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->b(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Lcom/estrongs/android/util/v;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/util/v;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hl;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->c(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2, v3}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-nez v0, :cond_f5

    move v0, v1

    :goto_cc
    iget-object v1, p0, Lcom/estrongs/android/pop/view/hl;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->d(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/hl;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->e(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    div-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "%"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1b

    :cond_f5
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, v4

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_cc

    :cond_fb
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_110

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hl;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0, v4}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->a(Lcom/estrongs/android/pop/view/FilemgrUpgrade;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hl;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0, v5}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->c(Lcom/estrongs/android/pop/view/FilemgrUpgrade;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hl;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->a(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)V

    goto/16 :goto_1b

    :cond_110
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v6, :cond_1b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hl;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0, v4}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->a(Lcom/estrongs/android/pop/view/FilemgrUpgrade;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hl;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0, v6}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->c(Lcom/estrongs/android/pop/view/FilemgrUpgrade;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hl;->a:Lcom/estrongs/android/pop/view/FilemgrUpgrade;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FilemgrUpgrade;->a(Lcom/estrongs/android/pop/view/FilemgrUpgrade;)V

    goto/16 :goto_1b
.end method
