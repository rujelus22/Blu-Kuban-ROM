.class Lcom/google/googlenav/ui/view/android/bN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field static final synthetic e:Z


# instance fields
.field a:I

.field b:I

.field c:Lcom/google/googlenav/ai;

.field d:Lcom/google/googlenav/ui/view/android/bJ;

.field final synthetic f:Lcom/google/googlenav/ui/view/android/bJ;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 313
    const-class v0, Lcom/google/googlenav/ui/view/android/bJ;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/googlenav/ui/view/android/bN;->e:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/view/android/bJ;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bN;->f:Lcom/google/googlenav/ui/view/android/bJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/bN;->b:I

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->d:Lcom/google/googlenav/ui/view/android/bJ;

    .line 334
    iput p2, p0, Lcom/google/googlenav/ui/view/android/bN;->a:I

    .line 335
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x578

    .line 341
    sget-boolean v0, Lcom/google/googlenav/ui/view/android/bN;->e:Z

    if-nez v0, :cond_11

    iget v0, p0, Lcom/google/googlenav/ui/view/android/bN;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 345
    :cond_11
    sget-boolean v0, Lcom/google/googlenav/ui/view/android/bN;->e:Z

    if-nez v0, :cond_23

    iget v0, p0, Lcom/google/googlenav/ui/view/android/bN;->a:I

    if-ne v0, v4, :cond_23

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->d:Lcom/google/googlenav/ui/view/android/bJ;

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 347
    :cond_23
    iget v0, p0, Lcom/google/googlenav/ui/view/android/bN;->a:I

    if-ne v0, v4, :cond_4d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->c:Lcom/google/googlenav/ai;

    .line 348
    :goto_29
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bN;->f:Lcom/google/googlenav/ui/view/android/bJ;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/bJ;->E:Lcom/google/googlenav/ui/g;

    iget v2, p0, Lcom/google/googlenav/ui/view/android/bN;->a:I

    iget v3, p0, Lcom/google/googlenav/ui/view/android/bN;->b:I

    invoke-interface {v1, v2, v3, v0}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 352
    iget v0, p0, Lcom/google/googlenav/ui/view/android/bN;->a:I

    if-ne v0, v4, :cond_4c

    .line 353
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bN;->d:Lcom/google/googlenav/ui/view/android/bJ;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->d:Lcom/google/googlenav/ui/view/android/bJ;

    iget-boolean v0, v0, Lcom/google/googlenav/ui/view/android/bJ;->C:Z

    if-nez v0, :cond_4f

    const/4 v0, 0x1

    :goto_41
    iput-boolean v0, v1, Lcom/google/googlenav/ui/view/android/bJ;->C:Z

    .line 354
    check-cast p1, Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bN;->d:Lcom/google/googlenav/ui/view/android/bJ;

    iget-boolean v0, v0, Lcom/google/googlenav/ui/view/android/bJ;->C:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 356
    :cond_4c
    return-void

    .line 347
    :cond_4d
    const/4 v0, 0x0

    goto :goto_29

    .line 353
    :cond_4f
    const/4 v0, 0x0

    goto :goto_41
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .parameter

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method
