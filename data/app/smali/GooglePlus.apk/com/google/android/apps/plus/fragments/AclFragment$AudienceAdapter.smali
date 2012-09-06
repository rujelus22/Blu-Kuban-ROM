.class Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;
.super Landroid/widget/BaseAdapter;
.source "AclFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/AclFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudienceAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/AudienceData;Landroid/widget/ListView;)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "audienceData"
    .parameter "listView"

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;->mItems:Ljava/util/ArrayList;

    .line 112
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;->mViews:Ljava/util/ArrayList;

    .line 124
    invoke-virtual {p3}, Lcom/google/android/apps/plus/api/AudienceData;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 125
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleCount()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 126
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v4, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircle(I)Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;-><init>(Landroid/content/Context;Lcom/google/wireless/tacotruck/proto/Data$Circle;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 129
    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserCount()I

    move-result v3

    if-ge v2, v3, :cond_45

    .line 130
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v4, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUser(I)Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 134
    :cond_45
    invoke-virtual {p3}, Lcom/google/android/apps/plus/api/AudienceData;->getHiddenCountText()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, hiddenCountText:Ljava/lang/String;
    if-eqz v1, :cond_5c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5c

    .line 136
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v4, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v1}, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_5c
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;->mContext:Landroid/content/Context;

    .line 141
    new-instance v3, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter$1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter$1;-><init>(Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;)V

    invoke-virtual {p4, v3}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;->mViews:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 173
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;

    iget v0, v0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;->mType:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 197
    move-object v4, p2

    .line 198
    .local v4, view:Landroid/view/View;
    if-nez v4, :cond_4d

    .line 199
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 201
    .local v3, layoutInflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030001

    invoke-virtual {v3, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 202
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .end local v3           #layoutInflater:Landroid/view/LayoutInflater;
    :cond_1c
    :goto_1c
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;

    .line 210
    .local v2, item:Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 211
    const v5, 0x7f090049

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v2, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;->mContent:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const v5, 0x7f090047

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 213
    .local v1, circleView:Landroid/widget/ImageView;
    const v5, 0x7f090048

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/AvatarView;

    .line 215
    .local v0, avatarView:Lcom/google/android/apps/plus/views/AvatarView;
    iget v5, v2, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;->mType:I

    packed-switch v5, :pswitch_data_8c

    .line 238
    :goto_4c
    return-object v4

    .line 204
    .end local v0           #avatarView:Lcom/google/android/apps/plus/views/AvatarView;
    .end local v1           #circleView:Landroid/widget/ImageView;
    .end local v2           #item:Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;
    :cond_4d
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 205
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 217
    .restart local v0       #avatarView:Lcom/google/android/apps/plus/views/AvatarView;
    .restart local v1       #circleView:Landroid/widget/ImageView;
    .restart local v2       #item:Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;
    :pswitch_5b
    const v5, 0x7f0201b6

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 218
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    invoke-virtual {v0, v8}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    goto :goto_4c

    .line 224
    :pswitch_68
    iget-object v5, v2, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;->mPerson:Lcom/google/wireless/tacotruck/proto/Data$Person;

    if-eqz v5, :cond_7d

    iget-object v5, v2, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;->mPerson:Lcom/google/wireless/tacotruck/proto/Data$Person;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasFocusObfuscatedId()Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 225
    iget-object v5, v2, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;->mPerson:Lcom/google/wireless/tacotruck/proto/Data$Person;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 227
    :cond_7d
    invoke-virtual {v0, v7}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 228
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4c

    .line 233
    :pswitch_84
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 234
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4c

    .line 215
    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_68
        :pswitch_84
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x3

    return v0
.end method
