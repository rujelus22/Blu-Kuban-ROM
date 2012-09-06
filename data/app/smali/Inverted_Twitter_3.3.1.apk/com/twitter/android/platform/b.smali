.class final Lcom/twitter/android/platform/b;
.super Landroid/os/AsyncTask;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/android/client/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/platform/b;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/twitter/android/platform/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/platform/b;->b:Lcom/twitter/android/client/b;

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/platform/b;->b:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->h()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/Session;

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :cond_2b
    iget-object v0, p0, Lcom/twitter/android/platform/b;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "com.twitter.android.auth.login"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_39
    if-ge v0, v3, :cond_45

    aget-object v4, v2, v0

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_45
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_d
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    :pswitch_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/Session;

    sget-object v2, Lcom/twitter/android/platform/a;->a:[I

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->b()Lcom/twitter/android/client/Session$LoginStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/android/client/Session$LoginStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2c

    goto :goto_8

    :pswitch_24
    iget-object v2, p0, Lcom/twitter/android/platform/b;->b:Lcom/twitter/android/client/b;

    invoke-virtual {v2, v0}, Lcom/twitter/android/client/b;->b(Lcom/twitter/android/client/Session;)Ljava/lang/String;

    goto :goto_8

    :cond_2a
    return-void

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_24
    .end packed-switch
.end method
