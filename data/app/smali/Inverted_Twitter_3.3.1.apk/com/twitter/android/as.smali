.class public final Lcom/twitter/android/as;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/support/v4/app/FragmentActivity;

.field private final b:Landroid/support/v4/app/FragmentManager;

.field private final c:[Lcom/twitter/android/ar;

.field private final d:I

.field private e:Lcom/twitter/android/ar;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;I[Lcom/twitter/android/ar;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/as;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/as;->b:Landroid/support/v4/app/FragmentManager;

    const v0, 0x7f070031

    iput v0, p0, Lcom/twitter/android/as;->d:I

    iput-object p3, p0, Lcom/twitter/android/as;->c:[Lcom/twitter/android/ar;

    return-void
.end method

.method private a(Lcom/twitter/android/ar;)V
    .registers 7

    iget-object v2, p0, Lcom/twitter/android/as;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    iget-object v0, p0, Lcom/twitter/android/as;->e:Lcom/twitter/android/ar;

    if-nez v0, :cond_3c

    const/4 v0, 0x0

    move-object v1, v0

    :goto_c
    iget-object v0, p0, Lcom/twitter/android/as;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1, v0}, Lcom/twitter/android/ar;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-virtual {v3, v1}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_1d
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :goto_26
    const/16 v1, 0x1003

    invoke-virtual {v3, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/twitter/android/ar;->d:Z

    iput-object p1, p0, Lcom/twitter/android/as;->e:Lcom/twitter/android/ar;

    check-cast v0, Lcom/twitter/android/ff;

    invoke-interface {v0}, Lcom/twitter/android/ff;->a()V

    return-void

    :cond_3c
    iget-object v0, p0, Lcom/twitter/android/as;->e:Lcom/twitter/android/ar;

    iget-object v1, p0, Lcom/twitter/android/as;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/twitter/android/ar;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    move-object v1, v0

    goto :goto_c

    :cond_46
    iget v1, p0, Lcom/twitter/android/as;->d:I

    iget-object v4, p1, Lcom/twitter/android/ar;->c:Ljava/lang/String;

    invoke-virtual {v3, v1, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_26
.end method


# virtual methods
.method public final a()Lcom/twitter/android/ar;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/as;->e:Lcom/twitter/android/ar;

    return-object v0
.end method

.method public final a(I)Z
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/as;->c:[Lcom/twitter/android/ar;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/twitter/android/as;->e:Lcom/twitter/android/ar;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    invoke-direct {p0, v0}, Lcom/twitter/android/as;->a(Lcom/twitter/android/ar;)V

    iput p1, p0, Lcom/twitter/android/as;->f:I

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twitter/android/as;->e:Lcom/twitter/android/ar;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/twitter/android/as;->e:Lcom/twitter/android/ar;

    iget-object v1, v1, Lcom/twitter/android/ar;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    iget-object v3, p0, Lcom/twitter/android/as;->c:[Lcom/twitter/android/ar;

    array-length v4, v3

    move v1, v0

    move v2, v0

    :goto_15
    if-ge v1, v4, :cond_f

    aget-object v5, v3, v1

    iget-object v6, v5, Lcom/twitter/android/ar;->c:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-direct {p0, v5}, Lcom/twitter/android/as;->a(Lcom/twitter/android/ar;)V

    iput v2, p0, Lcom/twitter/android/as;->f:I

    const/4 v0, 0x1

    goto :goto_f

    :cond_28
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_15
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/as;->e:Lcom/twitter/android/ar;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/twitter/android/as;->e:Lcom/twitter/android/ar;

    iget-object v0, v0, Lcom/twitter/android/ar;->c:Ljava/lang/String;

    goto :goto_5
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/twitter/android/as;->e:Lcom/twitter/android/ar;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/twitter/android/as;->e:Lcom/twitter/android/ar;

    iget-object v2, v2, Lcom/twitter/android/ar;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    iget-object v4, p0, Lcom/twitter/android/as;->c:[Lcom/twitter/android/ar;

    array-length v5, v4

    move v2, v0

    move v3, v0

    :goto_16
    if-ge v2, v5, :cond_10

    aget-object v6, v4, v2

    iget-object v7, v6, Lcom/twitter/android/ar;->c:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    iget-object v0, p0, Lcom/twitter/android/as;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget-object v4, p0, Lcom/twitter/android/as;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v6, v4}, Lcom/twitter/android/ar;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :goto_37
    const/16 v4, 0x1003

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    iput-boolean v1, v6, Lcom/twitter/android/ar;->d:Z

    iput-object v6, p0, Lcom/twitter/android/as;->e:Lcom/twitter/android/ar;

    iput v3, p0, Lcom/twitter/android/as;->f:I

    move v0, v1

    goto :goto_10

    :cond_4a
    iget v5, p0, Lcom/twitter/android/as;->d:I

    iget-object v7, v6, Lcom/twitter/android/ar;->c:Ljava/lang/String;

    invoke-virtual {v2, v5, v4, v7}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_37

    :cond_52
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_16
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lcom/twitter/android/as;->f:I

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twitter/android/as;->e:Lcom/twitter/android/ar;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/twitter/android/as;->e:Lcom/twitter/android/ar;

    iget-object v1, v1, Lcom/twitter/android/ar;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v2, p0, Lcom/twitter/android/as;->c:[Lcom/twitter/android/ar;

    array-length v3, v2

    move v1, v0

    :goto_14
    if-ge v0, v3, :cond_f

    aget-object v4, v2, v0

    iget-object v5, v4, Lcom/twitter/android/ar;->c:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    iput v1, p0, Lcom/twitter/android/as;->f:I

    iput-object v4, p0, Lcom/twitter/android/as;->e:Lcom/twitter/android/ar;

    goto :goto_f

    :cond_25
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method

.method public final d()[Lcom/twitter/android/ar;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/as;->c:[Lcom/twitter/android/ar;

    return-object v0
.end method
