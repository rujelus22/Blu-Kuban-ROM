.class final Landroid/support/v4/view/Q;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ldbxyzptlk/b/c;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 853
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/Q;->b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/view/ViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 853
    invoke-virtual {p0, p1}, Landroid/support/v4/view/Q;->b(I)[Landroid/support/v4/view/ViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/view/ViewPager$SavedState;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 856
    new-instance v0, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public final b(I)[Landroid/support/v4/view/ViewPager$SavedState;
    .registers 3
    .parameter

    .prologue
    .line 860
    new-array v0, p1, [Landroid/support/v4/view/ViewPager$SavedState;

    return-object v0
.end method
