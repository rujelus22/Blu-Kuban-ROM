.class public Lcom/google/android/finsky/layout/GooglePlusShareSection;
.super Landroid/widget/LinearLayout;
.source "GooglePlusShareSection.java"

# interfaces
.implements Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/GooglePlusShareSection$AuthorizedSkyjamJsonObjectRequest;
    }
.end annotation


# instance fields
.field private mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

.field private mDocumentToShare:Lcom/google/android/finsky/api/model/Document;

.field private mFragment:Landroid/support/v4/app/Fragment;

.field private mHeader:Landroid/widget/TextView;

.field private mIsFetching:Z

.field private mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

.field private final mJsonListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field private final mTrackListErrorListener:Lcom/android/volley/Response$ErrorListener;

.field private final mTrackListListener:Lcom/google/android/finsky/api/model/OnDataChangedListener;

.field private final mUnrollErrorListener:Lcom/android/volley/Response$ErrorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mIsFetching:Z

    .line 227
    new-instance v0, Lcom/google/android/finsky/layout/GooglePlusShareSection$2;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/GooglePlusShareSection$2;-><init>(Lcom/google/android/finsky/layout/GooglePlusShareSection;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mTrackListErrorListener:Lcom/android/volley/Response$ErrorListener;

    .line 235
    new-instance v0, Lcom/google/android/finsky/layout/GooglePlusShareSection$3;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/GooglePlusShareSection$3;-><init>(Lcom/google/android/finsky/layout/GooglePlusShareSection;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mTrackListListener:Lcom/google/android/finsky/api/model/OnDataChangedListener;

    .line 264
    new-instance v0, Lcom/google/android/finsky/layout/GooglePlusShareSection$4;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/GooglePlusShareSection$4;-><init>(Lcom/google/android/finsky/layout/GooglePlusShareSection;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mUnrollErrorListener:Lcom/android/volley/Response$ErrorListener;

    .line 273
    new-instance v0, Lcom/google/android/finsky/layout/GooglePlusShareSection$5;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/GooglePlusShareSection$5;-><init>(Lcom/google/android/finsky/layout/GooglePlusShareSection;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mJsonListener:Lcom/android/volley/Response$Listener;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mIsFetching:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/layout/GooglePlusShareSection;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mIsFetching:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Lcom/google/android/finsky/api/model/Document;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mDocumentToShare:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Landroid/support/v4/app/Fragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/finsky/layout/GooglePlusShareSection;Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/api/model/Document;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mDocumentToShare:Lcom/google/android/finsky/api/model/Document;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/GooglePlusShareSection;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->updateUi()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/finsky/layout/GooglePlusShareSection;Lcom/android/volley/toolbox/JsonObjectRequest;)Lcom/android/volley/toolbox/JsonObjectRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Lcom/android/volley/Response$Listener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mJsonListener:Lcom/android/volley/Response$Listener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Lcom/android/volley/Response$ErrorListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mUnrollErrorListener:Lcom/android/volley/Response$ErrorListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Lcom/android/volley/RequestQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/layout/GooglePlusShareSection;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->updateWithDocument()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Lcom/google/android/finsky/api/model/DfeList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/finsky/layout/GooglePlusShareSection;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->buildBaseShareIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private buildBaseShareIntent()Landroid/content/Intent;
    .registers 5

    .prologue
    .line 209
    iget-object v2, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mDocumentToShare:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, url:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.apps.plus.SHARE_GOOGLE"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 211
    .local v0, share:Landroid/content/Intent;
    const-string v2, "authAccount"

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v2, "com.google.android.apps.plus.VERSION"

    const-string v3, "1.00"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    return-object v0
.end method

.method private isSharingSupported()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 201
    invoke-direct {p0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->buildBaseShareIntent()Landroid/content/Intent;

    move-result-object v2

    .line 202
    .local v2, shareIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 204
    .local v0, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 205
    .local v1, resolutions:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    const/4 v3, 0x1

    :cond_18
    return v3
.end method

.method private isSupportedCorpus()Z
    .registers 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private updateUi()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 217
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mIsFetching:Z

    if-eqz v0, :cond_11

    .line 218
    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 225
    :goto_10
    return-void

    .line 221
    :cond_11
    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_10
.end method

.method private updateWithDocument()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 142
    iget-object v3, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mDocumentToShare:Lcom/google/android/finsky/api/model/Document;

    if-eqz v3, :cond_b

    invoke-direct {p0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->isSharingSupported()Z

    move-result v3

    if-nez v3, :cond_c

    .line 194
    :cond_b
    :goto_b
    return-void

    .line 148
    :cond_c
    invoke-direct {p0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->isSupportedCorpus()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 152
    invoke-virtual {p0, v7}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->setVisibility(I)V

    .line 154
    const v3, 0x7f0800a3

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 155
    .local v1, subheader:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mDocumentToShare:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v3

    if-eqz v3, :cond_7b

    .line 156
    const v3, 0x7f070136

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 163
    :cond_2c
    :goto_2c
    const v3, 0x7f0800a2

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mHeader:Landroid/widget/TextView;

    .line 164
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mDocumentToShare:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v0

    .line 166
    .local v0, color:I
    iget-object v3, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    iget-object v3, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mHeader:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    const v3, 0x7f0800de

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mProgress:Landroid/widget/ProgressBar;

    .line 171
    new-instance v3, Lcom/google/android/finsky/layout/GooglePlusShareSection$1;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/layout/GooglePlusShareSection$1;-><init>(Lcom/google/android/finsky/layout/GooglePlusShareSection;)V

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mRequestQueue:Lcom/android/volley/RequestQueue;

    goto :goto_b

    .line 157
    .end local v0           #color:I
    :cond_7b
    iget-object v3, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mDocumentToShare:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getSongDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 158
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070137

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mDocumentToShare:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, subtext:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/api/model/Document;Landroid/support/v4/app/Fragment;)V
    .registers 7
    .parameter "document"
    .parameter "fragment"

    .prologue
    const/4 v2, 0x0

    .line 102
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->setVisibility(I)V

    .line 104
    sget-object v1, Lcom/google/android/finsky/config/G;->postPurchaseSharingEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_15

    .line 139
    :cond_14
    :goto_14
    return-void

    .line 108
    :cond_15
    iput-object p2, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mFragment:Landroid/support/v4/app/Fragment;

    .line 109
    iput-object p1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    .line 111
    invoke-direct {p0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->isSupportedCorpus()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 115
    iget-object v1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/api/model/Document;->ownedByUser(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 116
    iput-object v2, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mDocumentToShare:Lcom/google/android/finsky/api/model/Document;

    .line 119
    iget-object v1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, childrenListUrl:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 122
    iget-object v1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v1, :cond_47

    .line 123
    iget-object v1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v2, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mTrackListListener:Lcom/google/android/finsky/api/model/OnDataChangedListener;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 124
    iget-object v1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v2, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mTrackListErrorListener:Lcom/android/volley/Response$ErrorListener;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 126
    :cond_47
    new-instance v1, Lcom/google/android/finsky/api/model/DfeList;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    .line 127
    iget-object v1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v2, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mTrackListListener:Lcom/google/android/finsky/api/model/OnDataChangedListener;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 128
    iget-object v1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v2, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mTrackListErrorListener:Lcom/android/volley/Response$ErrorListener;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 129
    iget-object v1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    goto :goto_14

    .line 135
    .end local v0           #childrenListUrl:Ljava/lang/String;
    :cond_6b
    iget-object v1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    iput-object v1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mDocumentToShare:Lcom/google/android/finsky/api/model/Document;

    .line 138
    :cond_6f
    invoke-direct {p0}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->updateWithDocument()V

    goto :goto_14
.end method

.method public onAttachedToWindow()V
    .registers 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 80
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->attach(Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;)V

    .line 81
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_12

    .line 86
    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mTrackListListener:Lcom/google/android/finsky/api/model/OnDataChangedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 87
    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mTrackListErrorListener:Lcom/android/volley/Response$ErrorListener;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 89
    :cond_12
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->detach(Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;)V

    .line 90
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 91
    return-void
.end method

.method public onPurchaseStatusChanged(Ljava/lang/String;Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;)V
    .registers 5
    .parameter "docId"
    .parameter "status"

    .prologue
    .line 96
    if-eqz p2, :cond_f

    iget-object v0, p2, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;->state:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    sget-object v1, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_COMPLETED:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    if-ne v0, v1, :cond_f

    .line 97
    iget-object v0, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    iget-object v1, p0, Lcom/google/android/finsky/layout/GooglePlusShareSection;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->bind(Lcom/google/android/finsky/api/model/Document;Landroid/support/v4/app/Fragment;)V

    .line 99
    :cond_f
    return-void
.end method
