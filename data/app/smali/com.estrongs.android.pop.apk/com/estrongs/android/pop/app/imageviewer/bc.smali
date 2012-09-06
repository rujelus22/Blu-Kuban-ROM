.class Lcom/estrongs/android/pop/app/imageviewer/bc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/ba;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ba;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->a:Lcom/estrongs/android/pop/app/imageviewer/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bc;->a:Lcom/estrongs/android/pop/app/imageviewer/ba;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ba;->a(Lcom/estrongs/android/pop/app/imageviewer/ba;)Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c()V

    return-void
.end method
