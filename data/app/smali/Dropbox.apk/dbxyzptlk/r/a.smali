.class public abstract Ldbxyzptlk/r/a;
.super Landroid/os/AsyncTask;
.source "panda.py"


# instance fields
.field private a:Lcom/github/droidfu/DroidFuApplication;

.field private b:Ljava/lang/Exception;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ldbxyzptlk/r/b;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 43
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 34
    iput-boolean v3, p0, Ldbxyzptlk/r/a;->e:Z

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Ldbxyzptlk/r/a;->h:I

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/github/droidfu/DroidFuApplication;

    if-nez v0, :cond_19

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context bound to this task must be a DroidFu context (DroidFuApplication)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/github/droidfu/DroidFuApplication;

    iput-object v0, p0, Ldbxyzptlk/r/a;->a:Lcom/github/droidfu/DroidFuApplication;

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/r/a;->f:Ljava/lang/String;

    .line 51
    instance-of v0, p1, Lcom/github/droidfu/activities/a;

    iput-boolean v0, p0, Ldbxyzptlk/r/a;->c:Z

    .line 53
    iget-object v0, p0, Ldbxyzptlk/r/a;->a:Lcom/github/droidfu/DroidFuApplication;

    iget-object v1, p0, Ldbxyzptlk/r/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/github/droidfu/DroidFuApplication;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 55
    iget-boolean v0, p0, Ldbxyzptlk/r/a;->c:Z

    if-eqz v0, :cond_47

    .line 56
    check-cast p1, Lcom/github/droidfu/activities/a;

    invoke-interface {p1}, Lcom/github/droidfu/activities/a;->b_()I

    move-result v0

    .line 57
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x2

    if-ne v1, v2, :cond_48

    .line 58
    iput-boolean v3, p0, Ldbxyzptlk/r/a;->d:Z

    .line 63
    :cond_47
    :goto_47
    return-void

    .line 59
    :cond_48
    const/4 v1, 0x5

    and-int/lit8 v0, v0, 0x5

    if-ne v1, v0, :cond_47

    .line 60
    iput-boolean v3, p0, Ldbxyzptlk/r/a;->e:Z

    goto :goto_47
.end method


