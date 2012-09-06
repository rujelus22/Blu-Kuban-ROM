.class Lpw;
.super Ljava/lang/Object;
.source "QuickActionsDialogFactory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lpu;


# direct methods
.method constructor <init>(Lpu;)V
    .registers 2
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lpw;->a:Lpu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lpw;->a:Lpu;

    invoke-static {v0}, Lpu;->a(Lpu;)Lpx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpx;->a(Landroid/view/View;)V

    .line 84
    return-void
.end method
