.class final Landroid/support/v4/view/j;
.super Ljava/lang/Object;
.source "MenuCompat.java"

# interfaces
.implements Landroid/support/v4/view/k;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;I)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 51
    const/4 v0, 0x1

    return v0
.end method
