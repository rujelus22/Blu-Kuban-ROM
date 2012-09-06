.class public final Lcom/google/android/youtube/app/honeycomb/phone/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Lcom/google/android/youtube/app/honeycomb/ui/l;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/google/android/youtube/app/honeycomb/phone/av;

.field private d:Landroid/view/MenuItem;

.field private e:Landroid/view/MenuItem;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->f:Z

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->g:Z

    .line 36
    iput-boolean v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->h:Z

    .line 40
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->a:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Lcom/android/athome/picker/media/k;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->b:Ljava/lang/Object;

    .line 42
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/av;

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/av;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/au;B)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->c:Lcom/google/android/youtube/app/honeycomb/phone/av;

    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->b:Ljava/lang/Object;

    const v1, 0x800001

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->c:Lcom/google/android/youtube/app/honeycomb/phone/av;

    invoke-static {v0, v1, v2}, Lcom/android/athome/picker/media/k;->a(Ljava/lang/Object;ILcom/android/athome/picker/media/b;)V

    .line 45
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/au;->e()V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/au;)V
    .registers 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/au;->e()V

    return-void
.end method

.method private d()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->d:Landroid/view/MenuItem;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->e:Landroid/view/MenuItem;

    if-nez v0, :cond_b

    .line 93
    :cond_a
    :goto_a
    return-void

    .line 90
    :cond_b
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->f:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->g:Z

    if-nez v0, :cond_30

    :cond_13
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->h:Z

    if-nez v0, :cond_30

    move v0, v1

    .line 91
    :goto_18
    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->d:Landroid/view/MenuItem;

    if-eqz v0, :cond_32

    iget v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->i:I

    if-le v3, v1, :cond_32

    move v3, v1

    :goto_21
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 92
    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->e:Landroid/view/MenuItem;

    if-nez v0, :cond_34

    iget v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->i:I

    if-le v0, v1, :cond_34

    :goto_2c
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_a

    :cond_30
    move v0, v2

    .line 90
    goto :goto_18

    :cond_32
    move v3, v2

    .line 91
    goto :goto_21

    :cond_34
    move v1, v2

    .line 92
    goto :goto_2c
.end method

.method private e()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 96
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->b:Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/athome/picker/media/k;->a(Ljava/lang/Object;)I

    move-result v2

    move v1, v0

    .line 98
    :goto_8
    if-ge v1, v2, :cond_1f

    .line 99
    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->b:Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/android/athome/picker/media/k;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 100
    invoke-static {v3}, Lcom/android/athome/picker/media/q;->d(Ljava/lang/Object;)I

    move-result v3

    .line 101
    const v4, 0x800001

    and-int/2addr v3, v4

    if-eqz v3, :cond_1c

    .line 102
    add-int/lit8 v0, v0, 0x1

    .line 98
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 105
    :cond_1f
    iget v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->i:I

    if-eq v1, v0, :cond_28

    .line 106
    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->i:I

    .line 107
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/au;->d()V

    .line 109
    :cond_28
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/au;->d()V

    .line 59
    return-void
.end method

.method public final a(Landroid/view/Menu;)V
    .registers 4
    .parameter

    .prologue
    .line 49
    const v0, 0x7f080143

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->d:Landroid/view/MenuItem;

    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->d:Landroid/view/MenuItem;

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->d:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 52
    const v1, 0x800001

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/e;->a(Landroid/view/View;I)V

    .line 53
    const v0, 0x7f080144

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->e:Landroid/view/MenuItem;

    .line 54
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->e:Landroid/view/MenuItem;

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 55
    return-void
.end method

.method public final a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->h:Z

    .line 78
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/au;->d()V

    .line 79
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->f:Z

    .line 68
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/au;->d()V

    .line 69
    return-void
.end method

.method public final b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->g:Z

    .line 83
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/au;->d()V

    .line 84
    return-void
.end method

.method public final d_()V
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->f:Z

    .line 73
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/au;->d()V

    .line 74
    return-void
.end method

.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/au;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/youtube/a/a;->a(Ljava/lang/Object;Landroid/content/Context;)V

    .line 63
    const/4 v0, 0x1

    return v0
.end method
