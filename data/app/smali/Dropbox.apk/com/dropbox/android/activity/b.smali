.class final Lcom/dropbox/android/activity/b;
.super Lcom/dropbox/android/util/al;
.source "panda.py"


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 5
    .parameter

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/dropbox/android/util/al;-><init>(Landroid/net/Uri;)V

    .line 300
    if-eqz p1, :cond_b

    invoke-static {p1}, Lcom/dropbox/android/util/Z;->a(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 301
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid uri attempted to be set as a history uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_24
    return-void
.end method
