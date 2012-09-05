.class public Lcom/sec/android/app/kieswifi/view/PopupView;
.super Landroid/widget/LinearLayout;
.source "PopupView.java"


# instance fields
.field private mMessage:Landroid/widget/TextView;

.field private mParentView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 17
    .local v0, mInflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/kieswifi/view/PopupView;->mParentView:Landroid/widget/LinearLayout;

    .line 18
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/view/PopupView;->mParentView:Landroid/widget/LinearLayout;

    const v2, 0x7f050041

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/kieswifi/view/PopupView;->mMessage:Landroid/widget/TextView;

    .line 19
    iget-object v1, p0, Lcom/sec/android/app/kieswifi/view/PopupView;->mParentView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/kieswifi/view/PopupView;->addView(Landroid/view/View;)V

    .line 20
    return-void
.end method


# virtual methods
.method public setPopupMessage(Ljava/lang/String;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/view/PopupView;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    return-void
.end method
