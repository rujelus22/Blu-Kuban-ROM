.class public LKJ;
.super Ljava/lang/Object;
.source "PageScrubber.java"

# interfaces
.implements LKN;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, LKJ;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 60
    const-string v0, "PageScrubber"

    const-string v1, "undo"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, LKJ;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)I

    move-result v0

    if-ltz v0, :cond_41

    .line 62
    iget-object v0, p0, LKJ;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)LKI;

    move-result-object v0

    iget-object v1, p0, LKJ;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-static {v1}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, LKI;->b(I)V

    .line 63
    iget-object v0, p0, LKJ;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)Lcom/google/android/apps/docs/kixwebview/ScrubBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a()I

    move-result v0

    .line 64
    iget-object v1, p0, LKJ;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-static {v1}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)I

    move-result v1

    if-ne v0, v1, :cond_42

    .line 65
    iget-object v0, p0, LKJ;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)V

    .line 70
    :goto_37
    iget-object v0, p0, LKJ;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)LJV;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, LJV;->a(Z)V

    .line 72
    :cond_41
    return-void

    .line 67
    :cond_42
    iget-object v1, p0, LKJ;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-static {v1}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)Lcom/google/android/apps/docs/kixwebview/ScrubBar;

    move-result-object v1

    iget-object v2, p0, LKJ;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-static {v2}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->setPosition(I)V

    .line 68
    iget-object v1, p0, LKJ;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-static {v1, v0}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a(Lcom/google/android/apps/docs/kixwebview/PageScrubber;I)V

    goto :goto_37
.end method

.method public a(I)V
    .registers 5
    .parameter

    .prologue
    .line 83
    const-string v0, "PageScrubber"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, LKJ;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)LKI;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, LKI;->b(I)V

    .line 85
    iget-object v0, p0, LKJ;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)I

    move-result v0

    if-ne p1, v0, :cond_30

    .line 86
    iget-object v0, p0, LKJ;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)V

    .line 88
    :cond_30
    iget-object v0, p0, LKJ;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)LJV;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, LJV;->a(Z)V

    .line 89
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 76
    const-string v0, "PageScrubber"

    const-string v1, "started"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, LKJ;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    iget-object v1, p0, LKJ;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-static {v1}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)Lcom/google/android/apps/docs/kixwebview/ScrubBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a(Lcom/google/android/apps/docs/kixwebview/PageScrubber;I)V

    .line 78
    iget-object v0, p0, LKJ;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/PageScrubber;->a(Lcom/google/android/apps/docs/kixwebview/PageScrubber;)LJV;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, LJV;->a(Z)V

    .line 79
    return-void
.end method
