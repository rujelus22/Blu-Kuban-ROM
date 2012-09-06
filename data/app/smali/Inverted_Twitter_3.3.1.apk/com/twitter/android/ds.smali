.class final Lcom/twitter/android/ds;
.super Lcom/twitter/android/widget/c;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Lcom/twitter/android/api/ac;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/ed;)V
    .registers 4

    const/16 v0, 0x9

    invoke-direct {p0, p2, v0}, Lcom/twitter/android/widget/c;-><init>(Landroid/widget/ListAdapter;I)V

    iput-object p1, p0, Lcom/twitter/android/ds;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    iget-object v1, p0, Lcom/twitter/android/ds;->b:Landroid/content/Context;

    const v2, 0x7f0b0036

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twitter/android/ds;->c:Lcom/twitter/android/api/ac;

    if-nez v0, :cond_1a

    const-string v0, ""

    :goto_f
    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/twitter/android/ds;->a(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1a
    iget-object v0, p0, Lcom/twitter/android/ds;->c:Lcom/twitter/android/api/ac;

    invoke-virtual {v0}, Lcom/twitter/android/api/ac;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method protected final a()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/twitter/android/api/ac;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/ds;->c:Lcom/twitter/android/api/ac;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/twitter/android/ds;->c:Lcom/twitter/android/api/ac;

    invoke-virtual {v0, p1}, Lcom/twitter/android/api/ac;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    iput-object p1, p0, Lcom/twitter/android/ds;->c:Lcom/twitter/android/api/ac;

    invoke-virtual {p0}, Lcom/twitter/android/ds;->notifyDataSetChanged()V

    goto :goto_c
.end method

.method protected final b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method
