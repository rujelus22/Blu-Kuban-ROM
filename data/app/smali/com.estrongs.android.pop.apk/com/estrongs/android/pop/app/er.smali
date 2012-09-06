.class Lcom/estrongs/android/pop/app/er;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ZipViewer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ZipViewer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/er;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/er;->a:Lcom/estrongs/android/pop/app/ZipViewer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ZipViewer;->finish()V

    const/4 v0, 0x0

    return v0
.end method
