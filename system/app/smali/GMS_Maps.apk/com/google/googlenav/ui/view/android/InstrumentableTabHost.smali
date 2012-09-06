.class public Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;
.super Landroid/widget/TabHost;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method public dispatchWindowFocusChanged(Z)V
    .registers 4
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/widget/TabHost;->dispatchWindowFocusChanged(Z)V

    .line 41
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;->a:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 42
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;->hasWindowFocus()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 44
    :cond_10
    return-void
.end method

.method public setCurrentTabContentView(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;->a:Landroid/view/View;

    .line 48
    return-void
.end method
