.class Lpv;
.super Ljava/lang/Object;
.source "QuickActionsDialogFactory.java"

# interfaces
.implements LpA;


# instance fields
.field final synthetic a:Lpu;


# direct methods
.method constructor <init>(Lpu;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lpv;->a:Lpu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lpv;->a:Lpu;

    invoke-static {v0}, Lpu;->a(Lpu;)Lpx;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lpx;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 76
    return-void
.end method
