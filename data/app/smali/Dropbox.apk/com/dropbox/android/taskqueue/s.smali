.class final Lcom/dropbox/android/taskqueue/s;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/taskqueue/t;


# instance fields
.field final synthetic a:Ldbxyzptlk/l/o;

.field final synthetic b:Lcom/dropbox/android/taskqueue/m;

.field final synthetic c:Lcom/dropbox/android/taskqueue/q;


# direct methods
.method constructor <init>(Lcom/dropbox/android/taskqueue/q;Ldbxyzptlk/l/o;Lcom/dropbox/android/taskqueue/m;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/s;->c:Lcom/dropbox/android/taskqueue/q;

    iput-object p2, p0, Lcom/dropbox/android/taskqueue/s;->a:Ldbxyzptlk/l/o;

    iput-object p3, p0, Lcom/dropbox/android/taskqueue/s;->b:Lcom/dropbox/android/taskqueue/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/taskqueue/E;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 424
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/s;->a:Ldbxyzptlk/l/o;

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/s;->b:Lcom/dropbox/android/taskqueue/m;

    invoke-interface {p1, p2, v0, v1}, Lcom/dropbox/android/taskqueue/E;->a(Ljava/lang/String;Ldbxyzptlk/l/o;Lcom/dropbox/android/taskqueue/m;)V

    .line 425
    return-void
.end method
