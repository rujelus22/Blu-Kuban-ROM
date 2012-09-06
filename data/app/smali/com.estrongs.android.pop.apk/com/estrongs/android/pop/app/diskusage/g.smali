.class Lcom/estrongs/android/pop/app/diskusage/g;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/diskusage/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/f;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/g;->a:Lcom/estrongs/android/pop/app/diskusage/f;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/g;->a:Lcom/estrongs/android/pop/app/diskusage/f;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/f;->a(Lcom/estrongs/android/pop/app/diskusage/f;)Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->d()I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->f(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;I)V

    return-void
.end method
