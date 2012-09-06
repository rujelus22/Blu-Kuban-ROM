.class public Ldbxyzptlk/e/s;
.super Landroid/os/AsyncTask;
.source "panda.py"


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field a:Lcom/github/droidfu/DroidFuApplication;

.field b:Ljava/lang/String;

.field c:Ldbxyzptlk/p/x;

.field d:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Ldbxyzptlk/e/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/e/s;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/github/droidfu/DroidFuApplication;

    iput-object v0, p0, Ldbxyzptlk/e/s;->a:Lcom/github/droidfu/DroidFuApplication;

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/e/s;->b:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method protected final a()Landroid/content/Context;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 29
    :try_start_1
    iget-object v1, p0, Ldbxyzptlk/e/s;->a:Lcom/github/droidfu/DroidFuApplication;

    iget-object v2, p0, Ldbxyzptlk/e/s;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/github/droidfu/DroidFuApplication;->a(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    .line 30
    if-eqz v2, :cond_29

    iget-object v1, p0, Ldbxyzptlk/e/s;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    instance-of v1, v2, Landroid/app/Activity;

    if-eqz v1, :cond_2a

    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_2b

    move-result v1

    if-eqz v1, :cond_2a

    :cond_29
    move-object v2, v3

    .line 39
    :cond_2a
    :goto_2a
    return-object v2

    .line 37
    :catch_2b
    move-exception v1

    .line 38
    sget-object v2, Ldbxyzptlk/e/s;->e:Ljava/lang/String;

    const-string v4, "Error in getCallingContext()"

    invoke-static {v2, v4, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 39
    goto :goto_2a
.end method

.method public final varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5
    .parameter

    .prologue
    .line 46
    :try_start_0
    iget-object v0, p0, Ldbxyzptlk/e/s;->a:Lcom/github/droidfu/DroidFuApplication;

    if-eqz v0, :cond_e

    .line 47
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/a;->c()Ldbxyzptlk/p/x;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/e/s;->c:Ldbxyzptlk/p/x;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_1a

    .line 53
    :cond_e
    :goto_e
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->f()J

    move-result-wide v0

    iput-wide v0, p0, Ldbxyzptlk/e/s;->d:J

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 49
    :catch_1a
    move-exception v0

    .line 50
    sget-object v1, Ldbxyzptlk/e/s;->e:Ljava/lang/String;

    const-string v2, "Error in getting settings"

    invoke-static {v1, v2, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method protected final a(Ljava/lang/Void;)V
    .registers 6
    .parameter

    .prologue
    .line 61
    invoke-virtual {p0}, Ldbxyzptlk/e/s;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/PrefsActivity;

    .line 63
    if-eqz v0, :cond_13

    .line 64
    iget-object v1, p0, Ldbxyzptlk/e/s;->c:Ldbxyzptlk/p/x;

    iget-wide v2, p0, Ldbxyzptlk/e/s;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/dropbox/android/activity/PrefsActivity;->a(Ldbxyzptlk/p/x;J)V

    .line 65
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/PrefsActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 67
    :cond_13
    return-void
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 14
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ldbxyzptlk/e/s;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 14
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ldbxyzptlk/e/s;->a(Ljava/lang/Void;)V

    return-void
.end method
