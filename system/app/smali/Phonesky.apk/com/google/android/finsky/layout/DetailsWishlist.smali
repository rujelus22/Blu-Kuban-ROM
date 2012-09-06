.class public Lcom/google/android/finsky/layout/DetailsWishlist;
.super Landroid/widget/LinearLayout;
.source "DetailsWishlist.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/DetailsWishlist$1;,
        Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;",
        ">;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mLoadingView:Landroid/view/View;

.field private wishlistState:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method private syncUIState()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 116
    sget-object v0, Lcom/google/android/finsky/layout/DetailsWishlist$1;->$SwitchMap$com$google$android$finsky$layout$DetailsWishlist$WishlistState:[I

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->wishlistState:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    .line 135
    :goto_11
    return-void

    .line 118
    :pswitch_12
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_11

    .line 123
    :pswitch_22
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_11

    .line 129
    :pswitch_32
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_11

    .line 116
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_12
        :pswitch_22
        :pswitch_32
        :pswitch_32
    .end packed-switch
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;)V
    .registers 12
    .parameter "document"
    .parameter "dfeApi"

    .prologue
    const/4 v8, 0x1

    .line 64
    iput-object p1, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 65
    iput-object p2, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 67
    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v7}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v4

    .line 70
    .local v4, owner:Landroid/accounts/Account;
    const/4 v3, 0x0

    .line 71
    .local v3, isInstalled:Z
    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v5

    if-ne v5, v8, :cond_43

    .line 72
    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, appPackageName:Ljava/lang/String;
    new-instance v0, Lcom/google/android/finsky/activities/AppActionAnalyzer;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v5

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v6

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/finsky/activities/AppActionAnalyzer;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V

    .line 75
    .local v0, actions:Lcom/google/android/finsky/activities/AppActionAnalyzer;
    iget-boolean v3, v0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    .line 79
    .end local v0           #actions:Lcom/google/android/finsky/activities/AppActionAnalyzer;
    .end local v1           #appPackageName:Ljava/lang/String;
    :cond_43
    if-nez v4, :cond_55

    if-nez v3, :cond_55

    sget-object v5, Lcom/google/android/finsky/config/G;->wishlistEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_5b

    .line 80
    :cond_55
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/DetailsWishlist;->setVisibility(I)V

    .line 96
    :goto_5a
    return-void

    .line 82
    :cond_5b
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/DetailsWishlist;->setVisibility(I)V

    .line 84
    invoke-virtual {p0, p0}, Lcom/google/android/finsky/layout/DetailsWishlist;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v5}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v6, "u-wl"

    invoke-static {v5, v6, p1, v8}, Lcom/google/android/finsky/library/LibraryEntry;->fromDocument(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;I)Lcom/google/android/finsky/library/LibraryEntry;

    move-result-object v2

    .line 88
    .local v2, entry:Lcom/google/android/finsky/library/LibraryEntry;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v6}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/finsky/library/AccountLibrary;->contains(Lcom/google/android/finsky/library/LibraryEntry;)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 90
    sget-object v5, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;->IN_WISHLIST:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    iput-object v5, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->wishlistState:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    .line 94
    :goto_8c
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsWishlist;->syncUIState()V

    goto :goto_5a

    .line 92
    :cond_90
    sget-object v5, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;->NOT_IN_WISHLIST:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    iput-object v5, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->wishlistState:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    goto :goto_8c
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 100
    sget-object v0, Lcom/google/android/finsky/layout/DetailsWishlist$1;->$SwitchMap$com$google$android$finsky$layout$DetailsWishlist$WishlistState:[I

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->wishlistState:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    .line 112
    :goto_d
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsWishlist;->syncUIState()V

    .line 113
    return-void

    .line 102
    :pswitch_11
    sget-object v0, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;->LOADING_REM_REQUEST:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->wishlistState:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    .line 103
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "u-wl"

    invoke-interface {v0, v1, v2, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->removeFromLibrary(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    goto :goto_d

    .line 107
    :pswitch_23
    sget-object v0, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;->LOADING_ADD_REQUEST:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->wishlistState:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    .line 108
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "u-wl"

    invoke-interface {v0, v1, v2, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->addToLibrary(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    goto :goto_d

    .line 100
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_11
        :pswitch_23
    .end packed-switch
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .parameter "error"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    sget-object v0, Lcom/google/android/finsky/layout/DetailsWishlist$1;->$SwitchMap$com$google$android$finsky$layout$DetailsWishlist$WishlistState:[I

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->wishlistState:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 165
    :goto_f
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsWishlist;->syncUIState()V

    .line 166
    return-void

    .line 157
    :pswitch_13
    sget-object v0, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;->NOT_IN_WISHLIST:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->wishlistState:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    .line 158
    const-string v0, "Unable to add to wishlist: %s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    .line 161
    :pswitch_21
    sget-object v0, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;->IN_WISHLIST:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->wishlistState:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    .line 162
    const-string v0, "Unable to remove from wishlist: %s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    .line 155
    nop

    :pswitch_data_30
    .packed-switch 0x3
        :pswitch_13
        :pswitch_21
    .end packed-switch
.end method

.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 59
    const v0, 0x7f0800fc

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsWishlist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->mCheckBox:Landroid/widget/CheckBox;

    .line 60
    const v0, 0x7f0800fd

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsWishlist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->mLoadingView:Landroid/view/View;

    .line 61
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;)V
    .registers 6
    .parameter "response"

    .prologue
    .line 139
    sget-object v0, Lcom/google/android/finsky/layout/DetailsWishlist$1;->$SwitchMap$com$google$android$finsky$layout$DetailsWishlist$WishlistState:[I

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->wishlistState:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    .line 147
    :goto_d
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsWishlist;->syncUIState()V

    .line 148
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraryReplicators()Lcom/google/android/finsky/library/LibraryReplicators;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v1}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;->getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v2

    const-string v3, "modifed_wishlist"

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/library/LibraryReplicators;->applyLibraryUpdate(Landroid/accounts/Account;Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Ljava/lang/String;)V

    .line 151
    return-void

    .line 141
    :pswitch_28
    sget-object v0, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;->IN_WISHLIST:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->wishlistState:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    goto :goto_d

    .line 144
    :pswitch_2d
    sget-object v0, Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;->NOT_IN_WISHLIST:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsWishlist;->wishlistState:Lcom/google/android/finsky/layout/DetailsWishlist$WishlistState;

    goto :goto_d

    .line 139
    :pswitch_data_32
    .packed-switch 0x3
        :pswitch_28
        :pswitch_2d
    .end packed-switch
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    check-cast p1, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DetailsWishlist;->onResponse(Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;)V

    return-void
.end method
