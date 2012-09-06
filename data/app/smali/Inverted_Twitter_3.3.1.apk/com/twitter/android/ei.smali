.class final Lcom/twitter/android/ei;
.super Lcom/twitter/android/client/g;


# instance fields
.field final synthetic a:Lcom/twitter/android/SearchQueriesFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/SearchQueriesFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/ei;->a:Lcom/twitter/android/SearchQueriesFragment;

    invoke-direct {p0}, Lcom/twitter/android/client/g;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/ei;->a:Lcom/twitter/android/SearchQueriesFragment;

    invoke-virtual {v0, p1}, Lcom/twitter/android/SearchQueriesFragment;->b(Ljava/lang/String;)Lcom/twitter/android/cm;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/twitter/android/ei;->a:Lcom/twitter/android/SearchQueriesFragment;

    iget-object v1, v1, Lcom/twitter/android/SearchQueriesFragment;->l:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/twitter/android/ei;->a:Lcom/twitter/android/SearchQueriesFragment;

    iget v0, v0, Lcom/twitter/android/cm;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/SearchQueriesFragment;->c(I)V

    :cond_23
    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 6

    invoke-direct {p0, p2}, Lcom/twitter/android/ei;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final g(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p2}, Lcom/twitter/android/ei;->a(Ljava/lang/String;)V

    return-void
.end method
