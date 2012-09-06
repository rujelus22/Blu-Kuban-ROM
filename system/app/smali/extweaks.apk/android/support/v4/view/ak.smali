.class final Landroid/support/v4/view/ak;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# instance fields
.field final synthetic a:Landroid/support/v4/view/ViewPager;


# direct methods
.method private constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .registers 2
    .parameter

    .prologue
    .line 2057
    iput-object p1, p0, Landroid/support/v4/view/ak;->a:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/ViewPager;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2057
    invoke-direct {p0, p1}, Landroid/support/v4/view/ak;-><init>(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 2

    .prologue
    .line 2060
    iget-object v0, p0, Landroid/support/v4/view/ak;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->dataSetChanged()V

    .line 2061
    return-void
.end method

.method public final onInvalidated()V
    .registers 2

    .prologue
    .line 2064
    iget-object v0, p0, Landroid/support/v4/view/ak;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->dataSetChanged()V

    .line 2065
    return-void
.end method
