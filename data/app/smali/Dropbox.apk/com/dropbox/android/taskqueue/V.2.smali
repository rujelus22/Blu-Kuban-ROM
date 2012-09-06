.class final Lcom/dropbox/android/taskqueue/V;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>([Ljava/lang/Class;)V
    .registers 4
    .parameter

    .prologue
    .line 836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/V;->a:Ljava/util/ArrayList;

    .line 837
    if-eqz p1, :cond_15

    .line 838
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/V;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 841
    :cond_15
    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/taskqueue/DbTask;Lcom/dropbox/android/taskqueue/DbTask;)I
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 846
    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/DbTask;->p()I

    move-result v0

    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/DbTask;->n()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    if-lt v0, v3, :cond_21

    move v0, v1

    .line 847
    :goto_f
    invoke-virtual {p2}, Lcom/dropbox/android/taskqueue/DbTask;->p()I

    move-result v3

    invoke-virtual {p2}, Lcom/dropbox/android/taskqueue/DbTask;->n()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    if-lt v3, v4, :cond_1c

    move v2, v1

    .line 848
    :cond_1c
    if-eqz v0, :cond_23

    if-nez v2, :cond_23

    .line 861
    :cond_20
    :goto_20
    return v1

    :cond_21
    move v0, v2

    .line 846
    goto :goto_f

    .line 850
    :cond_23
    if-nez v0, :cond_29

    if-eqz v2, :cond_29

    .line 851
    const/4 v1, -0x1

    goto :goto_20

    .line 855
    :cond_29
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/V;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/V;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sub-int v1, v0, v1

    .line 856
    if-nez v1, :cond_20

    .line 861
    invoke-virtual {p1, p2}, Lcom/dropbox/android/taskqueue/DbTask;->a(Lcom/dropbox/android/taskqueue/DbTask;)I

    move-result v1

    goto :goto_20
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 830
    check-cast p1, Lcom/dropbox/android/taskqueue/DbTask;

    check-cast p2, Lcom/dropbox/android/taskqueue/DbTask;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/android/taskqueue/V;->a(Lcom/dropbox/android/taskqueue/DbTask;Lcom/dropbox/android/taskqueue/DbTask;)I

    move-result v0

    return v0
.end method
