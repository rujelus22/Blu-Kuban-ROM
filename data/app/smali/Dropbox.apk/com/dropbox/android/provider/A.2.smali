.class final Lcom/dropbox/android/provider/A;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/net/Uri;

.field final synthetic d:Lcom/dropbox/android/provider/u;

.field final synthetic e:Lcom/dropbox/android/provider/z;


# direct methods
.method constructor <init>(Lcom/dropbox/android/provider/z;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Lcom/dropbox/android/provider/u;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/dropbox/android/provider/A;->e:Lcom/dropbox/android/provider/z;

    iput-object p2, p0, Lcom/dropbox/android/provider/A;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dropbox/android/provider/A;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/dropbox/android/provider/A;->c:Landroid/net/Uri;

    iput-object p5, p0, Lcom/dropbox/android/provider/A;->d:Lcom/dropbox/android/provider/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    const/16 v5, 0x11

    .line 159
    :try_start_2
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    .line 160
    iget-object v0, v0, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    const-string v1, "/"

    iget-object v2, p0, Lcom/dropbox/android/provider/A;->a:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Ldbxyzptlk/p/i;->a(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/dropbox/android/provider/A;->e:Lcom/dropbox/android/provider/z;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/dropbox/android/provider/z;->a(Lcom/dropbox/android/provider/z;J)J

    .line 162
    iget-object v1, p0, Lcom/dropbox/android/provider/A;->e:Lcom/dropbox/android/provider/z;

    iget-object v2, p0, Lcom/dropbox/android/provider/A;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/dropbox/android/provider/z;->a(Lcom/dropbox/android/provider/z;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/dropbox/android/provider/A;->e:Lcom/dropbox/android/provider/z;

    invoke-static {v1, v0}, Lcom/dropbox/android/provider/z;->a(Lcom/dropbox/android/provider/z;Ljava/util/List;)Ljava/util/List;

    .line 164
    iget-object v0, p0, Lcom/dropbox/android/provider/A;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/dropbox/android/provider/A;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/dropbox/android/provider/t;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 165
    iget-object v0, p0, Lcom/dropbox/android/provider/A;->d:Lcom/dropbox/android/provider/u;

    iget-object v1, p0, Lcom/dropbox/android/provider/A;->b:Landroid/content/Context;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/provider/u;->a(Landroid/content/Context;I)V
    :try_end_37
    .catch Ldbxyzptlk/m/b; {:try_start_2 .. :try_end_37} :catch_38
    .catch Ldbxyzptlk/m/a; {:try_start_2 .. :try_end_37} :catch_41

    .line 173
    :goto_37
    return-void

    .line 166
    :catch_38
    move-exception v0

    .line 167
    iget-object v0, p0, Lcom/dropbox/android/provider/A;->d:Lcom/dropbox/android/provider/u;

    iget-object v1, p0, Lcom/dropbox/android/provider/A;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v5}, Lcom/dropbox/android/provider/u;->a(Landroid/content/Context;I)V

    goto :goto_37

    .line 168
    :catch_41
    move-exception v0

    .line 170
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v1

    sget-object v2, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v1, v0, v2}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 171
    iget-object v0, p0, Lcom/dropbox/android/provider/A;->d:Lcom/dropbox/android/provider/u;

    iget-object v1, p0, Lcom/dropbox/android/provider/A;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v5}, Lcom/dropbox/android/provider/u;->a(Landroid/content/Context;I)V

    goto :goto_37
.end method
