.class LmB;
.super Landroid/os/AsyncTask;
.source "DiscussionSessionApi.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic a:Ljava/lang/String;

.field final synthetic a:LmA;

.field final synthetic a:Lmv;


# direct methods
.method constructor <init>(LmA;Ljava/lang/String;Ljava/lang/Runnable;Lmv;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, LmB;->a:LmA;

    iput-object p2, p0, LmB;->a:Ljava/lang/String;

    iput-object p3, p0, LmB;->a:Ljava/lang/Runnable;

    iput-object p4, p0, LmB;->a:Lmv;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 187
    :try_start_1
    iget-object v0, p0, LmB;->a:LmA;

    invoke-static {v0}, LmA;->a(LmA;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_8
    .catch Landroid/accounts/AccountsException; {:try_start_1 .. :try_end_8} :catch_27
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_40
    .catch LJi; {:try_start_1 .. :try_end_8} :catch_3e
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_8} :catch_3c

    .line 188
    :try_start_8
    iget-object v0, p0, LmB;->a:LmA;

    invoke-static {v0}, LmA;->a(LmA;)LIG;

    move-result-object v0

    iget-object v2, p0, LmB;->a:LmA;

    invoke-static {v2}, LmA;->a(LmA;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "oauth2:https://www.googleapis.com/auth/discussions"

    invoke-interface {v0, v2, v3}, LIG;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    if-nez v0, :cond_2e

    .line 190
    new-instance v0, LJi;

    const-string v2, "null OAuth token of type: oauth2:https://www.googleapis.com/auth/discussions"

    invoke-direct {v0, v2}, LJi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_24

    :try_start_26
    throw v0
    :try_end_27
    .catch Landroid/accounts/AccountsException; {:try_start_26 .. :try_end_27} :catch_27
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_27} :catch_40
    .catch LJi; {:try_start_26 .. :try_end_27} :catch_3e
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_27} :catch_3c

    .line 198
    :catch_27
    move-exception v0

    .line 210
    :goto_28
    iget-object v1, p0, LmB;->a:Lmv;

    invoke-virtual {v1, v0}, Lmv;->a(Ljava/lang/Throwable;)V

    .line 211
    :goto_2d
    return-object v4

    .line 194
    :cond_2e
    :try_start_2e
    iget-object v2, p0, LmB;->a:LmA;

    iget-object v3, p0, LmB;->a:Ljava/lang/String;

    invoke-static {v2, v0, v3}, LmA;->a(LmA;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, LmB;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 196
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_24

    goto :goto_2d

    .line 204
    :catch_3c
    move-exception v0

    goto :goto_28

    .line 202
    :catch_3e
    move-exception v0

    goto :goto_28

    .line 200
    :catch_40
    move-exception v0

    goto :goto_28
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 178
    invoke-virtual {p0, p1}, LmB;->a([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
