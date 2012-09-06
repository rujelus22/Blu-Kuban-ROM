.class Lcom/google/commerce/wireless/topiary/e;
.super Lcom/google/commerce/wireless/topiary/j;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/google/commerce/wireless/topiary/d;


# direct methods
.method constructor <init>(Lcom/google/commerce/wireless/topiary/d;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/e;->b:Lcom/google/commerce/wireless/topiary/d;

    iput-object p2, p0, Lcom/google/commerce/wireless/topiary/e;->a:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/google/commerce/wireless/topiary/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/e;->a:Landroid/content/Intent;

    const-string v1, "topiary.EXTRA_TOKEN_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/e;->b:Lcom/google/commerce/wireless/topiary/d;

    invoke-static {v1}, Lcom/google/commerce/wireless/topiary/d;->a(Lcom/google/commerce/wireless/topiary/d;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 115
    :try_start_f
    iget-object v2, p0, Lcom/google/commerce/wireless/topiary/e;->b:Lcom/google/commerce/wireless/topiary/d;

    invoke-static {v2}, Lcom/google/commerce/wireless/topiary/d;->a(Lcom/google/commerce/wireless/topiary/d;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 116
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_22

    .line 117
    if-eqz v2, :cond_21

    .line 118
    monitor-enter v2

    .line 119
    :try_start_1d
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 120
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_25

    .line 122
    :cond_21
    return-void

    .line 116
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0

    .line 120
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method
