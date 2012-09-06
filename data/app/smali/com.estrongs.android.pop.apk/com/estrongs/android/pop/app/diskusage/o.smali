.class Lcom/estrongs/android/pop/app/diskusage/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/o;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/o;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->s(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/o;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->c(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Z)V

    :goto_12
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/o;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->t(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V

    return-void

    :cond_18
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/o;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->c(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Z)V

    goto :goto_12
.end method
