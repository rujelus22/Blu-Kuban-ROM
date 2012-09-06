.class final Lcom/twitter/android/bn;
.super Lcom/twitter/android/client/g;


# instance fields
.field final synthetic a:Lcom/twitter/android/ListsFragment;


# direct methods
.method private constructor <init>(Lcom/twitter/android/ListsFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/bn;->a:Lcom/twitter/android/ListsFragment;

    invoke-direct {p0}, Lcom/twitter/android/client/g;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/ListsFragment;Lcom/twitter/android/bm;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twitter/android/bn;-><init>(Lcom/twitter/android/ListsFragment;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JI)V
    .registers 15

    iget-object v0, p0, Lcom/twitter/android/bn;->a:Lcom/twitter/android/ListsFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ListsFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget v0, v0, Lcom/twitter/android/cm;->b:I

    iget-object v1, p0, Lcom/twitter/android/bn;->a:Lcom/twitter/android/ListsFragment;

    iget v1, v1, Lcom/twitter/android/ListsFragment;->l:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2c

    if-nez p7, :cond_2c

    iget-object v1, p0, Lcom/twitter/android/bn;->a:Lcom/twitter/android/ListsFragment;

    iget-object v2, p0, Lcom/twitter/android/bn;->a:Lcom/twitter/android/ListsFragment;

    iget-object v2, v2, Lcom/twitter/android/ListsFragment;->c:Lcom/twitter/android/client/b;

    iget-object v3, p0, Lcom/twitter/android/bn;->a:Lcom/twitter/android/ListsFragment;

    iget-wide v3, v3, Lcom/twitter/android/ListsFragment;->h:J

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/twitter/android/bn;->a:Lcom/twitter/android/ListsFragment;

    invoke-virtual {v6, v0}, Lcom/twitter/android/ListsFragment;->g(I)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/twitter/android/client/b;->b(JII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/ListsFragment;->a(Ljava/lang/String;I)V

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    iget-object v1, p0, Lcom/twitter/android/bn;->a:Lcom/twitter/android/ListsFragment;

    invoke-virtual {v1, v0}, Lcom/twitter/android/ListsFragment;->c(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_2b

    iget-object v0, p0, Lcom/twitter/android/bn;->a:Lcom/twitter/android/ListsFragment;

    invoke-virtual {v0}, Lcom/twitter/android/ListsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0072

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2b
.end method
