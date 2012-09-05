.class public Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;
.super Landroid/widget/LinearLayout;
.source "ListBouncingFooterLayout.java"


# static fields
.field private static final mParam:Landroid/widget/LinearLayout$LayoutParams;


# instance fields
.field mContext:Landroid/content/Context;

.field mEmpty:Landroid/widget/LinearLayout;

.field mEmptyParam:Landroid/widget/LinearLayout$LayoutParams;

.field mFooter:Landroid/widget/LinearLayout;

.field mHeaderDivider:Landroid/widget/LinearLayout;

.field mReousrce:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, -0x1

    .line 20
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->mParam:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .registers 9
    .parameter "context"
    .parameter "inflater"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object v3, p0, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->mHeaderDivider:Landroid/widget/LinearLayout;

    .line 15
    iput-object v3, p0, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->mFooter:Landroid/widget/LinearLayout;

    .line 16
    iput-object v3, p0, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->mEmpty:Landroid/widget/LinearLayout;

    .line 17
    iput-object v3, p0, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->mContext:Landroid/content/Context;

    .line 18
    iput-object v3, p0, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->mReousrce:Landroid/content/res/Resources;

    .line 22
    iput-object v3, p0, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->mEmptyParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 28
    iput-object p1, p0, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->mContext:Landroid/content/Context;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->mReousrce:Landroid/content/res/Resources;

    .line 31
    const v2, 0x7f030042

    invoke-virtual {p2, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 33
    .local v0, footer:Landroid/view/View;
    sget-object v2, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->mParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    const v2, 0x7f0b0129

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->mHeaderDivider:Landroid/widget/LinearLayout;

    .line 35
    const v2, 0x7f0b00d9

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->mFooter:Landroid/widget/LinearLayout;

    .line 36
    const v2, 0x7f0b0126

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->mEmpty:Landroid/widget/LinearLayout;

    .line 37
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->mEmptyParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 39
    const v2, 0x7f0b012a

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 40
    .local v1, loading:Landroid/widget/TextView;
    const-string v2, "%s..."

    new-array v3, v4, [Ljava/lang/Object;

    const v4, 0x7f08008c

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-void
.end method


# virtual methods
.method public hideFooter()V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->mFooter:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 59
    return-void
.end method

.method public hideHeaderDivider()V
    .registers 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->mHeaderDivider:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 51
    return-void
.end method

.method public showFooter()V
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->mFooter:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 64
    return-void
.end method

.method public showHeaderDivider()V
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->mHeaderDivider:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 55
    return-void
.end method
