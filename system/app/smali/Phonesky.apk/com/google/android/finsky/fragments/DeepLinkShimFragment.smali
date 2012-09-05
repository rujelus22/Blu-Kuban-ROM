.class public Lcom/google/android/finsky/fragments/DeepLinkShimFragment;
.super Lcom/google/android/finsky/fragments/UrlBasedPageFragment;
.source "DeepLinkShimFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/fragments/UrlBasedPageFragment;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;-><init>()V

    return-void
.end method

.method public static getExternalReferrer(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "uri"

    .prologue
    .line 133
    const-string v2, "referrer"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, referrer:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 136
    const-string v2, "gclid"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, gclid:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 138
    const/4 v2, 0x0

    .line 142
    .end local v0           #gclid:Ljava/lang/String;
    :goto_19
    return-object v2

    .line 140
    .restart local v0       #gclid:Ljava/lang/String;
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gclid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local v0           #gclid:Ljava/lang/String;
    :cond_31
    move-object v2, v1

    .line 142
    goto :goto_19
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 3
    .parameter "url"

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;-><init>()V

    .line 27
    .local v0, fragment:Lcom/google/android/finsky/fragments/DeepLinkShimFragment;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 28
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUri:Landroid/net/Uri;

    .line 29
    return-object v0
.end method


# virtual methods
.method protected getLayoutRes()I
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->requestData()V

    .line 36
    return-void
.end method

.method public onDataChanged()V
    .registers 15

    .prologue
    const/4 v2, 0x0

    .line 76
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    if-nez v0, :cond_6

    .line 129
    :cond_5
    :goto_5
    return-void

    .line 80
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->isSaveInstanceStateCalled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->popBackStack()V

    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasDetailsUrl()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getDetailsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 99
    .local v12, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getExternalReferrer(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 101
    .end local v12           #uri:Landroid/net/Uri;
    :cond_37
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasBrowseUrl()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 102
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getBrowseUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBrowse(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V

    goto :goto_5

    .line 104
    :cond_52
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasSearchUrl()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://market.android.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getSearchUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 109
    .local v13, url:Ljava/lang/String;
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 111
    .restart local v12       #uri:Landroid/net/Uri;
    const-string v0, "q"

    invoke-virtual {v12, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 112
    .local v11, query:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getSearchUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v11, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 113
    .end local v11           #query:Ljava/lang/String;
    .end local v12           #uri:Landroid/net/Uri;
    .end local v13           #url:Ljava/lang/String;
    :cond_90
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasDirectPurchase()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 115
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getDirectPurchase()Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

    move-result-object v10

    .line 118
    .local v10, directPurchase:Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v10}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getExternalReferrer(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v3, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v10}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getDetailsUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getOfferType()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getExternalReferrer(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getPurchaseDocid()Ljava/lang/String;

    move-result-object v9

    move-object v7, v2

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToPurchase(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 127
    .end local v10           #directPurchase:Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;
    :cond_cb
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;)V

    goto/16 :goto_5
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 72
    return-void
.end method

.method protected onInitViewBinders()V
    .registers 1

    .prologue
    .line 50
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    .line 66
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->onDataChanged()V

    .line 67
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    check-cast p1, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->onResponse(Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;)V

    return-void
.end method

.method protected rebindViews()V
    .registers 1

    .prologue
    .line 55
    return-void
.end method

.method protected requestData()V
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->resolveLink(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 60
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->switchToLoading()V

    .line 61
    return-void
.end method
