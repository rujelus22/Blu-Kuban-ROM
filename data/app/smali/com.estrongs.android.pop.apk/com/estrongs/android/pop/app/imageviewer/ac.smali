.class Lcom/estrongs/android/pop/app/imageviewer/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/y;

.field private final synthetic b:Landroid/app/AlertDialog$Builder;

.field private final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/y;Landroid/app/AlertDialog$Builder;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ac;->a:Lcom/estrongs/android/pop/app/imageviewer/y;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/ac;->b:Landroid/app/AlertDialog$Builder;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/imageviewer/ac;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ac;->b:Landroid/app/AlertDialog$Builder;

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901c0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ac;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
