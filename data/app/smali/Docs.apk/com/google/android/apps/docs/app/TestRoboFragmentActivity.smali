.class public Lcom/google/android/apps/docs/app/TestRoboFragmentActivity;
.super Lcom/google/android/apps/docs/app/BaseActivity;
.source "TestRoboFragmentActivity.java"

# interfaces
.implements LGZ;
.implements LgT;


# instance fields
.field private a:Landroid/content/Intent;

.field private a:LgT;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/app/TestRoboFragmentActivity;->j:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/docs/app/TestRoboFragmentActivity;->a:LgT;

    if-nez v0, :cond_6

    .line 28
    const/4 v0, 0x0

    .line 31
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/docs/app/TestRoboFragmentActivity;->a:LgT;

    invoke-interface {v0, p1, p2}, LgT;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p2, p0, Lcom/google/android/apps/docs/app/TestRoboFragmentActivity;->a:Landroid/content/Intent;

    .line 72
    iget-boolean v0, p0, Lcom/google/android/apps/docs/app/TestRoboFragmentActivity;->j:Z

    if-eqz v0, :cond_9

    .line 73
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/docs/app/BaseActivity;->a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 75
    :cond_9
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 117
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 122
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 127
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/google/android/apps/docs/app/TestRoboFragmentActivity;->i:Z

    return v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/apps/docs/app/TestRoboFragmentActivity;->a:Landroid/content/Intent;

    .line 55
    iget-boolean v0, p0, Lcom/google/android/apps/docs/app/TestRoboFragmentActivity;->j:Z

    if-eqz v0, :cond_9

    .line 56
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 58
    :cond_9
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/apps/docs/app/TestRoboFragmentActivity;->a:Landroid/content/Intent;

    .line 63
    iget-boolean v0, p0, Lcom/google/android/apps/docs/app/TestRoboFragmentActivity;->j:Z

    if-eqz v0, :cond_9

    .line 64
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/docs/app/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 66
    :cond_9
    return-void
.end method
