.class LNv;
.super Ljava/lang/Object;
.source "PunchSlideAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:LNu;

.field final synthetic a:Landroid/view/View;


# direct methods
.method constructor <init>(LNu;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, LNv;->a:LNu;

    iput-object p2, p0, LNv;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, LNv;->a:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 115
    const/4 v0, 0x1

    return v0
.end method
