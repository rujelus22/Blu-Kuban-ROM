.class Lcom/estrongs/android/widget/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/FileBrowserDialog;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/FileBrowserDialog;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/widget/g;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    iput-object p2, p0, Lcom/estrongs/android/widget/g;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/widget/g;->b:Landroid/content/Context;

    const-string v1, "OnClickListener(button1\'s) is null"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
