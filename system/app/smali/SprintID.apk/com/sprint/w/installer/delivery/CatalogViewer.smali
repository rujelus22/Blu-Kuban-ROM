.class public Lcom/sprint/w/installer/delivery/CatalogViewer;
.super Landroid/app/Activity;
.source "CatalogViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/delivery/CatalogViewer$ItemView;,
        Lcom/sprint/w/installer/delivery/CatalogViewer$ListAdapter;
    }
.end annotation


# instance fields
.field private catalog:Lcom/sprint/w/installer/delivery/Catalog;

.field mAdapter:Lcom/sprint/w/installer/delivery/CatalogViewer$ListAdapter;

.field mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mDefaultIcon:Landroid/graphics/Bitmap;

.field private mDeliveryRequest:Lcom/sprint/w/installer/delivery/DeliveryRequest;

.field private mDescription:Landroid/widget/TextView;

.field private mInstalledPack:Lcom/sprint/w/installer/PackInfo;

.field mListView:Landroid/widget/ListView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mSyncUpdateLock:Ljava/lang/Object;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->mSyncUpdateLock:Ljava/lang/Object;

    .line 105
    new-instance v0, Lcom/sprint/w/installer/delivery/CatalogViewer$2;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/delivery/CatalogViewer$2;-><init>(Lcom/sprint/w/installer/delivery/CatalogViewer;)V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/sprint/w/installer/delivery/CatalogViewer;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->mSyncUpdateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sprint/w/installer/delivery/CatalogViewer;)Lcom/sprint/w/installer/delivery/Catalog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->catalog:Lcom/sprint/w/installer/delivery/Catalog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sprint/w/installer/delivery/CatalogViewer;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sprint/w/installer/delivery/CatalogViewer;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->mDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sprint/w/installer/delivery/CatalogViewer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/CatalogViewer;->updateListView()V

    return-void
.end method

.method static synthetic access$500(Lcom/sprint/w/installer/delivery/CatalogViewer;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sprint/w/installer/delivery/CatalogViewer;)Lcom/sprint/w/installer/delivery/DeliveryRequest;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->mDeliveryRequest:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sprint/w/installer/delivery/CatalogViewer;)Lcom/sprint/w/installer/PackInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->mInstalledPack:Lcom/sprint/w/installer/PackInfo;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sprint/w/installer/delivery/CatalogViewer;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->mDefaultIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private handleIntent()V
    .registers 5

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/CatalogViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/sprint/w/installer/delivery/Catalog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/delivery/Catalog;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->catalog:Lcom/sprint/w/installer/delivery/Catalog;

    .line 64
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/CatalogViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->mDeliveryRequest:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    .line 65
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->mDeliveryRequest:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    if-eqz v0, :cond_3b

    .line 66
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->mDeliveryRequest:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryID:Ljava/lang/String;

    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->REACHED_CATALOG_VIEW:Lcom/sprint/w/installer/DeliveryState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->updateRecord(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 68
    :cond_3b
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/CatalogViewer;->loadContent()V

    .line 69
    return-void
.end method

.method private loadContent()V
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 79
    new-instance v0, Lcom/sprint/w/installer/delivery/CatalogViewer$1;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/delivery/CatalogViewer$1;-><init>(Lcom/sprint/w/installer/delivery/CatalogViewer;)V

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/CatalogViewer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method private updateListView()V
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_25

    .line 96
    const v0, 0x7f0c0015

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/CatalogViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->mListView:Landroid/widget/ListView;

    .line 97
    new-instance v0, Lcom/sprint/w/installer/delivery/CatalogViewer$ListAdapter;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/delivery/CatalogViewer$ListAdapter;-><init>(Lcom/sprint/w/installer/delivery/CatalogViewer;)V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->mAdapter:Lcom/sprint/w/installer/delivery/CatalogViewer$ListAdapter;

    .line 98
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->mAdapter:Lcom/sprint/w/installer/delivery/CatalogViewer$ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    :goto_24
    return-void

    .line 101
    :cond_25
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->mAdapter:Lcom/sprint/w/installer/delivery/CatalogViewer$ListAdapter;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/CatalogViewer$ListAdapter;->notifyDataSetChanged()V

    goto :goto_24
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/CatalogViewer;->setContentView(I)V

    .line 47
    const v0, 0x7f0c0013

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/CatalogViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->mTitle:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0c0014

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/CatalogViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->mDescription:Landroid/widget/TextView;

    .line 49
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/CatalogViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020014

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 50
    const v0, 0x7f0c0008

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/CatalogViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->mProgress:Landroid/widget/ProgressBar;

    .line 52
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/CatalogViewer;->handleIntent()V

    .line 53
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/delivery/CatalogViewer;->setIntent(Landroid/content/Intent;)V

    .line 59
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/CatalogViewer;->handleIntent()V

    .line 60
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 74
    invoke-static {p0}, Lcom/sprint/w/installer/PackInfo;->getActivePackInfo(Landroid/content/Context;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer;->mInstalledPack:Lcom/sprint/w/installer/PackInfo;

    .line 75
    return-void
.end method
