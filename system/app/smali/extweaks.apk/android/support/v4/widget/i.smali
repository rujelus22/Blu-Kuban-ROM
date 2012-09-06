.class final Landroid/support/v4/widget/i;
.super Ljava/lang/Object;
.source "SearchViewCompat.java"

# interfaces
.implements Landroid/support/v4/widget/n;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;

.field final synthetic b:Landroid/support/v4/widget/h;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/h;Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Landroid/support/v4/widget/i;->b:Landroid/support/v4/widget/h;

    iput-object p2, p0, Landroid/support/v4/widget/i;->a:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Landroid/support/v4/widget/i;->a:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Landroid/support/v4/widget/i;->a:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
