.class Lpz;
.super Ljava/lang/Object;
.source "QuickActionsMenu.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lpy;


# direct methods
.method constructor <init>(Lpy;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lpz;->a:Lpy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lpz;->a:Lpy;

    invoke-virtual {v0}, Lpy;->dismiss()V

    .line 93
    const/4 v0, 0x1

    return v0
.end method
