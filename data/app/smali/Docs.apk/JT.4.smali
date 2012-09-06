.class public LJT;
.super Ljava/lang/Object;
.source "ChromeVisibilityController.java"

# interfaces
.implements LJV;


# instance fields
.field private final a:LJY;

.field private final a:Landroid/app/Activity;

.field private final a:Landroid/view/View;

.field private final a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

.field private final a:Ljava/lang/Runnable;

.field private final a:Lx;

.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lx;Landroid/view/View;Lcom/google/android/apps/docs/kixwebview/PageScrubber;Landroid/os/Handler;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v0, p0, LJT;->a:Z

    .line 28
    iput-boolean v0, p0, LJT;->b:Z

    .line 29
    iput-boolean v0, p0, LJT;->c:Z

    .line 31
    new-instance v0, LJU;

    invoke-direct {v0, p0}, LJU;-><init>(LJT;)V

    iput-object v0, p0, LJT;->a:Ljava/lang/Runnable;

    .line 44
    iput-object p1, p0, LJT;->a:Landroid/app/Activity;

    .line 45
    iput-object p3, p0, LJT;->a:Landroid/view/View;

    .line 46
    iput-object p4, p0, LJT;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    .line 47
    iput-object p2, p0, LJT;->a:Lx;

    .line 48
    new-instance v0, LJY;

    iget-object v1, p0, LJT;->a:Ljava/lang/Runnable;

    const/16 v2, 0x1388

    invoke-direct {v0, p5, v1, v2}, LJY;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;I)V

    iput-object v0, p0, LJT;->a:LJY;

    .line 50
    return-void
.end method

.method private b(Z)V
    .registers 5
    .parameter

    .prologue
    .line 92
    const-string v0, "ChromeVisibilityController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal chrome visibility changes to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, LJT;->a:Z

    .line 94
    iget-object v0, p0, LJT;->a:Lx;

    invoke-virtual {v0}, Lx;->a()LH;

    move-result-object v0

    .line 95
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, LH;->a(II)LH;

    .line 96
    if-eqz p1, :cond_40

    .line 97
    iget-object v1, p0, LJT;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-virtual {v0, v1}, LH;->c(Landroid/support/v4/app/Fragment;)LH;

    .line 98
    iget-object v1, p0, LJT;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->show()V

    .line 103
    :goto_39
    invoke-virtual {v0}, LH;->a()I

    .line 104
    invoke-direct {p0, p1}, LJT;->c(Z)V

    .line 105
    return-void

    .line 100
    :cond_40
    iget-object v1, p0, LJT;->a:Lcom/google/android/apps/docs/kixwebview/PageScrubber;

    invoke-virtual {v0, v1}, LH;->b(Landroid/support/v4/app/Fragment;)LH;

    .line 101
    iget-object v1, p0, LJT;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    goto :goto_39
.end method

.method private c(Z)V
    .registers 4
    .parameter

    .prologue
    .line 112
    iget-object v1, p0, LJT;->a:Landroid/view/View;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 114
    return-void

    .line 112
    :cond_9
    const/4 v0, 0x3

    goto :goto_5
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 70
    iget-boolean v0, p0, LJT;->b:Z

    if-nez v0, :cond_c

    .line 71
    iget-boolean v0, p0, LJT;->c:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p0, v0}, LJT;->a(Z)V

    .line 73
    :cond_c
    return-void

    .line 71
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public a(Z)V
    .registers 5
    .parameter

    .prologue
    .line 54
    iget-boolean v0, p0, LJT;->b:Z

    if-eqz v0, :cond_5

    .line 66
    :cond_4
    :goto_4
    return-void

    .line 57
    :cond_5
    const-string v0, "ChromeVisibilityController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chrome visibility changes to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-boolean p1, p0, LJT;->c:Z

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, LJT;->a:Z

    .line 61
    iget-boolean v0, p0, LJT;->c:Z

    invoke-direct {p0, v0}, LJT;->b(Z)V

    .line 63
    iget-boolean v0, p0, LJT;->a:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, LJT;->c:Z

    if-eqz v0, :cond_4

    .line 64
    iget-object v0, p0, LJT;->a:LJY;

    invoke-virtual {v0}, LJY;->a()V

    goto :goto_4
.end method

.method public b()V
    .registers 3

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, LJT;->b:Z

    .line 80
    iget-object v0, p0, LJT;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 81
    iget-object v0, p0, LJT;->a:LJY;

    invoke-virtual {v0}, LJY;->b()V

    .line 82
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, LJT;->b:Z

    .line 89
    return-void
.end method
