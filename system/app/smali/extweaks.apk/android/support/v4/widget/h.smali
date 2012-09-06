.class final Landroid/support/v4/widget/h;
.super Landroid/support/v4/widget/k;
.source "SearchViewCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/support/v4/widget/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .registers 3
    .parameter

    .prologue
    .line 57
    new-instance v0, Landroid/widget/SearchView;

    invoke-direct {v0, p1}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final a(Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 62
    new-instance v0, Landroid/support/v4/widget/i;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/widget/i;-><init>(Landroid/support/v4/widget/h;Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)V

    new-instance v1, Landroid/support/v4/widget/m;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/m;-><init>(Landroid/support/v4/widget/n;)V

    return-object v1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 77
    check-cast p1, Landroid/widget/SearchView;

    check-cast p2, Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {p1, p2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 78
    return-void
.end method
