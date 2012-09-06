.class LarD;
.super Landroid/os/AsyncTask;
.source "UserFeedbackReportBuilder.java"


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
.field final synthetic a:LarC;

.field final synthetic a:Larz;


# direct methods
.method constructor <init>(LarC;Larz;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 72
    iput-object p1, p0, LarD;->a:LarC;

    iput-object p2, p0, LarD;->a:Larz;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, LarD;->a:LarC;

    iget-object v1, p0, LarD;->a:Larz;

    invoke-static {v0, v1}, LarC;->a(LarC;Larz;)V

    .line 76
    iget-object v0, p0, LarD;->a:LarC;

    iget-object v1, p0, LarD;->a:Larz;

    invoke-static {v0, v1}, LarC;->b(LarC;Larz;)V

    .line 77
    iget-object v0, p0, LarD;->a:LarC;

    iget-object v1, p0, LarD;->a:Larz;

    invoke-static {v0, v1}, LarC;->c(LarC;Larz;)V

    .line 78
    iget-object v0, p0, LarD;->a:LarC;

    iget-object v1, p0, LarD;->a:Larz;

    invoke-static {v0, v1}, LarC;->d(LarC;Larz;)V

    .line 79
    iget-object v0, p0, LarD;->a:LarC;

    iget-object v1, p0, LarD;->a:Larz;

    invoke-static {v0, v1}, LarC;->e(LarC;Larz;)V

    .line 80
    iget-object v0, p0, LarD;->a:LarC;

    iget-object v1, p0, LarD;->a:Larz;

    invoke-static {v0, v1}, LarC;->f(LarC;Larz;)V

    .line 81
    iget-object v0, p0, LarD;->a:LarC;

    iget-object v1, p0, LarD;->a:Larz;

    invoke-static {v0, v1}, LarC;->g(LarC;Larz;)V

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 72
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, LarD;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
