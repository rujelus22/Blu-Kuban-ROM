.class public Loe;
.super Ldd;
.source "DeleteDialogFragment.java"


# instance fields
.field final synthetic a:LRR;

.field final synthetic a:Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;

.field final synthetic a:LkG;

.field final synthetic a:Lpm;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;LkG;LRR;Lpm;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Loe;->a:Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;

    iput-object p2, p0, Loe;->a:LkG;

    iput-object p3, p0, Loe;->a:LRR;

    iput-object p4, p0, Loe;->a:Lpm;

    invoke-direct {p0}, Ldd;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 175
    .line 177
    iget-object v0, p0, Loe;->a:Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a(Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    iget-object v4, p0, Loe;->a:Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;

    iget-object v4, v4, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a:Llu;

    iget-object v5, p0, Loe;->a:LkG;

    invoke-interface {v4, v5, v0}, Llu;->a(LkG;Ljava/lang/String;)LkT;

    move-result-object v4

    .line 179
    if-nez v4, :cond_40

    .line 180
    add-int/lit8 v1, v1, 0x1

    .line 181
    const-string v4, "DeleteDialogFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Already deleted entry with resourceId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 185
    :cond_40
    iget-object v0, p0, Loe;->a:LRR;

    invoke-static {v0, v4}, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a(LRR;LkT;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 191
    :cond_48
    iget-object v0, p0, Loe;->a:Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a(Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v1, v0, :cond_5e

    .line 192
    iget-object v0, p0, Loe;->a:Lpm;

    invoke-virtual {v0, v2, v7}, Lpm;->a(ILjava/lang/Throwable;)V

    .line 196
    :goto_59
    return-void

    .line 188
    :cond_5a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 189
    goto :goto_d

    .line 194
    :cond_5e
    iget-object v0, p0, Loe;->a:Lpm;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v7}, Lpm;->a(ILjava/lang/Throwable;)V

    goto :goto_59
.end method
