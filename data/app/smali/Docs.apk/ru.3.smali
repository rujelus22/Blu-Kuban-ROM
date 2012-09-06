.class public Lru;
.super Ljava/lang/Object;
.source "OpenerIntents.java"


# direct methods
.method private static a(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 6
    .parameter

    .prologue
    .line 30
    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 31
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 36
    :goto_1a
    if-eqz v0, :cond_26

    .line 38
    const-string v4, "../"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_1a

    .line 41
    :cond_26
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    .line 43
    :cond_37
    return-object p0
.end method

.method public static a(Landroid/content/Intent;Landroid/net/Uri;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 48
    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, LafQ;->a(Z)V

    .line 49
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 51
    invoke-static {p1}, Lru;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 52
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 58
    :goto_1b
    return-void

    .line 48
    :cond_1c
    const/4 v0, 0x0

    goto :goto_7

    .line 56
    :cond_1e
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1b
.end method
