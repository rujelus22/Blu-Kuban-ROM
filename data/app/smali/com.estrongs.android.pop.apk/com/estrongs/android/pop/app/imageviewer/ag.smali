.class Lcom/estrongs/android/pop/app/imageviewer/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ag;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    packed-switch p2, :pswitch_data_e

    :cond_3
    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ag;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ag;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    :pswitch_data_e
    .packed-switch -0x1
        :pswitch_4
    .end packed-switch
.end method
