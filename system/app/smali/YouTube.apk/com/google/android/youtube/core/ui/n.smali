.class final Lcom/google/android/youtube/core/ui/n;
.super Lcom/google/android/youtube/core/ui/l;
.source "SourceFile"


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/google/android/youtube/core/ui/m;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/youtube/core/ui/n;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/google/android/youtube/core/ui/m;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/google/android/youtube/core/ui/m;B)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-direct {p0, p1, p3}, Lcom/google/android/youtube/core/ui/l;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/ui/m;)V

    .line 170
    iput-object p2, p0, Lcom/google/android/youtube/core/ui/n;->a:Landroid/view/View;

    .line 171
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .prologue
    .line 190
    invoke-super {p0}, Lcom/google/android/youtube/core/ui/l;->a()V

    .line 191
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/n;->e()V

    .line 192
    return-void
.end method

.method protected final d()V
    .registers 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/n;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    return-void
.end method

.method protected final e()V
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/n;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    return-void
.end method
