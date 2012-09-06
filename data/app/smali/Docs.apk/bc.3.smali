.class public Lbc;
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
    iput-object p1, p0, Lbc;->a:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/support/v4/view/ViewPager;LaV;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2057
    invoke-direct {p0, p1}, Lbc;-><init>(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 2060
    iget-object v0, p0, Lbc;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()V

    .line 2061
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 2064
    iget-object v0, p0, Lbc;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()V

    .line 2065
    return-void
.end method
