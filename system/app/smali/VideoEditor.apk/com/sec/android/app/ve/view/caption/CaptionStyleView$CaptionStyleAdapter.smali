.class Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyleAdapter;
.super Landroid/widget/BaseAdapter;
.source "CaptionStyleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/caption/CaptionStyleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CaptionStyleAdapter"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sec/android/app/ve/view/caption/CaptionStyleView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/ve/view/caption/CaptionStyleView;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyleAdapter;->this$0:Lcom/sec/android/app/ve/view/caption/CaptionStyleView;

    .line 166
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 167
    iput-object p2, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyleAdapter;->mContext:Landroid/content/Context;

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyleAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyleAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyleAdapter;->this$0:Lcom/sec/android/app/ve/view/caption/CaptionStyleView;

    #getter for: Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mCaptionStylesList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->access$0(Lcom/sec/android/app/ve/view/caption/CaptionStyleView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 210
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "arg0"

    .prologue
    .line 216
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v6, 0x7f02003d

    const/16 v5, 0x85

    const/16 v4, 0x42

    .line 172
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyleAdapter;->this$0:Lcom/sec/android/app/ve/view/caption/CaptionStyleView;

    #getter for: Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mCaptionStylesList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->access$0(Lcom/sec/android/app/ve/view/caption/CaptionStyleView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;

    .line 173
    .local v0, cp:Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;
    const/4 v2, 0x0

    .line 174
    .local v2, mStyleitemLayout:Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .line 175
    .local v1, mStyleitem:Landroid/widget/TextView;
    if-nez p2, :cond_64

    .line 176
    new-instance v2, Landroid/widget/LinearLayout;

    .end local v2           #mStyleitemLayout:Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyleAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 178
    .restart local v2       #mStyleitemLayout:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 181
    new-instance v1, Landroid/widget/TextView;

    .end local v1           #mStyleitem:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyleAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 182
    .restart local v1       #mStyleitem:Landroid/widget/TextView;
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyleAdapter;->this$0:Lcom/sec/android/app/ve/view/caption/CaptionStyleView;

    #getter for: Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->TextStyles:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->access$1(Lcom/sec/android/app/ve/view/caption/CaptionStyleView;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;->getTf()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;->getmTextStyle()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 185
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 186
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyleAdapter;->this$0:Lcom/sec/android/app/ve/view/caption/CaptionStyleView;

    #getter for: Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mCaptionStylesList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->access$0(Lcom/sec/android/app/ve/view/caption/CaptionStyleView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 197
    :goto_63
    return-object v2

    :cond_64
    move-object v2, p2

    .line 191
    check-cast v2, Landroid/widget/LinearLayout;

    .line 192
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 193
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;->getTf()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyle;->getmTextStyle()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 194
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionStyleView$CaptionStyleAdapter;->this$0:Lcom/sec/android/app/ve/view/caption/CaptionStyleView;

    #getter for: Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->mCaptionStylesList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->access$0(Lcom/sec/android/app/ve/view/caption/CaptionStyleView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_63
.end method
