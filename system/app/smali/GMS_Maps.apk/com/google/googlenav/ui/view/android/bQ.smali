.class Lcom/google/googlenav/ui/view/android/bQ;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final synthetic e:Z


# instance fields
.field a:I

.field b:I

.field c:Lcom/google/googlenav/ah;

.field d:Lcom/google/googlenav/ui/view/android/bN;

.field final synthetic f:Lcom/google/googlenav/ui/view/android/bN;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/googlenav/ui/view/android/bN;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/googlenav/ui/view/android/bQ;->e:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/view/android/bN;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bQ;->f:Lcom/google/googlenav/ui/view/android/bN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/bQ;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bQ;->d:Lcom/google/googlenav/ui/view/android/bN;

    iput p2, p0, Lcom/google/googlenav/ui/view/android/bQ;->a:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    const/16 v4, 0x578

    sget-boolean v0, Lcom/google/googlenav/ui/view/android/bQ;->e:Z

    if-nez v0, :cond_11

    iget v0, p0, Lcom/google/googlenav/ui/view/android/bQ;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    sget-boolean v0, Lcom/google/googlenav/ui/view/android/bQ;->e:Z

    if-nez v0, :cond_23

    iget v0, p0, Lcom/google/googlenav/ui/view/android/bQ;->a:I

    if-ne v0, v4, :cond_23

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bQ;->d:Lcom/google/googlenav/ui/view/android/bN;

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_23
    iget v0, p0, Lcom/google/googlenav/ui/view/android/bQ;->a:I

    if-ne v0, v4, :cond_4d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bQ;->c:Lcom/google/googlenav/ah;

    :goto_29
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bQ;->f:Lcom/google/googlenav/ui/view/android/bN;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/bN;->F:Lcom/google/googlenav/ui/p;

    iget v2, p0, Lcom/google/googlenav/ui/view/android/bQ;->a:I

    iget v3, p0, Lcom/google/googlenav/ui/view/android/bQ;->b:I

    invoke-interface {v1, v2, v3, v0}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    iget v0, p0, Lcom/google/googlenav/ui/view/android/bQ;->a:I

    if-ne v0, v4, :cond_4c

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bQ;->d:Lcom/google/googlenav/ui/view/android/bN;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bQ;->d:Lcom/google/googlenav/ui/view/android/bN;

    iget-boolean v0, v0, Lcom/google/googlenav/ui/view/android/bN;->D:Z

    if-nez v0, :cond_4f

    const/4 v0, 0x1

    :goto_41
    iput-boolean v0, v1, Lcom/google/googlenav/ui/view/android/bN;->D:Z

    check-cast p1, Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bQ;->d:Lcom/google/googlenav/ui/view/android/bN;

    iget-boolean v0, v0, Lcom/google/googlenav/ui/view/android/bN;->D:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_4c
    return-void

    :cond_4d
    const/4 v0, 0x0

    goto :goto_29

    :cond_4f
    const/4 v0, 0x0

    goto :goto_41
.end method
