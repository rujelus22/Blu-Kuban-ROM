.class Lcom/estrongs/android/pop/app/bz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/by;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/by;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bz;->a:Lcom/estrongs/android/pop/app/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bz;->a:Lcom/estrongs/android/pop/app/by;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/by;->a(Lcom/estrongs/android/pop/app/by;)Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->f(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)Lcom/estrongs/android/widget/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ag;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bz;->a:Lcom/estrongs/android/pop/app/by;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/by;->a(Lcom/estrongs/android/pop/app/by;)Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bz;->a:Lcom/estrongs/android/pop/app/by;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/by;->a(Lcom/estrongs/android/pop/app/by;)Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->i(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;Ljava/util/List;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bz;->a:Lcom/estrongs/android/pop/app/by;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/by;->a(Lcom/estrongs/android/pop/app/by;)Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->finish()V

    return-void
.end method
