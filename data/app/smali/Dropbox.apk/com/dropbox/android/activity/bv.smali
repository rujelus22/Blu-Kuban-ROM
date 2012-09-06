.class final Lcom/dropbox/android/activity/bv;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/TextEditActivity;

.field final synthetic b:Lcom/dropbox/android/activity/bt;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/bt;Lcom/dropbox/android/activity/TextEditActivity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/dropbox/android/activity/bv;->b:Lcom/dropbox/android/activity/bt;

    iput-object p2, p0, Lcom/dropbox/android/activity/bv;->a:Lcom/dropbox/android/activity/TextEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 92
    iget-object v0, p0, Lcom/dropbox/android/activity/bv;->a:Lcom/dropbox/android/activity/TextEditActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/TextEditActivity;->b(Lcom/dropbox/android/activity/TextEditActivity;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 93
    iget-object v0, p0, Lcom/dropbox/android/activity/bv;->a:Lcom/dropbox/android/activity/TextEditActivity;

    invoke-static {v0, v2}, Lcom/dropbox/android/activity/TextEditActivity;->a(Lcom/dropbox/android/activity/TextEditActivity;Z)Z

    .line 94
    iget-object v0, p0, Lcom/dropbox/android/activity/bv;->a:Lcom/dropbox/android/activity/TextEditActivity;

    sget-object v1, Lcom/dropbox/android/activity/bs;->b:Lcom/dropbox/android/activity/bs;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/bs;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/TextEditActivity;->showDialog(I)V

    .line 100
    :goto_23
    return-void

    .line 96
    :cond_24
    iget-object v0, p0, Lcom/dropbox/android/activity/bv;->a:Lcom/dropbox/android/activity/TextEditActivity;

    iget-object v1, p0, Lcom/dropbox/android/activity/bv;->a:Lcom/dropbox/android/activity/TextEditActivity;

    invoke-static {v1}, Lcom/dropbox/android/activity/TextEditActivity;->b(Lcom/dropbox/android/activity/TextEditActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/activity/TextEditActivity;->a(Lcom/dropbox/android/activity/TextEditActivity;Landroid/net/Uri;Z)Z

    .line 97
    invoke-static {}, Lcom/dropbox/android/util/h;->aa()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 98
    iget-object v0, p0, Lcom/dropbox/android/activity/bv;->a:Lcom/dropbox/android/activity/TextEditActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/TextEditActivity;->a(Lcom/dropbox/android/activity/TextEditActivity;)V

    goto :goto_23
.end method
