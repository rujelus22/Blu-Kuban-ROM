.class Lcom/estrongs/android/pop/view/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

.field private final synthetic b:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/aj;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/aj;->b:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/aj;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/aj;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->t(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/aj;->b:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090060

    new-instance v2, Lcom/estrongs/android/pop/view/ak;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/view/ak;-><init>(Lcom/estrongs/android/pop/view/aj;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0902b9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
