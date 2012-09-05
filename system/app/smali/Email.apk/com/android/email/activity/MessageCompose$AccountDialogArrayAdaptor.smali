.class Lcom/android/email/activity/MessageCompose$AccountDialogArrayAdaptor;
.super Landroid/widget/ArrayAdapter;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountDialogArrayAdaptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/email/activity/MessageCompose$AccountInfoItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageCompose;Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/activity/MessageCompose$AccountInfoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8851
    .local p4, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/MessageCompose$AccountInfoItem;>;"
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$AccountDialogArrayAdaptor;->this$0:Lcom/android/email/activity/MessageCompose;

    .line 8852
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 8854
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 17
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 8859
    move-object v8, p2

    .line 8860
    .local v8, v:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$AccountDialogArrayAdaptor;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MessageCompose$AccountInfoItem;

    .line 8863
    .local v4, item:Lcom/android/email/activity/MessageCompose$AccountInfoItem;
    if-nez v8, :cond_1a

    .line 8864
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$AccountDialogArrayAdaptor;->this$0:Lcom/android/email/activity/MessageCompose;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Lcom/android/email/activity/MessageCompose;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 8865
    .local v5, li:Landroid/view/LayoutInflater;
    const/high16 v9, 0x7f04

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 8869
    .end local v5           #li:Landroid/view/LayoutInflater;
    :cond_1a
    if-eqz v4, :cond_e2

    .line 8870
    const/high16 v9, 0x7f10

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 8872
    const v9, 0x7f100003

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 8873
    .local v7, titleView:Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getSenderName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8875
    const v9, 0x7f100005

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 8877
    .local v2, iconView:Landroid/widget/LinearLayout;
    #getter for: Lcom/android/email/activity/MessageCompose$AccountInfoItem;->mAccountId:J
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->access$11700(Lcom/android/email/activity/MessageCompose$AccountInfoItem;)J

    move-result-wide v9

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$AccountDialogArrayAdaptor;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCurrentAccountInfoItem:Lcom/android/email/activity/MessageCompose$AccountInfoItem;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$11800(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$AccountInfoItem;

    move-result-object v11

    #getter for: Lcom/android/email/activity/MessageCompose$AccountInfoItem;->mAccountId:J
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->access$11700(Lcom/android/email/activity/MessageCompose$AccountInfoItem;)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_cf

    .line 8878
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8887
    :goto_55
    if-eqz v7, :cond_8f

    .line 8888
    invoke-virtual {v4}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getTypeMsg()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d5

    .line 8889
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 8890
    .local v6, sb:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v4}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getSenderName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 8891
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    const v10, 0x7f0b002e

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v10, 0x0

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 8893
    new-instance v9, Landroid/text/style/StyleSpan;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v10, 0x0

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 8895
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8905
    .end local v6           #sb:Landroid/text/SpannableStringBuilder;
    :cond_8f
    :goto_8f
    const v9, 0x7f100004

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8906
    .local v0, addressView:Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8908
    invoke-virtual {v4}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getSenderName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_dd

    .line 8909
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8914
    :goto_b2
    const v9, 0x7f100001

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 8915
    .local v3, image:Landroid/view/View;
    invoke-virtual {v4}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getAccountColorResID()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 8917
    const v9, 0x7f100002

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 8918
    .local v1, icon:Landroid/widget/ImageView;
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8925
    .end local v0           #addressView:Landroid/widget/TextView;
    .end local v1           #icon:Landroid/widget/ImageView;
    .end local v2           #iconView:Landroid/widget/LinearLayout;
    .end local v3           #image:Landroid/view/View;
    .end local v7           #titleView:Landroid/widget/TextView;
    .end local v8           #v:Landroid/view/View;
    :goto_ce
    return-object v8

    .line 8880
    .restart local v2       #iconView:Landroid/widget/LinearLayout;
    .restart local v7       #titleView:Landroid/widget/TextView;
    .restart local v8       #v:Landroid/view/View;
    :cond_cf
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_55

    .line 8897
    :cond_d5
    invoke-virtual {v4}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getSenderName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8f

    .line 8911
    .restart local v0       #addressView:Landroid/widget/TextView;
    :cond_dd
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b2

    .line 8925
    .end local v0           #addressView:Landroid/widget/TextView;
    .end local v2           #iconView:Landroid/widget/LinearLayout;
    .end local v7           #titleView:Landroid/widget/TextView;
    :cond_e2
    invoke-super/range {p0 .. p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    goto :goto_ce
.end method
