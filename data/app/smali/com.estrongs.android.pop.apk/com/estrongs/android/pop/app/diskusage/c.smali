.class Lcom/estrongs/android/pop/app/diskusage/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/c;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/diskusage/c;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/c;->a:Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/c;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageActivity;->a(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
