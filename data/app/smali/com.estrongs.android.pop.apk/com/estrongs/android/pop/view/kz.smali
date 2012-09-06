.class Lcom/estrongs/android/pop/view/kz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/Property;

.field private final synthetic b:Lcom/estrongs/android/pop/view/bd;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/Property;Lcom/estrongs/android/pop/view/bd;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/kz;->a:Lcom/estrongs/android/pop/view/Property;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/kz;->b:Lcom/estrongs/android/pop/view/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/kz;->b:Lcom/estrongs/android/pop/view/bd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/bd;->a()V

    return-void
.end method
