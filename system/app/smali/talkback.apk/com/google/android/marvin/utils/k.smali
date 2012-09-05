.class public Lcom/google/android/marvin/utils/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/WindowManager;

.field private final c:Landroid/view/ViewGroup;

.field private final d:Landroid/view/WindowManager$LayoutParams;

.field private e:Z

.field private final f:Landroid/view/View$OnAttachStateChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/marvin/utils/r;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/utils/r;-><init>(Lcom/google/android/marvin/utils/k;)V

    iput-object v0, p0, Lcom/google/android/marvin/utils/k;->f:Landroid/view/View$OnAttachStateChangeListener;

    iput-object p1, p0, Lcom/google/android/marvin/utils/k;->a:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/marvin/utils/k;->b:Landroid/view/WindowManager;

    new-instance v0, Lcom/google/android/marvin/utils/m;

    invoke-direct {v0, p1}, Lcom/google/android/marvin/utils/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/marvin/utils/k;->c:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/marvin/utils/k;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/marvin/utils/k;->f:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/utils/k;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/google/android/marvin/utils/k;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/google/android/marvin/utils/k;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/marvin/utils/k;->e:Z

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/google/android/marvin/utils/k;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/marvin/utils/k;->e:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/marvin/utils/k;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/google/android/marvin/utils/k;->c:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/marvin/utils/k;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/marvin/utils/k;->e:Z

    goto :goto_4
.end method

.method public final a(Landroid/view/WindowManager$LayoutParams;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/marvin/utils/k;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget-boolean v0, p0, Lcom/google/android/marvin/utils/k;->e:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/marvin/utils/k;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/google/android/marvin/utils/k;->c:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/marvin/utils/k;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_12
    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public final c()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/marvin/utils/k;->e:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/marvin/utils/k;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/google/android/marvin/utils/k;->c:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/marvin/utils/k;->e:Z

    goto :goto_4
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public final e()Landroid/view/WindowManager$LayoutParams;
    .registers 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v1, p0, Lcom/google/android/marvin/utils/k;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    return-object v0
.end method

.method public final f()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/marvin/utils/k;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f03

    iget-object v2, p0, Lcom/google/android/marvin/utils/k;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method
