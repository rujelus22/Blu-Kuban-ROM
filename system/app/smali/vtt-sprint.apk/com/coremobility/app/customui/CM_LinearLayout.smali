.class public Lcom/coremobility/app/customui/CM_LinearLayout;
.super Landroid/widget/LinearLayout;


# instance fields
.field a:Lcom/coremobility/app/customui/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/coremobility/app/customui/p;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/customui/CM_LinearLayout;->a:Lcom/coremobility/app/customui/p;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/coremobility/app/customui/CM_LinearLayout;->a:Lcom/coremobility/app/customui/p;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/coremobility/app/customui/CM_LinearLayout;->a:Lcom/coremobility/app/customui/p;

    invoke-interface {v0}, Lcom/coremobility/app/customui/p;->a()V

    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method
