.class final Lcom/twitter/android/ef;
.super Lcom/twitter/android/client/g;


# instance fields
.field final synthetic a:Lcom/twitter/android/SULFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/SULFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/ef;->a:Lcom/twitter/android/SULFragment;

    invoke-direct {p0}, Lcom/twitter/android/client/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 8

    iget-object v0, p0, Lcom/twitter/android/ef;->a:Lcom/twitter/android/SULFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SULFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/twitter/android/ef;->a:Lcom/twitter/android/SULFragment;

    iget v0, v0, Lcom/twitter/android/cm;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/SULFragment;->c(I)V

    :cond_f
    return-void
.end method
