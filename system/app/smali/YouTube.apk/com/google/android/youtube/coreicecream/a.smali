.class public abstract Lcom/google/android/youtube/coreicecream/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/core/Analytics;

.field private final b:Landroid/os/Bundle;

.field protected final f:Landroid/app/Application;

.field protected final g:Landroid/app/Activity;


# direct methods
.method protected constructor <init>(Landroid/app/Application;Lcom/google/android/youtube/core/Analytics;Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/a;->f:Landroid/app/Application;

    .line 43
    iput-object p2, p0, Lcom/google/android/youtube/coreicecream/a;->a:Lcom/google/android/youtube/core/Analytics;

    .line 44
    iput-object p3, p0, Lcom/google/android/youtube/coreicecream/a;->g:Landroid/app/Activity;

    .line 45
    iput-object p4, p0, Lcom/google/android/youtube/coreicecream/a;->b:Landroid/os/Bundle;

    .line 46
    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected a(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 134
    if-nez p2, :cond_7

    .line 135
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/coreicecream/a;->c(I)Landroid/app/Dialog;

    move-result-object v0

    .line 137
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected final varargs a(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/a;->g:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/os/Bundle;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    return-void
.end method

.method protected a(Landroid/view/Menu;)V
    .registers 2
    .parameter

    .prologue
    .line 124
    return-void
.end method

.method protected a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 117
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 66
    return-void
.end method

.method protected a(IILandroid/content/Intent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method protected a(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method protected a(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method protected b(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method protected c(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final d(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/a;->g:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d()V
    .registers 1

    .prologue
    .line 114
    return-void
.end method

.method protected g()V
    .registers 1

    .prologue
    .line 81
    return-void
.end method

.method protected h()V
    .registers 1

    .prologue
    .line 101
    return-void
.end method

.method protected h_()V
    .registers 1

    .prologue
    .line 108
    return-void
.end method

.method protected i()Z
    .registers 2

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method protected i_()V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/a;->a:Lcom/google/android/youtube/core/Analytics;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method protected j()Z
    .registers 2

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method protected final l()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/a;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method protected final m()Landroid/app/ActionBar;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/a;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method
