.class final Lcom/dropbox/android/service/C;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dropbox/android/service/PowerReceiver;


# direct methods
.method constructor <init>(Lcom/dropbox/android/service/PowerReceiver;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/dropbox/android/service/C;->b:Lcom/dropbox/android/service/PowerReceiver;

    iput-object p2, p0, Lcom/dropbox/android/service/C;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/android/service/C;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/dropbox/android/util/K;->a(Landroid/content/Context;)Lcom/dropbox/android/util/L;

    move-result-object v0

    .line 25
    sget-object v1, Lcom/dropbox/android/util/L;->a:Lcom/dropbox/android/util/L;

    if-eq v0, v1, :cond_e

    sget-object v1, Lcom/dropbox/android/util/L;->c:Lcom/dropbox/android/util/L;

    if-ne v0, v1, :cond_14

    .line 26
    :cond_e
    iget-object v0, p0, Lcom/dropbox/android/service/C;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dropbox/android/service/PowerReceiver;->a(Landroid/content/Context;Z)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 33
    :cond_14
    :goto_14
    return-void

    .line 28
    :catch_15
    move-exception v0

    .line 31
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v1

    sget-object v2, Ldbxyzptlk/h/e;->a:Ldbxyzptlk/h/e;

    invoke-virtual {v1, v0, v2}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    goto :goto_14
.end method
