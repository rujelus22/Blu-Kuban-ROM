.class Lcom/estrongs/android/pop/app/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/f;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/g;->a:Lcom/estrongs/android/pop/app/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/g;->a:Lcom/estrongs/android/pop/app/f;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f;->a(Lcom/estrongs/android/pop/app/f;)Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/g;->a:Lcom/estrongs/android/pop/app/f;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/f;->a(Lcom/estrongs/android/pop/app/f;)Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    move-result-object v1

    const v2, 0x7f0901a8

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    return-void
.end method
