.class public LeJ;
.super Lcg;
.source "DocumentOpenerActivity.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

.field final synthetic a:Lld;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;Landroid/content/Context;Lld;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, LeJ;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    iput-object p2, p0, LeJ;->b:Landroid/content/Context;

    iput-object p3, p0, LeJ;->a:Lld;

    invoke-direct {p0}, Lcg;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 528
    iget-object v0, p0, LeJ;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Lck;

    iget-object v1, p0, LeJ;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 530
    const/4 v4, 0x5

    .line 531
    const/16 v5, 0x3c

    .line 535
    const/4 v0, 0x1

    move v3, v2

    .line 537
    :goto_13
    const/4 v1, 0x2

    if-ge v3, v1, :cond_a7

    iget-object v1, p0, LeJ;->b:Landroid/content/Context;

    invoke-static {v1}, LXH;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 539
    :try_start_1e
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_5b

    int-to-long v0, v4

    :goto_23
    invoke-virtual {v6, v0, v1}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_26} :catch_5d

    .line 545
    add-int/lit8 v0, v3, 0x1

    .line 546
    const-string v1, "DocumentOpenerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying sync doc after opened. Checking count: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v1, p0, LeJ;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    iget-object v1, v1, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Llu;

    iget-object v3, p0, LeJ;->a:Lld;

    iget-object v3, v3, Lld;->a:Ljava/lang/String;

    invoke-interface {v1, v3}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v1

    .line 549
    iget-object v3, p0, LeJ;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    iget-object v3, v3, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Llu;

    iget-object v6, p0, LeJ;->a:Lld;

    iget-object v6, v6, Lld;->b:Ljava/lang/String;

    invoke-interface {v3, v1, v6}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v3

    .line 550
    if-nez v3, :cond_62

    .line 566
    :cond_5a
    :goto_5a
    return-void

    .line 539
    :cond_5b
    int-to-long v0, v5

    goto :goto_23

    .line 541
    :catch_5d
    move-exception v0

    .line 542
    invoke-virtual {p0}, LeJ;->a()V

    goto :goto_5a

    .line 553
    :cond_62
    iget-object v6, p0, LeJ;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    iget-object v6, v6, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LVj;

    iget-object v7, p0, LeJ;->b:Landroid/content/Context;

    invoke-interface {v6, v7, v3}, LVj;->c(Landroid/content/Context;LkR;)V

    .line 555
    iget-object v3, p0, LeJ;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    iget-object v3, v3, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:Llu;

    iget-object v6, p0, LeJ;->a:Lld;

    iget-object v6, v6, Lld;->b:Ljava/lang/String;

    invoke-interface {v3, v1, v6}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v1

    .line 556
    if-eqz v1, :cond_5a

    .line 559
    sget-object v3, LQM;->a:LQM;

    invoke-virtual {v1, v3}, LkR;->a(LQM;)Z

    move-result v3

    if-nez v3, :cond_a3

    .line 560
    const-string v2, "DocumentOpenerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Doc synced after opened. Checking count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, LeJ;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LVj;

    iget-object v2, p0, LeJ;->b:Landroid/content/Context;

    invoke-interface {v0, v2, v1}, LVj;->b(Landroid/content/Context;LkR;)V

    goto :goto_5a

    :cond_a3
    move v3, v0

    move v0, v2

    .line 564
    goto/16 :goto_13

    .line 565
    :cond_a7
    const-string v0, "DocumentOpenerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No change detected. Checking count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a
.end method
