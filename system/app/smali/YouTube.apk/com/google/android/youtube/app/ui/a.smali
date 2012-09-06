.class public final Lcom/google/android/youtube/app/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/google/android/youtube/core/ui/m;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/BaseAdapter;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/widget/Button;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/BaseAdapter;Lcom/google/android/youtube/core/ui/m;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "view may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/a;->b:Landroid/view/View;

    .line 42
    const-string v0, "adapter may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/a;->c:Landroid/widget/BaseAdapter;

    .line 43
    const-string v0, "retryListener may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/m;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/a;->a:Lcom/google/android/youtube/core/ui/m;

    .line 45
    const v0, 0x7f0800bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/a;->d:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0800be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/a;->e:Landroid/widget/ProgressBar;

    .line 48
    const v0, 0x7f0800c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/a;->f:Landroid/widget/Button;

    .line 49
    const v0, 0x7f0800bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/a;->g:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/a;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/a;->a()V

    .line 53
    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/a;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/a;->c:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 68
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/a;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/a;->c:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 63
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x8

    .line 77
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/a;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/a;->f:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 79
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/a;->e:Landroid/widget/ProgressBar;

    if-eqz p2, :cond_11

    const/4 v0, 0x0

    :cond_11
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/a;->b()V

    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/a;->c:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 83
    return-void
.end method

.method public final b(Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/a;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/a;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/a;->e:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/a;->b()V

    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/a;->c:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 99
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/a;->a:Lcom/google/android/youtube/core/ui/m;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/m;->h()V

    .line 58
    return-void
.end method
