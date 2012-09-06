.class public Lcom/estrongs/android/pop/view/ig;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Landroid/view/SubMenu;

.field private b:Landroid/app/AlertDialog;

.field private c:Landroid/content/Context;

.field private d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field private e:Lcom/estrongs/android/pop/view/ih;


# direct methods
.method public constructor <init>(Landroid/view/SubMenu;Landroid/content/Context;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ig;->a:Landroid/view/SubMenu;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/ig;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/ig;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/ig;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ig;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ig;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ig;->a:Landroid/view/SubMenu;

    invoke-interface {v0}, Landroid/view/SubMenu;->close()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ig;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_e
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ig;->a:Landroid/view/SubMenu;

    new-instance v1, Lcom/estrongs/android/pop/view/ih;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/pop/view/ih;-><init>(Lcom/estrongs/android/pop/view/ig;Landroid/view/SubMenu;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/view/ig;->e:Lcom/estrongs/android/pop/view/ih;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ig;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ig;->e:Lcom/estrongs/android/pop/view/ih;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ig;->b:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ig;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ig;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ig;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ig;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ig;->e:Lcom/estrongs/android/pop/view/ih;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/ih;->a:[Landroid/view/MenuItem;

    aget-object v1, v1, p2

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(I)Z

    return-void
.end method
