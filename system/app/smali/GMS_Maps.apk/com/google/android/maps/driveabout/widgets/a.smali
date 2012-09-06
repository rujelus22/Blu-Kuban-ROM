.class public Lcom/google/android/maps/driveabout/widgets/a;
.super Landroid/support/v4/view/x;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/app/bL;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/maps/driveabout/app/K;

.field private c:[Lcom/google/android/maps/driveabout/app/R;

.field private d:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ad;Lcom/google/android/maps/driveabout/app/K;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Landroid/support/v4/view/x;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/maps/driveabout/widgets/a;->a:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lcom/google/android/maps/driveabout/widgets/a;->b:Lcom/google/android/maps/driveabout/app/K;

    .line 42
    new-array v0, v5, [Lcom/google/android/maps/driveabout/app/R;

    const/4 v1, 0x0

    invoke-static {p1, v1, v2}, Lcom/google/android/maps/driveabout/app/R;->a(Landroid/content/Context;Lm/b;Z)Lcom/google/android/maps/driveabout/app/R;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1}, Lcom/google/android/maps/driveabout/app/ca;->c(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p1, p2, v1, v3}, Lcom/google/android/maps/driveabout/app/R;->a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ad;ZZ)Lcom/google/android/maps/driveabout/app/R;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p1, v2}, Lcom/google/android/maps/driveabout/app/R;->a(Landroid/content/Context;Z)Lcom/google/android/maps/driveabout/app/R;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/google/android/maps/driveabout/widgets/a;->c:[Lcom/google/android/maps/driveabout/app/R;

    .line 49
    new-array v0, v5, [Ljava/lang/String;

    const v1, 0x7f0d00c8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0d00cd

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f0d00c6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/google/android/maps/driveabout/widgets/a;->d:[Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x3

    return v0
.end method

.method public a(I)Ljava/lang/CharSequence;
    .registers 3
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/maps/driveabout/widgets/a;->d:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 63
    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/widgets/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 64
    iget-object v1, p0, Lcom/google/android/maps/driveabout/widgets/a;->c:[Lcom/google/android/maps/driveabout/app/R;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    iget-object v1, p0, Lcom/google/android/maps/driveabout/widgets/a;->b:Lcom/google/android/maps/driveabout/app/K;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 69
    return-object v0
.end method

.method public a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 91
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 102
    return-void
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 81
    return-void
.end method

.method public a(Lm/b;)V
    .registers 6
    .parameter

    .prologue
    .line 112
    iget-object v1, p0, Lcom/google/android/maps/driveabout/widgets/a;->c:[Lcom/google/android/maps/driveabout/app/R;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    .line 113
    invoke-interface {v3, p1}, Lcom/google/android/maps/driveabout/app/bL;->a(Lm/b;)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 115
    :cond_e
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 106
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public b()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/view/ViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    return-void
.end method

.method public c_(I)V
    .registers 6
    .parameter

    .prologue
    .line 120
    iget-object v1, p0, Lcom/google/android/maps/driveabout/widgets/a;->c:[Lcom/google/android/maps/driveabout/app/R;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    .line 121
    invoke-interface {v3, p1}, Lcom/google/android/maps/driveabout/app/bL;->c_(I)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 123
    :cond_e
    return-void
.end method
