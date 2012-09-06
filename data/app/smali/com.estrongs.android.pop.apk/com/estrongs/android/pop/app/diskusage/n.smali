.class Lcom/estrongs/android/pop/app/diskusage/n;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    const/4 v0, 0x1

    :try_start_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_29

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->l(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->m(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Lcom/estrongs/android/widget/ag;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Lcom/estrongs/android/widget/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ag;->show()V

    :cond_28
    :goto_28
    return-void

    :cond_29
    const/4 v0, 0x2

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_c7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->n(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Lcom/estrongs/android/pop/app/diskusage/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/t;->b()Z

    move-result v0

    if-eqz v0, :cond_80

    const-string v0, "/sdcard"

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->m(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->finish()V

    :cond_51
    :goto_51
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Lcom/estrongs/android/widget/ag;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Lcom/estrongs/android/widget/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ag;->dismiss()V

    :cond_62
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Z)[J

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->e:Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->h:[I

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a([J[I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Z[J)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7a} :catch_7b

    goto :goto_28

    :catch_7b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28

    :cond_80
    :try_start_80
    new-instance v0, Lcom/estrongs/android/widget/al;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->n(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Lcom/estrongs/android/pop/app/diskusage/t;

    move-result-object v2

    const v3, 0x7f030013

    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->o(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v5}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->p(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)[I

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/widget/al;-><init>(Landroid/content/Context;Lcom/estrongs/android/widget/an;I[Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->q(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->l(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->m(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->l(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->m(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_51

    :cond_c7
    const/4 v0, 0x5

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_126

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->dismissDialog(I)V

    new-instance v0, Lcom/estrongs/android/widget/al;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->n(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Lcom/estrongs/android/pop/app/diskusage/t;

    move-result-object v2

    const v3, 0x7f030013

    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->o(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v5}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->p(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)[I

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/widget/al;-><init>(Landroid/content/Context;Lcom/estrongs/android/widget/an;I[Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->q(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->b(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Z)[J

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->e:Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->h:[I

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a([J[I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Z[J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->q(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->r(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto/16 :goto_28

    :cond_126
    const/4 v0, 0x4

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_133

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->showDialog(I)V

    goto/16 :goto_28

    :cond_133
    const/4 v0, 0x6

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_13f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Landroid/os/Message;)V

    goto/16 :goto_28

    :cond_13f
    const/4 v0, 0x7

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_28

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/n;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->b(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Landroid/os/Message;)V
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_149} :catch_7b

    goto/16 :goto_28
.end method
