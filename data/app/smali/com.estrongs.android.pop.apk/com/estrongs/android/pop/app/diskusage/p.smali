.class Lcom/estrongs/android/pop/app/diskusage/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/p;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-static {}, Lcom/estrongs/android/pop/b;->a()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/p;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->u(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;)V

    :cond_c
    return-void
.end method
