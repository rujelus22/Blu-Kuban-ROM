.class public Lcom/vlingo/client/localsearch/ReviewHeaderView;
.super Lcom/vlingo/client/superdialer/items/SDItemHeaderView;
.source "ReviewHeaderView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/vlingo/client/localsearch/ReviewHeaderView;
    .registers 7
    .parameter "context"
    .parameter "header"
    .parameter "subheader"
    .parameter "accessory"

    .prologue
    .line 18
    const v1, 0x7f030031

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/localsearch/ReviewHeaderView;

    .line 19
    .local v0, v:Lcom/vlingo/client/localsearch/ReviewHeaderView;
    invoke-virtual {v0, p3}, Lcom/vlingo/client/localsearch/ReviewHeaderView;->setAccessoryType(I)V

    .line 20
    invoke-virtual {v0, p1, p2}, Lcom/vlingo/client/localsearch/ReviewHeaderView;->setHeaders(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 21
    return-object v0
.end method
