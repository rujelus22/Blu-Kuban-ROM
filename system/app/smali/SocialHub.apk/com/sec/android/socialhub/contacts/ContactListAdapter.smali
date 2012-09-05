.class public Lcom/sec/android/socialhub/contacts/ContactListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "ContactListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/contacts/ContactListAdapter$IContactActivity;,
        Lcom/sec/android/socialhub/contacts/ContactListAdapter$IIndexChangedListener;,
        Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;
    }
.end annotation


# instance fields
.field private bCheckContact:Z

.field private bIsSearchMode:Z

.field private mActivity:Lcom/sec/android/socialhub/contacts/ContactListAdapter$IContactActivity;

.field private mAllContactID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/socialhub/contacts/ContactModel;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedListMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedWrapper:Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;

.field private mCondition:Ljava/lang/String;

.field private mContactMode:I

.field private mImageManager:Lcom/sec/android/socialhub/image/ImageCacheManager;

.field private mIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexListener:Lcom/sec/android/socialhub/contacts/ContactListAdapter$IIndexChangedListener;

.field private mPossibleCount:I

.field private mSection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSortOption:Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 13
    .parameter "context"
    .parameter "c"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 60
    const v2, 0x7f03002c

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 30
    iput-object v6, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mImageManager:Lcom/sec/android/socialhub/image/ImageCacheManager;

    .line 32
    iput-object v6, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mIndexList:Ljava/util/ArrayList;

    .line 33
    iput-object v6, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mSection:Ljava/util/ArrayList;

    .line 35
    iput-object v6, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCheckedListMap:Ljava/util/ArrayList;

    .line 36
    iput-object v6, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCheckList:Ljava/util/HashMap;

    .line 38
    iput-object v6, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mAllContactID:Ljava/util/ArrayList;

    .line 40
    iput-object v6, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mIndexListener:Lcom/sec/android/socialhub/contacts/ContactListAdapter$IIndexChangedListener;

    .line 42
    iput v7, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mPossibleCount:I

    .line 44
    iput-boolean v7, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->bIsSearchMode:Z

    .line 45
    iput-object v6, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCondition:Ljava/lang/String;

    .line 47
    iput-object v6, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCheckedWrapper:Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;

    .line 49
    iput-boolean v7, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->bCheckContact:Z

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mContactMode:I

    .line 53
    iput-object v6, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mActivity:Lcom/sec/android/socialhub/contacts/ContactListAdapter$IContactActivity;

    .line 55
    iput-object v6, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mSortOption:Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mIndexList:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mSection:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCheckList:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCheckedListMap:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mAllContactID:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;

    iget-object v1, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCheckList:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCheckedListMap:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;-><init>(Ljava/util/HashMap;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCheckedWrapper:Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;

    .line 70
    instance-of v0, p1, Lcom/sec/android/socialhub/contacts/ContactListAdapter$IContactActivity;

    if-eqz v0, :cond_63

    move-object v0, p1

    .line 72
    check-cast v0, Lcom/sec/android/socialhub/contacts/ContactListAdapter$IContactActivity;

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mActivity:Lcom/sec/android/socialhub/contacts/ContactListAdapter$IContactActivity;

    .line 75
    :cond_63
    invoke-static {p1}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/image/ImageCacheManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mImageManager:Lcom/sec/android/socialhub/image/ImageCacheManager;

    .line 77
    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getContactSort()Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mSortOption:Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;

    .line 78
    return-void
.end method

.method private modeChange(Lcom/sec/android/socialhub/contacts/ContactWrapper;)V
    .registers 4
    .parameter "wrapper"

    .prologue
    .line 230
    iget v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mContactMode:I

    packed-switch v0, :pswitch_data_26

    .line 253
    :cond_5
    :goto_5
    return-void

    .line 233
    :pswitch_6
    invoke-virtual {p1}, Lcom/sec/android/socialhub/contacts/ContactWrapper;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/sec/android/socialhub/contacts/ContactListAdapter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/contacts/ContactListAdapter$1;-><init>(Lcom/sec/android/socialhub/contacts/ContactListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 245
    :pswitch_13
    invoke-virtual {p1}, Lcom/sec/android/socialhub/contacts/ContactWrapper;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCheckedWrapper:Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;

    if-eqz v0, :cond_5

    .line 249
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCheckedWrapper:Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->clear()V

    goto :goto_5

    .line 230
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_6
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public addSelectedRecipients(Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/contacts/ContactModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/contacts/ContactModel;>;"
    if-eqz p1, :cond_28

    .line 340
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/contacts/ContactModel;

    .line 342
    .local v1, person:Lcom/sec/android/socialhub/contacts/ContactModel;
    iget-object v2, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCheckedListMap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/contacts/ContactModel;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 344
    iget-object v2, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCheckedWrapper:Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/contacts/ContactModel;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->put(Ljava/lang/String;Lcom/sec/android/socialhub/contacts/ContactModel;)V

    goto :goto_6

    .line 348
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #person:Lcom/sec/android/socialhub/contacts/ContactModel;
    :cond_28
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 16
    .parameter "view"
    .parameter "ctx"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    .line 89
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/socialhub/contacts/ContactWrapper;

    .line 93
    .local v11, wrapper:Lcom/sec/android/socialhub/contacts/ContactWrapper;
    if-nez v11, :cond_14

    .line 95
    new-instance v11, Lcom/sec/android/socialhub/contacts/ContactWrapper;

    .end local v11           #wrapper:Lcom/sec/android/socialhub/contacts/ContactWrapper;
    invoke-direct {v11, p1}, Lcom/sec/android/socialhub/contacts/ContactWrapper;-><init>(Landroid/view/View;)V

    .line 96
    .restart local v11       #wrapper:Lcom/sec/android/socialhub/contacts/ContactWrapper;
    invoke-virtual {p1, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    :cond_14
    invoke-virtual {v11, p3}, Lcom/sec/android/socialhub/contacts/ContactWrapper;->changeData(Landroid/database/Cursor;)V

    .line 101
    iget v0, v11, Lcom/sec/android/socialhub/contacts/ContactWrapper;->miSpType:I

    invoke-static {v0}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v10

    .line 105
    .local v10, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    if-eqz v10, :cond_8e

    const/4 v0, 0x5

    :try_start_20
    invoke-interface {v10, v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isNeeds(I)Z

    move-result v0

    if-ne v0, v2, :cond_8e

    .line 107
    invoke-virtual {v11}, Lcom/sec/android/socialhub/contacts/ContactWrapper;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, v11, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mstrFullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2f
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_20 .. :try_end_2f} :catch_98

    .line 120
    :goto_2f
    iget-boolean v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->bIsSearchMode:Z

    if-ne v0, v2, :cond_40

    .line 122
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Lcom/sec/android/socialhub/contacts/ContactWrapper;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCondition:Ljava/lang/String;

    sget v3, Lcom/sec/android/socialhub/util/HubColor;->SEARCH_COLOR:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/socialhub/util/SocialHubUtil;->setSearchedTextWithColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 125
    :cond_40
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mImageManager:Lcom/sec/android/socialhub/image/ImageCacheManager;

    if-eqz v0, :cond_5e

    .line 127
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mImageManager:Lcom/sec/android/socialhub/image/ImageCacheManager;

    iget-object v2, v11, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mstrPhotoUrl:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/sec/android/socialhub/contacts/ContactWrapper;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f02001e

    move-object v1, p2

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/image/ImageCacheManager;->getImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 129
    .local v8, image:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_5e

    .line 131
    invoke-virtual {v11}, Lcom/sec/android/socialhub/contacts/ContactWrapper;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    .end local v8           #image:Landroid/graphics/Bitmap;
    :cond_5e
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mIndexList:Ljava/util/ArrayList;

    iget-object v1, v11, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mstrID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 137
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mIndexList:Ljava/util/ArrayList;

    iget-object v1, v11, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mstrID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 138
    .local v9, index:I
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mSection:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v11, v0}, Lcom/sec/android/socialhub/contacts/ContactWrapper;->setIndexText(Ljava/lang/String;)V

    .line 145
    .end local v9           #index:I
    :goto_7b
    invoke-virtual {p0}, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->checkExistContact()V

    .line 147
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCheckedListMap:Ljava/util/ArrayList;

    iget-object v1, v11, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mstrID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 149
    .local v6, bChecekd:Z
    invoke-virtual {v11}, Lcom/sec/android/socialhub/contacts/ContactWrapper;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 150
    return-void

    .line 111
    .end local v6           #bChecekd:Z
    :cond_8e
    :try_start_8e
    invoke-virtual {v11}, Lcom/sec/android/socialhub/contacts/ContactWrapper;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, v11, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mstrName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_97
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_8e .. :try_end_97} :catch_98

    goto :goto_2f

    .line 114
    :catch_98
    move-exception v7

    .line 116
    .local v7, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v7}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_2f

    .line 142
    .end local v7           #e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :cond_9d
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lcom/sec/android/socialhub/contacts/ContactWrapper;->setIndexText(Ljava/lang/String;)V

    goto :goto_7b
.end method

.method public calcSection(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .parameter "name"
    .parameter "position"

    .prologue
    .line 411
    iget-object v1, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mSortOption:Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;

    iget-object v2, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;->getIndexCharacter(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, section:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mSection:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 415
    iget-object v1, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mSection:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    .end local v0           #section:Ljava/lang/String;
    :goto_15
    return-object v0

    .restart local v0       #section:Ljava/lang/String;
    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->makeIndexer(Landroid/database/Cursor;)V

    .line 309
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 310
    return-void
.end method

.method public checkExistContact()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 154
    iget-boolean v3, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->bCheckContact:Z

    if-ne v3, v7, :cond_6

    .line 189
    :goto_5
    return-void

    .line 157
    :cond_6
    iget-object v3, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCheckedListMap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_70

    .line 159
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v2, removeID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCheckedListMap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    .local v1, id:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mAllContactID:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 165
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    const-string v3, "ContactListAdapter"

    const-string v4, "checkExistContact()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] does not contain in contact list."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 178
    .end local v1           #id:Ljava/lang/String;
    :cond_51
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_70

    .line 180
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 182
    .restart local v1       #id:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCheckedWrapper:Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;

    invoke-virtual {v3, v1}, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->remove(Ljava/lang/String;)V

    goto :goto_5b

    .line 184
    .end local v1           #id:Ljava/lang/String;
    :cond_6d
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 188
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #removeID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_70
    iput-boolean v7, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->bCheckContact:Z

    goto :goto_5
.end method

.method public getCheckedList()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/socialhub/contacts/ContactModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCheckList:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCheckedListMap()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCheckedListMap:Ljava/util/ArrayList;

    return-object v0
.end method

.method public handleClick(Landroid/view/View;)V
    .registers 9
    .parameter "view"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/contacts/ContactWrapper;

    .line 259
    .local v0, wrapper:Lcom/sec/android/socialhub/contacts/ContactWrapper;
    iget v1, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mContactMode:I

    packed-switch v1, :pswitch_data_9e

    .line 303
    :cond_d
    :goto_d
    return-void

    .line 262
    :pswitch_e
    iget-object v1, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCheckedListMap:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mstrID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 269
    iget-object v1, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCheckedListMap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mPossibleCount:I

    if-lt v1, v2, :cond_4a

    .line 271
    iget-object v1, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0800c8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mPossibleCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 277
    invoke-virtual {v0}, Lcom/sec/android/socialhub/contacts/ContactWrapper;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_d

    .line 281
    :cond_4a
    iget-object v2, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCheckedWrapper:Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;

    iget-object v3, v0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mstrID:Ljava/lang/String;

    new-instance v4, Lcom/sec/android/socialhub/contacts/ContactModel;

    iget v1, v0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->miSpType:I

    if-eq v1, v6, :cond_66

    iget-object v1, v0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mstrName:Ljava/lang/String;

    :goto_56
    iget-object v5, v0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mstrID:Ljava/lang/String;

    invoke-direct {v4, v1, v5}, Lcom/sec/android/socialhub/contacts/ContactModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->put(Ljava/lang/String;Lcom/sec/android/socialhub/contacts/ContactModel;)V

    .line 283
    invoke-virtual {v0}, Lcom/sec/android/socialhub/contacts/ContactWrapper;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_d

    .line 281
    :cond_66
    iget-object v1, v0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mstrFullName:Ljava/lang/String;

    goto :goto_56

    .line 288
    :cond_69
    iget-object v1, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCheckedWrapper:Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;

    iget-object v2, v0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mstrID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->remove(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0}, Lcom/sec/android/socialhub/contacts/ContactWrapper;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_d

    .line 294
    :pswitch_78
    iget-object v2, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCheckedWrapper:Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;

    iget-object v3, v0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mstrID:Ljava/lang/String;

    new-instance v4, Lcom/sec/android/socialhub/contacts/ContactModel;

    iget v1, v0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->miSpType:I

    if-eq v1, v6, :cond_9b

    iget-object v1, v0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mstrName:Ljava/lang/String;

    :goto_84
    iget-object v5, v0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mstrID:Ljava/lang/String;

    invoke-direct {v4, v1, v5}, Lcom/sec/android/socialhub/contacts/ContactModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->put(Ljava/lang/String;Lcom/sec/android/socialhub/contacts/ContactModel;)V

    .line 297
    iget-object v1, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/sec/android/socialhub/contacts/ContactListAdapter$IContactActivity;

    if-eqz v1, :cond_d

    .line 299
    iget-object v1, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/socialhub/contacts/ContactListAdapter$IContactActivity;

    invoke-interface {v1}, Lcom/sec/android/socialhub/contacts/ContactListAdapter$IContactActivity;->returnRecipients()V

    goto/16 :goto_d

    .line 294
    :cond_9b
    iget-object v1, v0, Lcom/sec/android/socialhub/contacts/ContactWrapper;->mstrFullName:Ljava/lang/String;

    goto :goto_84

    .line 259
    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_e
        :pswitch_78
    .end packed-switch
.end method

.method public makeIndexer(Landroid/database/Cursor;)V
    .registers 8
    .parameter "cursor"

    .prologue
    .line 369
    iget-object v4, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mAllContactID:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 370
    iget-object v4, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mSection:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 371
    iget-object v4, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mIndexList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 373
    const/4 v2, 0x0

    .line 374
    .local v2, friend_id:Ljava/lang/String;
    const/4 v1, 0x0

    .line 375
    .local v1, display_name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 377
    .local v3, sectionName:Ljava/lang/String;
    if-eqz p1, :cond_4a

    .line 379
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 381
    .local v0, count:I
    if-eqz v0, :cond_4a

    .line 383
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4a

    .line 387
    :cond_21
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 388
    iget-object v4, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mSortOption:Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;

    invoke-interface {v4}, Lcom/sec/android/socialhub/feature/FeatureFactory$ContactSort;->getColumnForSortIndex()I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 390
    iget-object v4, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mAllContactID:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->calcSection(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 394
    if-eqz v3, :cond_44

    .line 396
    iget-object v4, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mIndexList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_44
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_21

    .line 403
    .end local v0           #count:I
    :cond_4a
    iget-object v4, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mIndexListener:Lcom/sec/android/socialhub/contacts/ContactListAdapter$IIndexChangedListener;

    if-eqz v4, :cond_55

    .line 405
    iget-object v4, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mIndexListener:Lcom/sec/android/socialhub/contacts/ContactListAdapter$IIndexChangedListener;

    iget-object v5, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mSection:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Lcom/sec/android/socialhub/contacts/ContactListAdapter$IIndexChangedListener;->onChangedIndex(Ljava/util/ArrayList;)V

    .line 407
    :cond_55
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v5, 0x1

    .line 194
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 196
    .local v2, view:Landroid/view/View;
    new-instance v3, Lcom/sec/android/socialhub/contacts/ContactWrapper;

    invoke-direct {v3, v2}, Lcom/sec/android/socialhub/contacts/ContactWrapper;-><init>(Landroid/view/View;)V

    .line 198
    .local v3, wrapper:Lcom/sec/android/socialhub/contacts/ContactWrapper;
    invoke-virtual {v3}, Lcom/sec/android/socialhub/contacts/ContactWrapper;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 200
    const/4 v1, 0x0

    .line 202
    .local v1, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    iget-object v4, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mActivity:Lcom/sec/android/socialhub/contacts/ContactListAdapter$IContactActivity;

    if-eqz v4, :cond_20

    .line 204
    iget-object v4, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mActivity:Lcom/sec/android/socialhub/contacts/ContactListAdapter$IContactActivity;

    invoke-interface {v4}, Lcom/sec/android/socialhub/contacts/ContactListAdapter$IContactActivity;->getSpType()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v1

    .line 207
    :cond_20
    if-eqz v1, :cond_2b

    .line 209
    const/4 v4, 0x3

    invoke-interface {v1, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getLimitation(I)I

    move-result v0

    .line 211
    .local v0, limit:I
    if-le v0, v5, :cond_32

    .line 213
    iput v5, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mContactMode:I

    .line 221
    .end local v0           #limit:I
    :cond_2b
    :goto_2b
    invoke-direct {p0, v3}, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->modeChange(Lcom/sec/android/socialhub/contacts/ContactWrapper;)V

    .line 223
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 225
    return-object v2

    .line 217
    .restart local v0       #limit:I
    :cond_32
    const/4 v4, 0x2

    iput v4, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mContactMode:I

    goto :goto_2b
.end method

.method public setOnIndexChangedListener(Lcom/sec/android/socialhub/contacts/ContactListAdapter$IIndexChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 356
    iput-object p1, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mIndexListener:Lcom/sec/android/socialhub/contacts/ContactListAdapter$IIndexChangedListener;

    .line 357
    return-void
.end method

.method public setOnSelectedCountChangedListener(Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCheckedWrapper:Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;

    if-eqz v0, :cond_9

    .line 363
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCheckedWrapper:Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->setOnSelectionChangedListener(Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;)V

    .line 365
    :cond_9
    return-void
.end method

.method public setPossibleCount(I)V
    .registers 2
    .parameter "count"

    .prologue
    .line 328
    iput p1, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mPossibleCount:I

    .line 329
    return-void
.end method

.method public setSearchMode(ZLjava/lang/String;)V
    .registers 3
    .parameter "flag"
    .parameter "condition"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->bIsSearchMode:Z

    .line 83
    iput-object p2, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter;->mCondition:Ljava/lang/String;

    .line 84
    return-void
.end method
