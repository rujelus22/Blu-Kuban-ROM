.class final Lcom/dropbox/android/taskqueue/B;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field private final a:Lcom/dropbox/android/taskqueue/C;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/dropbox/android/taskqueue/C;

    invoke-direct {v0, p1}, Lcom/dropbox/android/taskqueue/C;-><init>(I)V

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/B;->a:Lcom/dropbox/android/taskqueue/C;

    .line 79
    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/taskqueue/A;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/B;->a:Lcom/dropbox/android/taskqueue/C;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/taskqueue/C;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 92
    if-eqz v0, :cond_11

    .line 93
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public final a()V
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/B;->a:Lcom/dropbox/android/taskqueue/C;

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/C;->a()V

    .line 105
    return-void
.end method

.method public final a(Lcom/dropbox/android/taskqueue/A;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/B;->a:Lcom/dropbox/android/taskqueue/C;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/taskqueue/C;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 83
    if-nez v0, :cond_f

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    :cond_f
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Lcom/dropbox/android/taskqueue/B;->a:Lcom/dropbox/android/taskqueue/C;

    invoke-virtual {v1, p1, v0}, Lcom/dropbox/android/taskqueue/C;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method public final a(Lcom/dropbox/android/taskqueue/A;)Z
    .registers 3
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/B;->a:Lcom/dropbox/android/taskqueue/C;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/taskqueue/C;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
