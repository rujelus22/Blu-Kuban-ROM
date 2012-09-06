.class Lcom/estrongs/android/pop/view/ej;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ej;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    packed-switch p2, :pswitch_data_34

    :goto_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ej;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->R()Z

    goto :goto_3

    :pswitch_d
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ej;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(I)Z

    goto :goto_3

    :pswitch_14
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ej;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ej;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B()Z

    goto :goto_3

    :pswitch_1f
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ej;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(I)Z

    goto :goto_3

    :pswitch_26
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ej;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(I)Z

    goto :goto_3

    :pswitch_2d
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ej;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Y(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    goto :goto_3

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_7
        :pswitch_d
        :pswitch_14
        :pswitch_1f
        :pswitch_26
        :pswitch_2d
    .end packed-switch
.end method
