.class Lcom/estrongs/android/pop/app/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/d;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/d;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/e;->a:Lcom/estrongs/android/pop/app/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/e;->a:Lcom/estrongs/android/pop/app/d;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/d;->a(Lcom/estrongs/android/pop/app/d;)Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->showDialog(I)V

    return-void
.end method
