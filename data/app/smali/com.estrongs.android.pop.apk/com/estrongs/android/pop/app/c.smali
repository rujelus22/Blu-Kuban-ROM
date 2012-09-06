.class Lcom/estrongs/android/pop/app/c;
.super Lcom/estrongs/io/archive/d;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/app/c;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-direct {p0, p2, p3}, Lcom/estrongs/io/archive/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->showDialog(I)V

    return-void
.end method
