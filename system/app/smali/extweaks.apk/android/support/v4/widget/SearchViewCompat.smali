.class public Landroid/support/v4/widget/SearchViewCompat;
.super Ljava/lang/Object;
.source "SearchViewCompat.java"


# static fields
.field private static final IMPL:Landroid/support/v4/widget/j;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    .line 85
    new-instance v0, Landroid/support/v4/widget/h;

    invoke-direct {v0}, Landroid/support/v4/widget/h;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/j;

    .line 89
    :goto_d
    return-void

    .line 87
    :cond_e
    new-instance v0, Landroid/support/v4/widget/k;

    invoke-direct {v0}, Landroid/support/v4/widget/k;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/j;

    goto :goto_d
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method static synthetic access$000()Landroid/support/v4/widget/j;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/j;

    return-object v0
.end method

.method public static newSearchView(Landroid/content/Context;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 103
    sget-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/j;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/j;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static setOnQueryTextListener(Landroid/view/View;Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 114
    sget-object v0, Landroid/support/v4/widget/SearchViewCompat;->IMPL:Landroid/support/v4/widget/j;

    iget-object v1, p1, Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;->mListener:Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Landroid/support/v4/widget/j;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    return-void
.end method
