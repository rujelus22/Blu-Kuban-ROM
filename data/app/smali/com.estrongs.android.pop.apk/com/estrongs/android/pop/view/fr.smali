.class Lcom/estrongs/android/pop/view/fr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ff;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ff;Z)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/fr;->a:Lcom/estrongs/android/pop/view/ff;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/view/fr;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/fr;->b:Z

    if-nez v0, :cond_8

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/estrongs/android/pop/d/h;->b(Z)Z

    :cond_8
    return-void
.end method
