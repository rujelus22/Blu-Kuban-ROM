.class Laro;
.super Landroid/os/AsyncTask;
.source "UserFeedback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Larm;


# direct methods
.method constructor <init>(Larm;)V
    .registers 2
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Laro;->a:Larm;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Laro;->a:Larm;

    invoke-virtual {v0}, Larm;->c()Z

    move-result v0

    if-nez v0, :cond_d

    .line 132
    iget-object v0, p0, Laro;->a:Larm;

    invoke-virtual {v0}, Larm;->b()V

    .line 134
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .registers 5
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Laro;->a:Larm;

    invoke-static {v0}, Larm;->a(Larm;)LarF;

    move-result-object v0

    invoke-virtual {v0}, LarF;->a()Landroid/content/Context;

    move-result-object v0

    .line 140
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 142
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 128
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Laro;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 128
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Laro;->a(Ljava/lang/Void;)V

    return-void
.end method
