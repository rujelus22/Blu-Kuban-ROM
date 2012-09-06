.class Lcom/estrongs/android/pop/view/ft;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ff;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ff;I)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ft;->a:Lcom/estrongs/android/pop/view/ff;

    iput p2, p0, Lcom/estrongs/android/pop/view/ft;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    if-nez p2, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ft;->a:Lcom/estrongs/android/pop/view/ff;

    iget v1, p0, Lcom/estrongs/android/pop/view/ft;->b:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/ff;->b(I)Z

    :cond_9
    :goto_9
    return-void

    :cond_a
    const/4 v0, 0x1

    if-ne p2, v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ft;->a:Lcom/estrongs/android/pop/view/ff;

    iget v1, p0, Lcom/estrongs/android/pop/view/ft;->b:I

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/ff;I)Z

    goto :goto_9
.end method
