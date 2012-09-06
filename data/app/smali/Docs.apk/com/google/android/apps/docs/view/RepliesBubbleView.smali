.class public Lcom/google/android/apps/docs/view/RepliesBubbleView;
.super Landroid/widget/RelativeLayout;
.source "RepliesBubbleView.java"


# instance fields
.field private final a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    sget v0, LcU;->replies_bubble:I

    invoke-static {p1, v0, p0}, Lcom/google/android/apps/docs/view/RepliesBubbleView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    sget v0, LcS;->replies:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/RepliesBubbleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/RepliesBubbleView;->a:Landroid/widget/TextView;

    .line 35
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/RepliesBubbleView;->a()V

    .line 36
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RepliesBubbleView;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method

.method public setCount(I)V
    .registers 4
    .parameter

    .prologue
    const/16 v1, 0x63

    .line 44
    if-le p1, v1, :cond_e

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RepliesBubbleView;->a:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :goto_d
    return-void

    .line 49
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/docs/view/RepliesBubbleView;->a:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d
.end method
