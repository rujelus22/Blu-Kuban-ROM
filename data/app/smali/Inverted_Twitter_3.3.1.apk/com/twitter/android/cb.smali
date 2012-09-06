.class final Lcom/twitter/android/cb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/twitter/android/MessagesThreadActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/MessagesThreadActivity;I)V
    .registers 3

    iput-object p1, p0, Lcom/twitter/android/cb;->b:Lcom/twitter/android/MessagesThreadActivity;

    iput p2, p0, Lcom/twitter/android/cb;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget v0, p0, Lcom/twitter/android/cb;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/twitter/android/cb;->b:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0}, Lcom/twitter/android/MessagesThreadActivity;->finish()V

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/twitter/android/cb;->b:Lcom/twitter/android/MessagesThreadActivity;

    invoke-static {v0}, Lcom/twitter/android/MessagesThreadActivity;->a(Lcom/twitter/android/MessagesThreadActivity;)V

    goto :goto_a
.end method
