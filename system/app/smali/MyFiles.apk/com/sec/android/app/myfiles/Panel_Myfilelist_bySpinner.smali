.class public Lcom/sec/android/app/myfiles/Panel_Myfilelist_bySpinner;
.super Landroid/widget/LinearLayout;
.source "Panel_Myfilelist_bySpinner.java"


# instance fields
.field ctx:Landroid/content/Context;

.field mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/Panel_Myfilelist_bySpinner;->mTextView:Landroid/widget/TextView;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/myfiles/Panel_Myfilelist_bySpinner;->mTextView:Landroid/widget/TextView;

    .line 33
    iput-object p1, p0, Lcom/sec/android/app/myfiles/Panel_Myfilelist_bySpinner;->ctx:Landroid/content/Context;

    .line 35
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 38
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030026

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/Panel_Myfilelist_bySpinner;->reloadContent()V

    .line 58
    return-void
.end method

.method private reloadContent()V
    .registers 1

    .prologue
    .line 102
    return-void
.end method
