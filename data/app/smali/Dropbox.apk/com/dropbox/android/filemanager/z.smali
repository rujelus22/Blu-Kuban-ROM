.class final Lcom/dropbox/android/filemanager/z;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/taskqueue/l;


# instance fields
.field private final a:Ldbxyzptlk/i/g;

.field private final b:Ldbxyzptlk/i/j;


# direct methods
.method constructor <init>(Ldbxyzptlk/i/g;Ldbxyzptlk/i/j;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    iput-object p1, p0, Lcom/dropbox/android/filemanager/z;->a:Ldbxyzptlk/i/g;

    .line 629
    iput-object p2, p0, Lcom/dropbox/android/filemanager/z;->b:Ldbxyzptlk/i/j;

    .line 630
    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/taskqueue/k;Landroid/net/Uri;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 634
    return-void
.end method

.method public final a(Lcom/dropbox/android/taskqueue/k;Landroid/net/Uri;JJ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 639
    iget-object v0, p0, Lcom/dropbox/android/filemanager/z;->b:Ldbxyzptlk/i/j;

    sget-object v1, Lcom/dropbox/android/taskqueue/m;->a:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {v0, v1}, Ldbxyzptlk/i/j;->a(Lcom/dropbox/android/taskqueue/m;)V

    .line 640
    iget-object v0, p0, Lcom/dropbox/android/filemanager/z;->b:Ldbxyzptlk/i/j;

    const/high16 v1, 0x42c8

    long-to-float v2, p3

    long-to-float v3, p5

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ldbxyzptlk/i/j;->a(F)V

    .line 641
    iget-object v0, p0, Lcom/dropbox/android/filemanager/z;->b:Ldbxyzptlk/i/j;

    invoke-virtual {v0, p5, p6}, Ldbxyzptlk/i/j;->a(J)V

    .line 642
    return-void
.end method

.method public final a(Lcom/dropbox/android/taskqueue/k;Lcom/dropbox/android/taskqueue/m;Landroid/net/Uri;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 653
    invoke-virtual {p2}, Lcom/dropbox/android/taskqueue/m;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 654
    iget-object v0, p0, Lcom/dropbox/android/filemanager/z;->b:Ldbxyzptlk/i/j;

    const/high16 v1, -0x4080

    invoke-virtual {v0, v1}, Ldbxyzptlk/i/j;->a(F)V

    .line 655
    iget-object v0, p0, Lcom/dropbox/android/filemanager/z;->b:Ldbxyzptlk/i/j;

    invoke-virtual {v0, p2}, Ldbxyzptlk/i/j;->a(Lcom/dropbox/android/taskqueue/m;)V

    .line 661
    :goto_12
    return-void

    .line 657
    :cond_13
    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/k;->e()Ldbxyzptlk/i/i;

    move-result-object v0

    .line 658
    invoke-virtual {p1, p0}, Lcom/dropbox/android/taskqueue/k;->b(Lcom/dropbox/android/taskqueue/l;)V

    .line 659
    iget-object v1, p0, Lcom/dropbox/android/filemanager/z;->a:Ldbxyzptlk/i/g;

    iget-object v2, p0, Lcom/dropbox/android/filemanager/z;->b:Ldbxyzptlk/i/j;

    invoke-virtual {v1, v0, v2}, Ldbxyzptlk/i/g;->b(Ldbxyzptlk/i/i;Ldbxyzptlk/i/f;)V

    goto :goto_12
.end method

.method public final b(Lcom/dropbox/android/taskqueue/k;Landroid/net/Uri;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 665
    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/k;->e()Ldbxyzptlk/i/i;

    move-result-object v0

    .line 666
    invoke-virtual {p1, p0}, Lcom/dropbox/android/taskqueue/k;->b(Lcom/dropbox/android/taskqueue/l;)V

    .line 667
    iget-object v1, p0, Lcom/dropbox/android/filemanager/z;->a:Ldbxyzptlk/i/g;

    iget-object v2, p0, Lcom/dropbox/android/filemanager/z;->b:Ldbxyzptlk/i/j;

    invoke-virtual {v1, v0, v2}, Ldbxyzptlk/i/g;->b(Ldbxyzptlk/i/i;Ldbxyzptlk/i/f;)V

    .line 668
    return-void
.end method

.method public final c(Lcom/dropbox/android/taskqueue/k;Landroid/net/Uri;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 646
    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/k;->e()Ldbxyzptlk/i/i;

    move-result-object v0

    .line 647
    invoke-virtual {p1, p0}, Lcom/dropbox/android/taskqueue/k;->b(Lcom/dropbox/android/taskqueue/l;)V

    .line 648
    iget-object v1, p0, Lcom/dropbox/android/filemanager/z;->a:Ldbxyzptlk/i/g;

    iget-object v2, p0, Lcom/dropbox/android/filemanager/z;->b:Ldbxyzptlk/i/j;

    invoke-virtual {v1, v0, v2}, Ldbxyzptlk/i/g;->b(Ldbxyzptlk/i/i;Ldbxyzptlk/i/f;)V

    .line 649
    return-void
.end method
