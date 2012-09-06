.class public Lcom/google/googlenav/mylocationnotifier/HeaderView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/google/googlenav/mylocationnotifier/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/mylocationnotifier/HeaderView;->a:Z

    .line 31
    return-void
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/googlenav/mylocationnotifier/HeaderView;->a:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/HeaderView;->b:Lcom/google/googlenav/mylocationnotifier/k;

    if-eqz v0, :cond_d

    .line 36
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/HeaderView;->b:Lcom/google/googlenav/mylocationnotifier/k;

    invoke-virtual {v0}, Lcom/google/googlenav/mylocationnotifier/k;->c()V

    .line 38
    :cond_d
    return-void
.end method

.method public setMyLocationNotifierManager(Lcom/google/googlenav/mylocationnotifier/k;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/googlenav/mylocationnotifier/HeaderView;->b:Lcom/google/googlenav/mylocationnotifier/k;

    .line 46
    return-void
.end method

.method public setShouldDeactivateOnDetach(Z)V
    .registers 2
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/google/googlenav/mylocationnotifier/HeaderView;->a:Z

    .line 42
    return-void
.end method
