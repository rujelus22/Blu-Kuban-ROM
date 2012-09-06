.class final enum Lcom/dropbox/android/activity/delegate/d;
.super Lcom/dropbox/android/activity/delegate/a;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/activity/delegate/a;-><init>(Ljava/lang/String;ILcom/dropbox/android/activity/delegate/b;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 69
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    const-class v3, Lcom/dropbox/android/activity/TextEditActivity;

    invoke-direct {v1, v2, v0, p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    instance-of v2, p2, Lcom/dropbox/android/activity/D;

    if-eqz v2, :cond_11

    move-object v0, p2

    .line 72
    check-cast v0, Lcom/dropbox/android/activity/D;

    .line 74
    :cond_11
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/dropbox/android/util/ab;->j()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/dropbox/android/activity/D;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_38

    .line 77
    invoke-static {v2}, Lcom/dropbox/android/util/ab;->b(Ljava/io/File;)Z

    .line 79
    :cond_38
    const-string v0, "output"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 82
    invoke-static {p2, v1, p0}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;Landroid/content/Intent;Lcom/dropbox/android/activity/delegate/a;)V

    .line 83
    return-void
.end method

.method final a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;Lcom/dropbox/android/activity/D;ILandroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-static {p2, p3, p4, p5, v0}, Lcom/dropbox/android/activity/delegate/a;->a(Landroid/app/Activity;Lcom/dropbox/android/activity/D;ILandroid/content/Intent;Z)V

    .line 65
    return-void
.end method
