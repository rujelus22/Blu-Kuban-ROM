.class public Lcom/google/googlenav/ui/android/AndroidBubbleView;
.super Landroid/widget/AbsoluteLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 25
    const/4 v1, 0x1

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/android/AndroidBubbleView;->onLayout(ZIIII)V

    .line 26
    return-void
.end method