# virtual methods
.method protected varargs a(Landroid/content/Context;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Ldbxyzptlk/r/a;->g:Ldbxyzptlk/r/b;

    if-eqz v0, :cond_b

    .line 122
    iget-object v0, p0, Ldbxyzptlk/r/a;->g:Ldbxyzptlk/r/b;

    invoke-interface {v0, p0}, Ldbxyzptlk/r/b;->a(Ldbxyzptlk/r/a;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final a(I)V
    .registers 2
    .parameter

    .prologue
    .line 168
    iput p1, p0, Ldbxyzptlk/r/a;->h:I

    .line 169
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 106
    return-void
.end method

.method protected abstract a(Landroid/content/Context;Ljava/lang/Exception;)V
.end method

.method protected abstract a(Landroid/content/Context;Ljava/lang/Object;)V
.end method

.method protected final c()Landroid/content/Context;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 67
    :try_start_1
    iget-object v1, p0, Ldbxyzptlk/r/a;->a:Lcom/github/droidfu/DroidFuApplication;

    iget-object v2, p0, Ldbxyzptlk/r/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/github/droidfu/DroidFuApplication;->a(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    .line 68
    if-eqz v2, :cond_29

    iget-object v1, p0, Ldbxyzptlk/r/a;->f:Ljava/lang/String;

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

    .line 77
    :cond_2a
    :goto_2a
    return-object v2

    .line 75
    :catch_2b
    move-exception v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 77
    goto :goto_2a
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Ldbxyzptlk/r/a;->b:Ljava/lang/Exception;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0}, Ldbxyzptlk/r/a;->c()Landroid/content/Context;

    move-result-object v1

    .line 113
    :try_start_5
    invoke-virtual {p0, v1, p1}, Ldbxyzptlk/r/a;->a(Landroid/content/Context;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_a

    move-result-object v0

    .line 117
    :goto_9
    return-object v0

    .line 114
    :catch_a
    move-exception v1

    .line 115
    iput-object v1, p0, Ldbxyzptlk/r/a;->b:Ljava/lang/Exception;

    goto :goto_9
.end method

.method public final e()V
    .registers 2

    .prologue
    .line 172
    const/4 v0, -0x1

    iput v0, p0, Ldbxyzptlk/r/a;->h:I

    .line 173
    return-void
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 131
    invoke-virtual {p0}, Ldbxyzptlk/r/a;->c()Landroid/content/Context;

    move-result-object v1

    .line 132
    if-nez v1, :cond_2e

    .line 133
    const-class v0, Ldbxyzptlk/r/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skipping post-exec handler for task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (context is null)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_2d
    return-void

    .line 138
    :cond_2e
    iget-boolean v0, p0, Ldbxyzptlk/r/a;->c:Z

    if-eqz v0, :cond_46

    move-object v0, v1

    .line 139
    check-cast v0, Landroid/app/Activity;

    .line 140
    iget v2, p0, Ldbxyzptlk/r/a;->h:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_3f

    .line 141
    iget v2, p0, Ldbxyzptlk/r/a;->h:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 143
    :cond_3f
    iget-boolean v2, p0, Ldbxyzptlk/r/a;->d:Z

    if-eqz v2, :cond_52

    .line 144
    invoke-virtual {v0, v4}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 150
    :cond_46
    :goto_46
    invoke-virtual {p0}, Ldbxyzptlk/r/a;->d()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 151
    iget-object v0, p0, Ldbxyzptlk/r/a;->b:Ljava/lang/Exception;

    invoke-virtual {p0, v1, v0}, Ldbxyzptlk/r/a;->a(Landroid/content/Context;Ljava/lang/Exception;)V

    goto :goto_2d

    .line 145
    :cond_52
    iget-boolean v2, p0, Ldbxyzptlk/r/a;->e:Z

    if-eqz v2, :cond_46

    .line 146
    invoke-virtual {v0, v4}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_46

    .line 153
    :cond_5a
    invoke-virtual {p0, v1, p1}, Ldbxyzptlk/r/a;->a(Landroid/content/Context;Ljava/lang/Object;)V

    goto :goto_2d
.end method

.method protected final onPreExecute()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 83
    invoke-virtual {p0}, Ldbxyzptlk/r/a;->c()Landroid/content/Context;

    move-result-object v1

    .line 84
    if-nez v1, :cond_31

    .line 85
    const-class v0, Ldbxyzptlk/r/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skipping pre-exec handler for task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (context is null)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0, v4}, Ldbxyzptlk/r/a;->cancel(Z)Z

    .line 103
    :goto_30
    return-void

    .line 91
    :cond_31
    iget-boolean v0, p0, Ldbxyzptlk/r/a;->c:Z

    if-eqz v0, :cond_49

    move-object v0, v1

    .line 92
    check-cast v0, Landroid/app/Activity;

    .line 93
    iget v2, p0, Ldbxyzptlk/r/a;->h:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_42

    .line 94
    iget v2, p0, Ldbxyzptlk/r/a;->h:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 96
    :cond_42
    iget-boolean v2, p0, Ldbxyzptlk/r/a;->d:Z

    if-eqz v2, :cond_4d

    .line 97
    invoke-virtual {v0, v4}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 102
    :cond_49
    :goto_49
    invoke-virtual {p0, v1}, Ldbxyzptlk/r/a;->a(Landroid/content/Context;)V

    goto :goto_30

    .line 98
    :cond_4d
    iget-boolean v2, p0, Ldbxyzptlk/r/a;->e:Z

    if-eqz v2, :cond_49

    .line 99
    invoke-virtual {v0, v4}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_49
.end method
