.class Lcom/estrongs/android/pop/view/fn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/fm;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/fm;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/fn;->a:Lcom/estrongs/android/pop/view/fm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fn;->a:Lcom/estrongs/android/pop/view/fm;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/fm;->a(Lcom/estrongs/android/pop/view/fm;)Lcom/estrongs/android/pop/view/fk;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/fk;->b(Lcom/estrongs/android/pop/view/fk;)Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/fn;->a:Lcom/estrongs/android/pop/view/fm;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/fm;->a(Lcom/estrongs/android/pop/view/fm;)Lcom/estrongs/android/pop/view/fk;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/android/pop/view/fk;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/ff;->b(Ljava/util/Map;)V

    return-void
.end method
