.class final Lcom/dropbox/android/taskqueue/r;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/taskqueue/t;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ldbxyzptlk/l/o;

.field final synthetic c:Lcom/dropbox/android/taskqueue/q;


# direct methods
.method constructor <init>(Lcom/dropbox/android/taskqueue/q;Ljava/lang/String;Ldbxyzptlk/l/o;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/r;->c:Lcom/dropbox/android/taskqueue/q;

    iput-object p2, p0, Lcom/dropbox/android/taskqueue/r;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dropbox/android/taskqueue/r;->b:Ldbxyzptlk/l/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/taskqueue/E;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 413
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/r;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/r;->b:Ldbxyzptlk/l/o;

    invoke-interface {p1, p2, v0, v1}, Lcom/dropbox/android/taskqueue/E;->a(Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;)V

    .line 414
    return-void
.end method
