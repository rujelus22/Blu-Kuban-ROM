.class Lcom/estrongs/android/pop/app/bn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ImageBrowser;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ImageBrowser;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bn;->a:Lcom/estrongs/android/pop/app/ImageBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bn;->a:Lcom/estrongs/android/pop/app/ImageBrowser;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ImageBrowser;->finish()V

    return-void
.end method
