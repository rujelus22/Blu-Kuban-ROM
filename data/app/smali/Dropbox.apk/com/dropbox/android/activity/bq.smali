.class final Lcom/dropbox/android/activity/bq;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ldbxyzptlk/E/r;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/TextEditActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/TextEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/dropbox/android/activity/bq;->a:Lcom/dropbox/android/activity/TextEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 387
    iget-object v0, p0, Lcom/dropbox/android/activity/bq;->a:Lcom/dropbox/android/activity/TextEditActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/TextEditActivity;->h(Lcom/dropbox/android/activity/TextEditActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 388
    const/4 v0, 0x1

    sput-boolean v0, Ldbxyzptlk/E/f;->a:Z

    .line 389
    invoke-static {}, Lcom/dropbox/android/activity/TextEditActivity;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHARSET = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Lcom/dropbox/android/activity/bq;->a:Lcom/dropbox/android/activity/TextEditActivity;

    invoke-static {v0, p1}, Lcom/dropbox/android/activity/TextEditActivity;->b(Lcom/dropbox/android/activity/TextEditActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    :cond_2a
    return-void
.end method
