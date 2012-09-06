.class Landroid/support/v4/view/MenuItemCompat$BaseMenuVersionImpl;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"

# interfaces
.implements Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MenuItemCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseMenuVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .registers 3
    .parameter "item"
    .parameter "view"

    .prologue
    .line 80
    return-object p1
.end method

.method public setShowAsAction(Landroid/view/MenuItem;I)Z
    .registers 4
    .parameter "item"
    .parameter "actionEnum"

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method
