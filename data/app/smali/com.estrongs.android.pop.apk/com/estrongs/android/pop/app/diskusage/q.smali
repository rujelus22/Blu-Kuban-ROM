.class Lcom/estrongs/android/pop/app/diskusage/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/q;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/q;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method
