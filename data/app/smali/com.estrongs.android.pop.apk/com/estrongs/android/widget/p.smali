.class Lcom/estrongs/android/widget/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/o;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/o;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/widget/p;->a:Lcom/estrongs/android/widget/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/p;->a:Lcom/estrongs/android/widget/o;

    invoke-static {v0}, Lcom/estrongs/android/widget/o;->a(Lcom/estrongs/android/widget/o;)Lcom/estrongs/android/widget/FileBrowserDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->a(Lcom/estrongs/android/widget/FileBrowserDialog;)Lcom/estrongs/android/widget/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/widget/al;->notifyDataSetChanged()V

    return-void
.end method
