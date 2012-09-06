.class Lcom/estrongs/android/widget/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/FileBrowserDialog;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/FileBrowserDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->f(Lcom/estrongs/android/widget/FileBrowserDialog;)Lcom/estrongs/android/widget/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/widget/w;->b()V

    iget-object v0, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->b()V

    return-void
.end method
