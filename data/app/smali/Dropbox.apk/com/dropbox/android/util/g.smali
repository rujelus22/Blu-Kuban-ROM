.class final Lcom/dropbox/android/util/g;
.super Landroid/os/FileObserver;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/util/f;


# direct methods
.method constructor <init>(Lcom/dropbox/android/util/f;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/dropbox/android/util/g;->a:Lcom/dropbox/android/util/f;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 57
    and-int/lit16 v0, p1, 0xec0

    if-eqz v0, :cond_e

    .line 58
    iget-object v0, p0, Lcom/dropbox/android/util/g;->a:Lcom/dropbox/android/util/f;

    invoke-static {v0}, Lcom/dropbox/android/util/f;->a(Lcom/dropbox/android/util/f;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 65
    :cond_d
    :goto_d
    return-void

    .line 59
    :cond_e
    const v0, 0x8000

    if-eq p1, v0, :cond_d

    .line 63
    iget-object v0, p0, Lcom/dropbox/android/util/g;->a:Lcom/dropbox/android/util/f;

    invoke-static {v0}, Lcom/dropbox/android/util/f;->b(Lcom/dropbox/android/util/f;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Got non-delete or move event despite filtering"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method
