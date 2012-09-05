.class public Lcom/google/android/finsky/activities/DetailsLinksViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "DetailsLinksViewBinder.java"


# instance fields
.field private mRows:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/DetailsLinksViewBinder;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addEmailLinkRow(Landroid/view/ViewGroup;ILjava/lang/String;I)V
    .registers 11
    .parameter "parent"
    .parameter "titleId"
    .parameter "link"
    .parameter "iconId"

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils;->createSendIntentForUrl(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    .line 112
    .local v5, clickIntent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.SUBJECT"

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 113
    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->addLinkRow(Landroid/view/ViewGroup;ILjava/lang/String;ILandroid/content/Intent;)V

    .line 114
    return-void
.end method

.method private addLinkRow(Landroid/view/ViewGroup;ILjava/lang/String;ILandroid/content/Intent;)V
    .registers 13
    .parameter "parent"
    .parameter "titleId"
    .parameter "link"
    .parameter "iconId"
    .parameter "clickIntent"

    .prologue
    .line 118
    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040085

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 120
    .local v3, rowView:Landroid/view/View;
    const v4, 0x7f080134

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 121
    .local v2, labelView:Landroid/widget/TextView;
    const v4, 0x7f080135

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 122
    .local v1, infoView:Landroid/widget/TextView;
    const v4, 0x7f080133

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 124
    .local v0, iconView:Landroid/widget/ImageView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    .line 125
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    new-instance v4, Lcom/google/android/finsky/activities/DetailsLinksViewBinder$1;

    invoke-direct {v4, p0, p5}, Lcom/google/android/finsky/activities/DetailsLinksViewBinder$1;-><init>(Lcom/google/android/finsky/activities/DetailsLinksViewBinder;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 135
    iget v4, p0, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->mRows:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->mRows:I

    .line 136
    return-void
.end method

.method private addWebLinkRow(Landroid/view/ViewGroup;ILjava/lang/String;I)V
    .registers 11
    .parameter "parent"
    .parameter "titleId"
    .parameter "link"
    .parameter "iconId"

    .prologue
    .line 104
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils;->createViewIntentForUrl(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    .local v5, clickIntent:Landroid/content/Intent;
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 106
    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->addLinkRow(Landroid/view/ViewGroup;ILjava/lang/String;ILandroid/content/Intent;)V

    .line 107
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V
    .registers 16
    .parameter "view"
    .parameter "doc"

    .prologue
    .line 31
    const/4 v11, -0x1

    invoke-super {p0, p1, p2, v11}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;I)V

    .line 33
    const/4 v11, 0x0

    iput v11, p0, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->mRows:I

    .line 34
    iget-object v11, p0, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->mLayout:Landroid/view/View;

    const v12, 0x7f0800c6

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 35
    .local v8, listingLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 37
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v5

    .line 38
    .local v5, documentType:I
    packed-switch v5, :pswitch_data_fe

    .line 95
    :cond_1c
    :goto_1c
    :pswitch_1c
    iget v11, p0, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->mRows:I

    if-nez v11, :cond_f5

    .line 96
    iget-object v11, p0, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->mLayout:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :goto_27
    return-void

    .line 40
    :pswitch_28
    iget-object v11, p0, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->mContext:Landroid/content/Context;

    const v12, 0x7f07011c

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v12}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v12

    invoke-virtual {p0, v11, v12}, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->setupHeader(Ljava/lang/String;I)V

    .line 42
    iget-object v11, p0, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v11}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    .line 43
    .local v0, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperWebsite()Z

    move-result v11

    if-eqz v11, :cond_59

    .line 44
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getDeveloperWebsite()Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, developerWebsite:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_59

    .line 46
    const v11, 0x7f070122

    const v12, 0x7f02004c

    invoke-direct {p0, v8, v11, v4, v12}, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->addWebLinkRow(Landroid/view/ViewGroup;ILjava/lang/String;I)V

    .line 51
    .end local v4           #developerWebsite:Ljava/lang/String;
    :cond_59
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperEmail()Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 52
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getDeveloperEmail()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, developerEmail:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1c

    .line 54
    const v11, 0x7f070123

    const v12, 0x7f02004a

    invoke-direct {p0, v8, v11, v3, v12}, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->addEmailLinkRow(Landroid/view/ViewGroup;ILjava/lang/String;I)V

    goto :goto_1c

    .line 62
    .end local v0           #appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .end local v3           #developerEmail:Ljava/lang/String;
    :pswitch_73
    iget-object v11, p0, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->mContext:Landroid/content/Context;

    const v12, 0x7f070121

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v12}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v12

    invoke-virtual {p0, v11, v12}, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->setupHeader(Ljava/lang/String;I)V

    .line 63
    iget-object v11, p0, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v11}, Lcom/google/android/finsky/api/model/Document;->getArtistDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v1

    .line 64
    .local v1, artistDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasExternalLinks()Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 65
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getExternalLinks()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    move-result-object v2

    .line 66
    .local v2, artistLinks:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getWebsiteUrlCount()I

    move-result v11

    if-lez v11, :cond_c1

    .line 67
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getWebsiteUrlList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_a5
    :goto_a5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 68
    .local v9, websiteUrl:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a5

    .line 69
    const v11, 0x7f070122

    const v12, 0x7f02004c

    invoke-direct {p0, v8, v11, v9, v12}, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->addWebLinkRow(Landroid/view/ViewGroup;ILjava/lang/String;I)V

    goto :goto_a5

    .line 75
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #websiteUrl:Ljava/lang/String;
    :cond_c1
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->hasYoutubeChannelUrl()Z

    move-result v11

    if-eqz v11, :cond_da

    .line 76
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getYoutubeChannelUrl()Ljava/lang/String;

    move-result-object v10

    .line 77
    .local v10, youtubeChannelUrl:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_da

    .line 78
    const v11, 0x7f070124

    const v12, 0x7f02004d

    invoke-direct {p0, v8, v11, v10, v12}, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->addWebLinkRow(Landroid/view/ViewGroup;ILjava/lang/String;I)V

    .line 83
    .end local v10           #youtubeChannelUrl:Ljava/lang/String;
    :cond_da
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->hasGooglePlusProfileUrl()Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 84
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getGooglePlusProfileUrl()Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, googlePlusProfileUrl:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1c

    .line 86
    const v11, 0x7f070125

    const v12, 0x7f02004b

    invoke-direct {p0, v8, v11, v6, v12}, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->addWebLinkRow(Landroid/view/ViewGroup;ILjava/lang/String;I)V

    goto/16 :goto_1c

    .line 99
    .end local v1           #artistDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    .end local v2           #artistLinks:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;
    .end local v6           #googlePlusProfileUrl:Ljava/lang/String;
    :cond_f5
    iget-object v11, p0, Lcom/google/android/finsky/activities/DetailsLinksViewBinder;->mLayout:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_27

    .line 38
    nop

    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_28
        :pswitch_1c
        :pswitch_73
    .end packed-switch
.end method

.method public onDestroyView()V
    .registers 1

    .prologue
    .line 141
    return-void
.end method
