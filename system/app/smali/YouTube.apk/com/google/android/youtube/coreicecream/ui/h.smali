.class public final Lcom/google/android/youtube/coreicecream/ui/h;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field private final a:I

.field private final b:Landroid/view/View;

.field private final c:Lcom/google/android/youtube/coreicecream/ui/i;

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/youtube/coreicecream/ui/i;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 33
    const/16 v0, 0x9c4

    iput v0, p0, Lcom/google/android/youtube/coreicecream/ui/h;->a:I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/h;->e:Z

    .line 44
    const-string v0, "rootView cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/h;->b:Landroid/view/View;

    .line 45
    iput-object p2, p0, Lcom/google/android/youtube/coreicecream/ui/h;->c:Lcom/google/android/youtube/coreicecream/ui/i;

    .line 46
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/coreicecream/ui/h;->d:I

    .line 48
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/h;->e:Z

    if-eqz v0, :cond_b

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/h;->b:Landroid/view/View;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 101
    :goto_a
    return-void

    .line 99
    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/h;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_a
.end method

.method private a(I)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_16

    move v3, v1

    .line 91
    :goto_7
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_18

    move v0, v1

    .line 92
    :goto_c
    iget-boolean v4, p0, Lcom/google/android/youtube/coreicecream/ui/h;->e:Z

    if-ne v3, v4, :cond_14

    iget-boolean v3, p0, Lcom/google/android/youtube/coreicecream/ui/h;->e:Z

    if-eq v0, v3, :cond_15

    :cond_14
    move v2, v1

    :cond_15
    return v2

    :cond_16
    move v3, v2

    .line 90
    goto :goto_7

    :cond_18
    move v0, v2

    .line 91
    goto :goto_c
.end method


# virtual methods
.method public final a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/google/android/youtube/coreicecream/ui/h;->e:Z

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/h;->removeMessages(I)V

    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/h;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/h;->a(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 58
    invoke-direct {p0}, Lcom/google/android/youtube/coreicecream/ui/h;->a()V

    .line 60
    :cond_15
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter

    .prologue
    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_a

    .line 87
    :goto_5
    return-void

    .line 84
    :pswitch_6
    invoke-direct {p0}, Lcom/google/android/youtube/coreicecream/ui/h;->a()V

    goto :goto_5

    .line 82
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public final onSystemUiVisibilityChange(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/h;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eq v0, p1, :cond_e

    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/h;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 68
    :cond_e
    iget v0, p0, Lcom/google/android/youtube/coreicecream/ui/h;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/h;->c:Lcom/google/android/youtube/coreicecream/ui/i;

    if-eqz v0, :cond_21

    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/h;->c:Lcom/google/android/youtube/coreicecream/ui/i;

    invoke-interface {v0}, Lcom/google/android/youtube/coreicecream/ui/i;->a()V

    .line 72
    :cond_21
    iput p1, p0, Lcom/google/android/youtube/coreicecream/ui/h;->d:I

    .line 73
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/coreicecream/ui/h;->removeMessages(I)V

    .line 75
    invoke-direct {p0, p1}, Lcom/google/android/youtube/coreicecream/ui/h;->a(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 76
    const-wide/16 v0, 0x9c4

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/youtube/coreicecream/ui/h;->sendEmptyMessageDelayed(IJ)Z

    .line 78
    :cond_31
    return-void
.end method
