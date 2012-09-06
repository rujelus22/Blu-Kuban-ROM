.class final Lcom/dropbox/android/util/aV;
.super Landroid/os/Handler;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/util/aU;


# direct methods
.method constructor <init>(Lcom/dropbox/android/util/aU;)V
    .registers 2
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/dropbox/android/util/aV;->a:Lcom/dropbox/android/util/aU;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter

    .prologue
    .line 43
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcom/dropbox/android/util/aV;->a:Lcom/dropbox/android/util/aU;

    invoke-static {v1}, Lcom/dropbox/android/util/aU;->a(Lcom/dropbox/android/util/aU;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 47
    return-void
.end method
