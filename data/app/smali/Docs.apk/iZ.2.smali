.class public LiZ;
.super Ljava/lang/Object;
.source "ListViewPositionImpl.java"

# interfaces
.implements LiY;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, LiZ;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 19
    iget v0, p0, LiZ;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 24
    iput p1, p0, LiZ;->a:I

    .line 25
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 29
    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, LafQ;->a(Z)V

    .line 30
    const-string v0, "keyListViewPosition"

    invoke-virtual {p0}, LiZ;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    return-void

    .line 29
    :cond_10
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 35
    if-eqz p1, :cond_11

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, LafQ;->a(Z)V

    .line 36
    const-string v0, "keyListViewPosition"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, LiZ;->a(I)V

    .line 37
    return-void

    .line 35
    :cond_11
    const/4 v0, 0x0

    goto :goto_3
.end method
