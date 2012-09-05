.class public Lcom/coremobility/app/customui/CM_HorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;


# instance fields
.field a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/app/customui/CM_HorizontalScrollView;->a:Z

    return-void
.end method


# virtual methods
.method public arrowScroll(I)Z
    .registers 3

    iget-boolean v0, p0, Lcom/coremobility/app/customui/CM_HorizontalScrollView;->a:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    move-result v0

    goto :goto_5
.end method
