.class Lcom/estrongs/android/pop/app/diskusage/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/r;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_7b

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/r;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Ljava/io/File;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/r;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->n(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Lcom/estrongs/android/pop/app/diskusage/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/diskusage/t;->a(Ljava/io/File;)Lcom/estrongs/android/util/r;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/r;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->v(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/r;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;J)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/r;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Lcom/estrongs/android/widget/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/widget/ag;->a()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/r;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->g(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/r;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Lcom/estrongs/android/widget/ag;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/r;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->m(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/widget/ag;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/r;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Lcom/estrongs/android/widget/ag;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/r;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    const v3, 0x7f090156

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/widget/ag;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/r;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Lcom/estrongs/android/widget/ag;

    move-result-object v1

    invoke-virtual {v0}, Lcom/estrongs/android/util/r;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/widget/ag;->a(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/r;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->w(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V

    :cond_7b
    return-void
.end method
