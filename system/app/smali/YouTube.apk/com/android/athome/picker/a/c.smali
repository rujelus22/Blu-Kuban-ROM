.class final Lcom/android/athome/picker/a/c;
.super Lcom/android/athome/picker/media/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/android/athome/picker/a/a;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/a/a;)V
    .registers 2
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/athome/picker/a/c;->a:Lcom/android/athome/picker/a/a;

    invoke-direct {p0}, Lcom/android/athome/picker/media/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/athome/picker/a/c;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v0}, Lcom/android/athome/picker/a/a;->e(Lcom/android/athome/picker/a/a;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 618
    iget-object v0, p0, Lcom/android/athome/picker/a/c;->a:Lcom/android/athome/picker/a/a;

    invoke-virtual {v0}, Lcom/android/athome/picker/a/a;->E()V

    .line 620
    :cond_d
    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/athome/picker/a/c;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v0}, Lcom/android/athome/picker/a/a;->d(Lcom/android/athome/picker/a/a;)Lcom/android/athome/picker/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/athome/picker/a/d;->a()V

    .line 584
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/athome/picker/a/c;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v0}, Lcom/android/athome/picker/a/a;->d(Lcom/android/athome/picker/a/a;)Lcom/android/athome/picker/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/athome/picker/a/d;->a()V

    .line 589
    return-void
.end method

.method public final a(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/athome/picker/a/c;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v0}, Lcom/android/athome/picker/a/a;->d(Lcom/android/athome/picker/a/a;)Lcom/android/athome/picker/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/athome/picker/a/d;->a()V

    .line 578
    iget-object v0, p0, Lcom/android/athome/picker/a/c;->a:Lcom/android/athome/picker/a/a;

    invoke-virtual {v0}, Lcom/android/athome/picker/a/a;->E()V

    .line 579
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/athome/picker/a/c;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v0}, Lcom/android/athome/picker/a/a;->d(Lcom/android/athome/picker/a/a;)Lcom/android/athome/picker/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/athome/picker/a/d;->a()V

    .line 608
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/athome/picker/a/c;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v0}, Lcom/android/athome/picker/a/a;->d(Lcom/android/athome/picker/a/a;)Lcom/android/athome/picker/a/d;

    move-result-object v0

    invoke-static {v0}, Lcom/android/athome/picker/a/d;->a(Lcom/android/athome/picker/a/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_15

    .line 594
    iget-object v0, p0, Lcom/android/athome/picker/a/c;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v0}, Lcom/android/athome/picker/a/a;->d(Lcom/android/athome/picker/a/a;)Lcom/android/athome/picker/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/athome/picker/a/d;->e()V

    .line 596
    :cond_15
    iget-object v0, p0, Lcom/android/athome/picker/a/c;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v0}, Lcom/android/athome/picker/a/a;->d(Lcom/android/athome/picker/a/a;)Lcom/android/athome/picker/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/athome/picker/a/d;->a()V

    .line 597
    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/athome/picker/a/c;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v0}, Lcom/android/athome/picker/a/a;->d(Lcom/android/athome/picker/a/a;)Lcom/android/athome/picker/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/athome/picker/a/d;->a()V

    .line 613
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/athome/picker/a/c;->a:Lcom/android/athome/picker/a/a;

    invoke-static {v0}, Lcom/android/athome/picker/a/a;->d(Lcom/android/athome/picker/a/a;)Lcom/android/athome/picker/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/athome/picker/a/d;->notifyDataSetChanged()V

    .line 602
    return-void
.end method
