.class final Lcom/twitter/android/bw;
.super Lcom/twitter/android/client/g;


# instance fields
.field final synthetic a:Lcom/twitter/android/MessagesFragment;


# direct methods
.method private constructor <init>(Lcom/twitter/android/MessagesFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/MessagesFragment;

    invoke-direct {p0}, Lcom/twitter/android/client/g;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/MessagesFragment;Lcom/twitter/android/bv;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twitter/android/bw;-><init>(Lcom/twitter/android/MessagesFragment;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;II)V
    .registers 10

    iget-object v0, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/MessagesFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/MessagesFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/MessagesFragment;

    iget v0, v0, Lcom/twitter/android/cm;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/MessagesFragment;->c(I)V

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_1d

    if-lez p6, :cond_1c

    iget-object v0, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/MessagesFragment;

    iget-object v0, v0, Lcom/twitter/android/MessagesFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->u()V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/MessagesFragment;

    invoke-virtual {v0}, Lcom/twitter/android/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b006d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1c
.end method

.method public final b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/MessagesFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/MessagesFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v1, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/MessagesFragment;

    iget v0, v0, Lcom/twitter/android/cm;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/MessagesFragment;->c(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_28

    const/16 v0, 0x194

    if-eq p3, v0, :cond_28

    iget-object v0, p0, Lcom/twitter/android/bw;->a:Lcom/twitter/android/MessagesFragment;

    invoke-virtual {v0}, Lcom/twitter/android/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0070

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_28
    return-void
.end method
