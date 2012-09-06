.class Lcom/estrongs/android/pop/app/diskusage/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/f;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/f;)Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/f;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-static {}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->c()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/f;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->d()I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->b(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/f;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->dismissDialog(I)V

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/g;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/diskusage/g;-><init>(Lcom/estrongs/android/pop/app/diskusage/f;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/g;->start()V

    return-void
.end method
