.class Lcom/estrongs/android/pop/app/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/au;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/au;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/av;->a:Lcom/estrongs/android/pop/app/au;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/av;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/av;)Lcom/estrongs/android/pop/app/au;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/av;->a:Lcom/estrongs/android/pop/app/au;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/av;->a:Lcom/estrongs/android/pop/app/au;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/au;->a(Lcom/estrongs/android/pop/app/au;)Lcom/estrongs/android/pop/app/ar;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ar;->c(Lcom/estrongs/android/pop/app/ar;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09002c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/av;->a:Lcom/estrongs/android/pop/app/au;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/au;->a(Lcom/estrongs/android/pop/app/au;)Lcom/estrongs/android/pop/app/ar;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/app/ar;->c(Lcom/estrongs/android/pop/app/ar;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0901d9

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/av;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09005e

    new-instance v2, Lcom/estrongs/android/pop/app/aw;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/av;->b:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/estrongs/android/pop/app/aw;-><init>(Lcom/estrongs/android/pop/app/av;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090060

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
