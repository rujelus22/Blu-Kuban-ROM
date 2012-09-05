.class Lcom/google/googlenav/ui/view/android/bv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final synthetic b:Z


# instance fields
.field a:I

.field final synthetic c:Lcom/google/googlenav/ui/view/android/bt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/googlenav/ui/view/android/bt;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/googlenav/ui/view/android/bv;->b:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/google/googlenav/ui/view/android/bt;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bv;->c:Lcom/google/googlenav/ui/view/android/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/bv;->a:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    sget-boolean v0, Lcom/google/googlenav/ui/view/android/bv;->b:Z

    if-nez v0, :cond_f

    iget v0, p0, Lcom/google/googlenav/ui/view/android/bv;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bv;->c:Lcom/google/googlenav/ui/view/android/bt;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/bt;->a:LaY/aG;

    const/16 v1, 0x2bc

    iget v2, p0, Lcom/google/googlenav/ui/view/android/bv;->a:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, LaY/aG;->a(IILjava/lang/Object;)Z

    return-void
.end method
