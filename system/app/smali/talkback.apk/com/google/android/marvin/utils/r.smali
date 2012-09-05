.class final Lcom/google/android/marvin/utils/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private synthetic a:Lcom/google/android/marvin/utils/k;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/utils/k;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/marvin/utils/r;->a:Lcom/google/android/marvin/utils/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/marvin/utils/r;->a:Lcom/google/android/marvin/utils/k;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/k;->b()V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/marvin/utils/r;->a:Lcom/google/android/marvin/utils/k;

    invoke-virtual {v0}, Lcom/google/android/marvin/utils/k;->d()V

    return-void
.end method
