.class Lcom/estrongs/android/pop/view/jw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/jw;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/jw;)Lcom/estrongs/android/pop/view/PopPreferenceActivity;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/jw;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/jw;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".thumbnails"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_18

    move v0, v1

    :goto_15
    array-length v3, v2

    if-lt v0, v3, :cond_4d

    :cond_18
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/jw;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".apps"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2e

    :goto_2b
    array-length v2, v0

    if-lt v1, v2, :cond_55

    :cond_2e
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/.estrongs/tmp/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-static {v0}, Lcom/estrongs/android/util/a/b;->a([Ljava/io/File;)Z

    :cond_3e
    iget-object v0, p0, Lcom/estrongs/android/pop/view/jw;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->e(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/jx;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/jx;-><init>(Lcom/estrongs/android/pop/view/jw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4d
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_55
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b
.end method
