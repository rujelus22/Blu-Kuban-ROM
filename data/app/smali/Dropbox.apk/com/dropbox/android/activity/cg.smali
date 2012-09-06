.class final Lcom/dropbox/android/activity/cg;
.super Landroid/os/AsyncTask;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/VideoPlayerActivity;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/VideoPlayerActivity;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/dropbox/android/activity/cg;->a:Lcom/dropbox/android/activity/VideoPlayerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 189
    iput-object p2, p0, Lcom/dropbox/android/activity/cg;->b:Ljava/lang/String;

    .line 190
    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 7
    .parameter

    .prologue
    .line 195
    :try_start_0
    invoke-static {}, Lcom/dropbox/android/activity/VideoPlayerActivity;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/android/activity/cg;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    iget-object v0, v0, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    iget-object v1, p0, Lcom/dropbox/android/activity/cg;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldbxyzptlk/p/i;->d(Ljava/lang/String;)Ldbxyzptlk/p/E;

    move-result-object v0

    .line 197
    const-wide v1, 0x408f400000000000L

    iget-wide v3, v0, Ldbxyzptlk/p/E;->a:D

    mul-double v0, v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_39
    .catch Ldbxyzptlk/m/a; {:try_start_0 .. :try_end_39} :catch_3b

    move-result-object v0

    .line 201
    :goto_3a
    return-object v0

    .line 198
    :catch_3b
    move-exception v0

    .line 199
    invoke-static {}, Lcom/dropbox/android/activity/VideoPlayerActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FetchDurationAsyncTask"

    invoke-static {v1, v2, v0}, Ldbxyzptlk/h/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    const/4 v0, 0x0

    goto :goto_3a
.end method

.method protected final a(Ljava/lang/Integer;)V
    .registers 4
    .parameter

    .prologue
    .line 206
    if-eqz p1, :cond_b

    .line 207
    iget-object v0, p0, Lcom/dropbox/android/activity/cg;->a:Lcom/dropbox/android/activity/VideoPlayerActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/dropbox/android/activity/VideoPlayerActivity;->a(Lcom/dropbox/android/activity/VideoPlayerActivity;I)V

    .line 209
    :cond_b
    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 184
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dropbox/android/activity/cg;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 184
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/dropbox/android/activity/cg;->a(Ljava/lang/Integer;)V

    return-void
.end method
