.class Lcom/estrongs/android/pop/view/la;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/at;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/Property;

.field private final synthetic b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/Property;Landroid/app/AlertDialog;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/la;->a:Lcom/estrongs/android/pop/view/Property;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/la;->b:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/la;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/la;->a:Lcom/estrongs/android/pop/view/Property;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/Property;->finish()V

    return-void
.end method
