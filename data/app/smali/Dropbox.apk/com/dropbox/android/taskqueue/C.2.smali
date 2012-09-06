.class final Lcom/dropbox/android/taskqueue/C;
.super Ldbxyzptlk/c/c;
.source "panda.py"


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Ldbxyzptlk/c/c;-><init>(I)V

    .line 67
    return-void
.end method


# virtual methods
.method protected final a(Lcom/dropbox/android/taskqueue/A;Ljava/util/HashMap;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method protected final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 64
    check-cast p1, Lcom/dropbox/android/taskqueue/A;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/android/taskqueue/C;->a(Lcom/dropbox/android/taskqueue/A;Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method
