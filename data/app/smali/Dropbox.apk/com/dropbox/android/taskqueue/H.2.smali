.class final Lcom/dropbox/android/taskqueue/H;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/util/B;


# instance fields
.field final synthetic a:Lcom/dropbox/android/taskqueue/G;


# direct methods
.method constructor <init>(Lcom/dropbox/android/taskqueue/G;)V
    .registers 2
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/H;->a:Lcom/dropbox/android/taskqueue/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/util/C;)V
    .registers 3
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/H;->a:Lcom/dropbox/android/taskqueue/G;

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/G;->b()V

    .line 138
    return-void
.end method
