.class public LdV;
.super Landroid/os/AsyncTask;
.source "CheckStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/CheckStatusActivity;

.field private volatile a:Z


# direct methods
.method private constructor <init>(Lcom/google/android/apps/docs/app/CheckStatusActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, LdV;->a:Lcom/google/android/apps/docs/app/CheckStatusActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, LdV;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/docs/app/CheckStatusActivity;LdT;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1}, LdV;-><init>(Lcom/google/android/apps/docs/app/CheckStatusActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 75
    const-string v0, "CheckStatusActivity"

    const-string v2, "AccountMetadataUpdaterTask.call"

    invoke-static {v0, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, LdV;->a:Lcom/google/android/apps/docs/app/CheckStatusActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:Lck;

    iget-object v2, p0, LdV;->a:Lcom/google/android/apps/docs/app/CheckStatusActivity;

    invoke-interface {v0, v2}, Lck;->a(Landroid/content/Context;)V

    .line 79
    iget-object v0, p0, LdV;->a:Lcom/google/android/apps/docs/app/CheckStatusActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:LTt;

    iget-object v2, p0, LdV;->a:Lcom/google/android/apps/docs/app/CheckStatusActivity;

    invoke-static {v2}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a(Lcom/google/android/apps/docs/app/CheckStatusActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, LTt;->a(Ljava/lang/String;)LSp;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_57

    const/4 v0, 0x1

    :goto_22
    iput-boolean v0, p0, LdV;->a:Z

    .line 86
    :try_start_24
    iget-object v0, p0, LdV;->a:Lcom/google/android/apps/docs/app/CheckStatusActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:LHW;

    invoke-interface {v0}, LHW;->a()[Landroid/accounts/Account;

    move-result-object v0

    .line 87
    array-length v2, v0

    :goto_2d
    if-ge v1, v2, :cond_61

    aget-object v3, v0, v1

    .line 88
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 89
    iget-object v4, p0, LdV;->a:Lcom/google/android/apps/docs/app/CheckStatusActivity;

    invoke-static {v4}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a(Lcom/google/android/apps/docs/app/CheckStatusActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 90
    iget-object v4, p0, LdV;->a:Lcom/google/android/apps/docs/app/CheckStatusActivity;

    iget-object v4, v4, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:LXh;

    invoke-interface {v4, v3}, LXh;->a(Ljava/lang/String;)LXg;

    move-result-object v4

    .line 92
    invoke-virtual {v4}, LXg;->a()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 94
    iget-object v4, p0, LdV;->a:Lcom/google/android/apps/docs/app/CheckStatusActivity;

    iget-object v4, v4, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:LTt;

    invoke-virtual {v4, v3}, LTt;->a(Ljava/lang/String;)LSp;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_54} :catch_59

    .line 87
    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_57
    move v0, v1

    .line 80
    goto :goto_22

    .line 98
    :catch_59
    move-exception v0

    .line 99
    const-string v1, "CheckStatusActivity"

    const-string v2, "Error retrieving account information"

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    :cond_61
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .registers 4
    .parameter

    .prologue
    .line 106
    const-string v0, "CheckStatusActivity"

    const-string v1, "AccountMetadataUpdaterTask.onPostExecute"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, LdV;->a:Lcom/google/android/apps/docs/app/CheckStatusActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:Lck;

    iget-object v1, p0, LdV;->a:Lcom/google/android/apps/docs/app/CheckStatusActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 108
    iget-object v0, p0, LdV;->a:Lcom/google/android/apps/docs/app/CheckStatusActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:LdO;

    invoke-virtual {v0}, LdO;->a()V

    .line 109
    iget-object v0, p0, LdV;->a:Lcom/google/android/apps/docs/app/CheckStatusActivity;

    iget-boolean v1, p0, LdV;->a:Z

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a(Lcom/google/android/apps/docs/app/CheckStatusActivity;Z)V

    .line 110
    iget-object v0, p0, LdV;->a:Lcom/google/android/apps/docs/app/CheckStatusActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a(Lcom/google/android/apps/docs/app/CheckStatusActivity;LdV;)LdV;

    .line 111
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0, p1}, LdV;->a([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 70
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, LdV;->a(Ljava/lang/Void;)V

    return-void
.end method
