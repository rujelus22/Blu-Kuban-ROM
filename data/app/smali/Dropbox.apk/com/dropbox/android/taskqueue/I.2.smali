.class final Lcom/dropbox/android/taskqueue/I;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/util/aH;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dropbox/android/taskqueue/G;


# direct methods
.method constructor <init>(Lcom/dropbox/android/taskqueue/G;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/I;->b:Lcom/dropbox/android/taskqueue/G;

    iput-object p2, p0, Lcom/dropbox/android/taskqueue/I;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/taskqueue/DbTask;)Z
    .registers 4
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/I;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/DbTask;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 244
    check-cast p1, Lcom/dropbox/android/taskqueue/DbTask;

    invoke-virtual {p0, p1}, Lcom/dropbox/android/taskqueue/I;->a(Lcom/dropbox/android/taskqueue/DbTask;)Z

    move-result v0

    return v0
.end method
