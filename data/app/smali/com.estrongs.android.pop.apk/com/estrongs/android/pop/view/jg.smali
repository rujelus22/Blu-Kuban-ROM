.class Lcom/estrongs/android/pop/view/jg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/jf;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/jf;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/jg;->a:Lcom/estrongs/android/pop/view/jf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(ILjava/lang/Object;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/jg;->a:Lcom/estrongs/android/pop/view/jf;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/jf;->a(Lcom/estrongs/android/pop/view/jf;)Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->finish()V

    return-void
.end method
