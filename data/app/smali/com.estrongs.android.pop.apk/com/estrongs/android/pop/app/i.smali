.class Lcom/estrongs/android/pop/app/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ArchiveProgressActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/i;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/i;->a:Lcom/estrongs/android/pop/app/ArchiveProgressActivity;

    invoke-virtual {v0, p2, p3}, Lcom/estrongs/android/pop/app/ArchiveProgressActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
