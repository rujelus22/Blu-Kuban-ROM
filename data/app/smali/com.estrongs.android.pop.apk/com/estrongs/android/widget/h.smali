.class Lcom/estrongs/android/widget/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/FileBrowserDialog;

.field private final synthetic b:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/FileBrowserDialog;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/widget/h;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    iput-object p2, p0, Lcom/estrongs/android/widget/h;->b:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/widget/h;->b:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/widget/h;->b:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/estrongs/android/widget/h;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_c
    return-void
.end method
