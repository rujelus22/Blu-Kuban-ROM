.class public Lcom/android/phone/InCallButtonsViewOneHand;
.super Landroid/widget/RelativeLayout;
.source "InCallButtonsViewOneHand.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallButtonsViewOneHand;->mContext:Landroid/content/Context;

    .line 33
    iput-object p1, p0, Lcom/android/phone/InCallButtonsViewOneHand;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 53
    const-string v0, "InCallButtonsViewOneHand"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method


# virtual methods
.method initialize()V
    .registers 4

    .prologue
    .line 38
    iget-object v1, p0, Lcom/android/phone/InCallButtonsViewOneHand;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 39
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04002a

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 43
    const-string v1, "Inflate In call buttons view (onehand)"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallButtonsViewOneHand;->log(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 49
    return-void
.end method
