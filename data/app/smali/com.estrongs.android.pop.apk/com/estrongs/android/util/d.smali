.class Lcom/estrongs/android/util/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/util/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/util/a;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/util/d;->a:Lcom/estrongs/android/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/util/d;->a:Lcom/estrongs/android/util/a;

    iget-object v1, p0, Lcom/estrongs/android/util/d;->a:Lcom/estrongs/android/util/a;

    invoke-static {v1}, Lcom/estrongs/android/util/a;->d(Lcom/estrongs/android/util/a;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/a;->a(Lcom/estrongs/android/util/a;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
