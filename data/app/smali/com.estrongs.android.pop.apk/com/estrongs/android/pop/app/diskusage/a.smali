.class Lcom/estrongs/android/pop/app/diskusage/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/s;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/a;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .registers 7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Lcom/estrongs/android/widget/ag;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/ag;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->b(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)Lcom/estrongs/android/widget/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/a;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->b(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/widget/ag;->b(J)V

    return-void
.end method
