.class final Lcom/twitter/android/bd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/twitter/android/ListCreateEditActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/ListCreateEditActivity;I)V
    .registers 3

    iput-object p1, p0, Lcom/twitter/android/bd;->b:Lcom/twitter/android/ListCreateEditActivity;

    iput p2, p0, Lcom/twitter/android/bd;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget v0, p0, Lcom/twitter/android/bd;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/twitter/android/bd;->b:Lcom/twitter/android/ListCreateEditActivity;

    invoke-static {v0}, Lcom/twitter/android/ListCreateEditActivity;->a(Lcom/twitter/android/ListCreateEditActivity;)V

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/twitter/android/bd;->b:Lcom/twitter/android/ListCreateEditActivity;

    invoke-virtual {v0}, Lcom/twitter/android/ListCreateEditActivity;->finish()V

    goto :goto_a
.end method
