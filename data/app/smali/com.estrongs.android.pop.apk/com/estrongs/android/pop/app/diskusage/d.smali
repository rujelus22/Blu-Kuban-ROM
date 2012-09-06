.class Lcom/estrongs/android/pop/app/diskusage/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/d;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/d;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->x(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/d;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->n(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Lcom/estrongs/android/pop/app/diskusage/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/t;->a()V

    :cond_1a
    const/4 v0, 0x0

    goto :goto_9
.end method
