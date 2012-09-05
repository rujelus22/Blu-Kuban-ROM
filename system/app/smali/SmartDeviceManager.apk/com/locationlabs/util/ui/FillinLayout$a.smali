.class public final Lcom/locationlabs/util/ui/FillinLayout$a;
.super Landroid/view/ViewGroup$LayoutParams;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/locationlabs/util/ui/FillinLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 29
    iput v0, p0, Lcom/locationlabs/util/ui/FillinLayout$a;->a:I

    .line 30
    iput v0, p0, Lcom/locationlabs/util/ui/FillinLayout$a;->b:I

    .line 31
    return-void
.end method

.method public static a(Landroid/view/ViewGroup$LayoutParams;)Lcom/locationlabs/util/ui/FillinLayout$a;
    .registers 2
    .parameter

    .prologue
    .line 34
    instance-of v0, p0, Lcom/locationlabs/util/ui/FillinLayout$a;

    if-eqz v0, :cond_8

    check-cast p0, Lcom/locationlabs/util/ui/FillinLayout$a;

    move-object v0, p0

    .line 36
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/locationlabs/util/ui/FillinLayout$a;

    invoke-direct {v0}, Lcom/locationlabs/util/ui/FillinLayout$a;-><init>()V

    goto :goto_7
.end method
