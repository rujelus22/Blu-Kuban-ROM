.class public Lcom/estrongs/android/pop/popupwindowwitharrow/ExtendableLinearLayout;
.super Landroid/widget/LinearLayout;


# instance fields
.field a:I

.field b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/ExtendableLinearLayout;->b:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/ExtendableLinearLayout;->a:I

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 12

    if-eqz p1, :cond_10

    iget-boolean v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/ExtendableLinearLayout;->b:Z

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    :goto_7
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    :cond_10
    const/4 v1, 0x0

    goto :goto_7
.end method
