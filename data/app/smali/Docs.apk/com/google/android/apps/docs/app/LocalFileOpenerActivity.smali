.class public abstract Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;
.super Lcom/google/android/apps/docs/app/BaseActivity;
.source "LocalFileOpenerActivity.java"


# instance fields
.field public a:LQN;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXP;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LZJ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Landroid/net/Uri;

.field private a:Ljava/io/File;

.field public a:Llu;
    .annotation runtime Lanr;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/io/File;Ljavax/crypto/SecretKey;)Ljava/io/File;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-static {}, LRz;->a()LRy;

    move-result-object v0

    .line 141
    invoke-interface {v0}, LRy;->a()Ljava/io/File;

    move-result-object v0

    .line 143
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 144
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 146
    :try_start_12
    iget-object v3, p0, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a:LXP;

    invoke-interface {v3, p2, v1, v2}, LXP;->a(Ljava/security/Key;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1e

    .line 148
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 149
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 152
    return-object v0

    .line 148
    :catchall_1e
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 149
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw v0
.end method

.method private a(Landroid/content/Intent;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-static {p1}, Lld;->a(Landroid/content/Intent;)Lld;

    move-result-object v0

    .line 83
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 84
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->finish()V

    .line 102
    :cond_14
    :goto_14
    return-void

    .line 90
    :cond_15
    :try_start_15
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a(Lld;)Z
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_25
    .catch LFw; {:try_start_15 .. :try_end_18} :catch_2f

    move-result v0

    .line 97
    :goto_19
    if-nez v0, :cond_14

    .line 98
    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->setResult(I)V

    .line 99
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->e()V

    .line 100
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->finish()V

    goto :goto_14

    .line 91
    :catch_25
    move-exception v0

    .line 92
    const-string v2, "LocalFileOpenerActivity"

    const-string v3, "Error opening file"

    invoke-static {v2, v3, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 95
    goto :goto_19

    .line 93
    :catch_2f
    move-exception v0

    .line 94
    const-string v2, "LocalFileOpenerActivity"

    const-string v3, "Error decrypting file"

    invoke-static {v2, v3, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_19
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 207
    const-string v0, "offline:file"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_f

    .line 209
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a:Ljava/io/File;

    .line 211
    :cond_f
    const-string v0, "offline:uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_1d

    .line 213
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a:Landroid/net/Uri;

    .line 215
    :cond_1d
    return-void
.end method

.method private a(LkR;Ljava/io/File;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a(LkR;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v2

    .line 162
    if-eqz v2, :cond_11

    .line 163
    iget-object v0, p0, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a:Landroid/net/Uri;

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_c
    const-string v3, "openTargetActivity must call registerFileSource"

    invoke-static {v0, v3}, LafQ;->b(ZLjava/lang/Object;)V

    .line 166
    :cond_11
    invoke-virtual {p0, v2, v1}, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 167
    return-void

    :cond_15
    move v0, v1

    .line 163
    goto :goto_c
.end method

.method private a(Lld;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 106
    iget-object v1, p0, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a:Llu;

    iget-object v2, p1, Lld;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v1

    .line 107
    iget-object v2, p0, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a:Llu;

    iget-object v3, p1, Lld;->b:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_1d

    iget-object v2, p0, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a:LQN;

    sget-object v3, LQM;->a:LQM;

    invoke-interface {v2, v1, v3}, LQN;->c(LkR;LQM;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 135
    :cond_1d
    :goto_1d
    return v0

    .line 115
    :cond_1e
    iget-object v2, p0, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a:LQN;

    sget-object v3, LQM;->a:LQM;

    invoke-interface {v2, v1, v3}, LQN;->a(LkR;LQM;)LQO;

    move-result-object v2

    .line 117
    if-nez v2, :cond_33

    .line 119
    const-wide/16 v2, -0x1

    sget-object v4, LQM;->a:LQM;

    invoke-virtual {v1, v2, v3, v4}, LkR;->a(JLQM;)V

    .line 120
    invoke-virtual {v1}, LkR;->c()V

    goto :goto_1d

    .line 125
    :cond_33
    invoke-interface {v2}, LQO;->a()Ljavax/crypto/SecretKey;

    move-result-object v0

    if-nez v0, :cond_42

    .line 126
    invoke-interface {v2}, LQO;->a()Ljava/io/File;

    move-result-object v0

    .line 133
    :goto_3d
    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a(LkR;Ljava/io/File;)V

    .line 135
    const/4 v0, 0x1

    goto :goto_1d

    .line 128
    :cond_42
    invoke-interface {v2}, LQO;->a()Ljava/io/File;

    move-result-object v0

    invoke-interface {v2}, LQO;->a()Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a(Ljava/io/File;Ljavax/crypto/SecretKey;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a:Ljava/io/File;

    .line 129
    iget-object v0, p0, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a:Ljava/io/File;

    goto :goto_3d
.end method

.method private e()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 196
    iget-object v0, p0, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a:Landroid/net/Uri;

    if-eqz v0, :cond_c

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->a(Landroid/net/Uri;)V

    .line 198
    iput-object v1, p0, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a:Landroid/net/Uri;

    .line 200
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a:Ljava/io/File;

    if-eqz v0, :cond_17

    .line 201
    iget-object v0, p0, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 202
    iput-object v1, p0, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a:Ljava/io/File;

    .line 204
    :cond_17
    return-void
.end method


# virtual methods
.method protected abstract a(LkR;Ljava/io/File;)Landroid/content/Intent;
.end method

.method protected final a(LRd;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a:LZJ;

    invoke-static {v0, p1}, LQY;->a(LZJ;LRd;)LQW;

    move-result-object v0

    .line 184
    invoke-static {v0, p2}, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->a(LQW;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a:Landroid/net/Uri;

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a:Landroid/net/Uri;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->e()V

    .line 192
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->finish()V

    .line 193
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    if-nez p1, :cond_d

    .line 74
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 75
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a(Landroid/content/Intent;)V

    .line 79
    :goto_c
    return-void

    .line 77
    :cond_d
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a(Landroid/os/Bundle;)V

    goto :goto_c
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 220
    iget-object v0, p0, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a:Ljava/io/File;

    if-eqz v0, :cond_12

    .line 221
    const-string v0, "offline:file"

    iget-object v1, p0, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a:Landroid/net/Uri;

    if-eqz v0, :cond_21

    .line 224
    const-string v0, "offline:uri"

    iget-object v1, p0, Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_21
    return-void
.end method
