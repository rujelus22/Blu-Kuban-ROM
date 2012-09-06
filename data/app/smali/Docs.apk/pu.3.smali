.class public final Lpu;
.super Ljava/lang/Object;
.source "QuickActionsDialogFactory.java"

# interfaces
.implements Lof;


# instance fields
.field private final a:Landroid/view/View;

.field private final a:Landroid/view/animation/Animation;

.field private final a:Lpx;

.field private final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lpx;Landroid/view/View;Landroid/view/View;Landroid/view/animation/Animation;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "null helper"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpx;

    iput-object v0, p0, Lpu;->a:Lpx;

    .line 61
    iput-object p2, p0, Lpu;->a:Landroid/view/View;

    .line 62
    iput-object p3, p0, Lpu;->b:Landroid/view/View;

    .line 63
    iput-object p4, p0, Lpu;->a:Landroid/view/animation/Animation;

    .line 64
    return-void
.end method

.method public constructor <init>(Lpx;Landroid/view/View;Landroid/view/animation/Animation;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lpu;-><init>(Lpx;Landroid/view/View;Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 68
    return-void
.end method

.method static synthetic a(Lpu;)Lpx;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lpu;->a:Lpx;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 72
    new-instance v0, Lpv;

    invoke-direct {v0, p0}, Lpv;-><init>(Lpu;)V

    .line 79
    iget-object v1, p0, Lpu;->a:Landroid/view/View;

    iget-object v2, p0, Lpu;->a:Landroid/view/animation/Animation;

    new-instance v3, Lpw;

    invoke-direct {v3, p0}, Lpw;-><init>(Lpu;)V

    invoke-static {v1, v2, v3, v0}, Lpy;->a(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/View$OnClickListener;LpA;)Lpy;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lpu;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lpy;->a(Landroid/view/View;)V

    .line 87
    iget-object v1, p0, Lpu;->a:Lpx;

    invoke-virtual {v1, v0}, Lpx;->b(Lpy;)V

    .line 88
    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    check-cast p2, Lpy;

    .line 94
    iget-object v0, p0, Lpu;->a:Lpx;

    invoke-virtual {v0}, Lpx;->a()Z

    move-result v0

    if-nez v0, :cond_d

    .line 95
    invoke-virtual {p2}, Lpy;->a()V

    .line 97
    :cond_d
    iget-object v0, p0, Lpu;->a:Lpx;

    invoke-virtual {v0, p2}, Lpx;->a(Lpy;)V

    .line 98
    return-void
.end method
