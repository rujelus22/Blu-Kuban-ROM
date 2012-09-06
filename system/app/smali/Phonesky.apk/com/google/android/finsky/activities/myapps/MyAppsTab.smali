.class public abstract Lcom/google/android/finsky/activities/myapps/MyAppsTab;
.super Ljava/lang/Object;
.source "MyAppsTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/activities/ViewPagerTab;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;
.implements Lcom/google/android/finsky/installer/InstallerListener;
.implements Lcom/google/android/finsky/library/Libraries$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/finsky/api/model/DfeModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/finsky/activities/ViewPagerTab;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/google/android/finsky/api/model/OnDataChangedListener;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/google/android/finsky/library/Libraries$Listener;",
        "Lcom/google/android/finsky/installer/InstallerListener;"
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mDetailsOpener:Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;

.field protected final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field protected mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field private mIsSelectedTab:Z

.field private mLastVolleyError:Lcom/android/volley/VolleyError;

.field protected final mLayoutInflater:Landroid/view/LayoutInflater;

.field protected final mLibraries:Lcom/google/android/finsky/library/Libraries;

.field protected final mSavedInstanceState:Landroid/os/Bundle;

.field protected final mUseTwoColumnLayout:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;)V
    .registers 6
    .parameter "context"
    .parameter "dfeApi"
    .parameter "detailsOpener"

    .prologue
    .line 52
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mIsSelectedTab:Z

    .line 53
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 55
    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 56
    iput-object p3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDetailsOpener:Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;

    .line 58
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v0, p0}, Lcom/google/android/finsky/receivers/Installer;->addListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    .line 61
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    .line 62
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->addListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mUseTwoColumnLayout:Z

    .line 65
    return-void
.end method

.method private final getKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "suffix"

    .prologue
    .line 204
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeDefaultSelection()V
    .registers 7

    .prologue
    .line 236
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 237
    .local v4, listView:Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;

    move-result-object v0

    .line 238
    .local v0, adapter:Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;
    if-eqz v4, :cond_3a

    .line 239
    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    .line 240
    .local v2, checkedItemPosition:I
    invoke-interface {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getCount()I

    move-result v5

    if-lt v2, v5, :cond_1a

    .line 243
    invoke-interface {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 246
    :cond_1a
    if-ltz v2, :cond_3a

    .line 247
    invoke-interface {v0, v2}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getDocument(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    .line 248
    .local v1, checkedDoc:Lcom/google/android/finsky/api/model/Document;
    if-nez v1, :cond_36

    .line 252
    move v3, v2

    .local v3, i:I
    :goto_23
    invoke-interface {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_3a

    .line 253
    invoke-interface {v0, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_33

    .line 254
    invoke-direct {p0, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->selectDocumentAtPosition(I)V

    .line 272
    .end local v1           #checkedDoc:Lcom/google/android/finsky/api/model/Document;
    .end local v2           #checkedItemPosition:I
    .end local v3           #i:I
    :cond_32
    :goto_32
    return-void

    .line 252
    .restart local v1       #checkedDoc:Lcom/google/android/finsky/api/model/Document;
    .restart local v2       #checkedItemPosition:I
    .restart local v3       #i:I
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 259
    .end local v3           #i:I
    :cond_36
    invoke-direct {p0, v2}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->selectDocumentAtPosition(I)V

    goto :goto_32

    .line 266
    .end local v1           #checkedDoc:Lcom/google/android/finsky/api/model/Document;
    .end local v2           #checkedItemPosition:I
    :cond_3a
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3b
    invoke-interface {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_32

    .line 267
    invoke-interface {v0, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4b

    .line 268
    invoke-direct {p0, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->selectDocumentAtPosition(I)V

    goto :goto_32

    .line 266
    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b
.end method

.method private saveCurrentSelection()V
    .registers 6

    .prologue
    .line 208
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v2

    if-nez v2, :cond_7

    .line 220
    :cond_6
    :goto_6
    return-void

    .line 212
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 213
    .local v0, currentPosition:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 215
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getDocument(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    .line 216
    .local v1, document:Lcom/google/android/finsky/api/model/Document;
    if-eqz v1, :cond_6

    .line 217
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v3, "checked_document_id"

    invoke-direct {p0, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private selectDocument(Ljava/lang/String;)V
    .registers 5
    .parameter "documentId"

    .prologue
    .line 275
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_7

    .line 290
    :goto_6
    return-void

    .line 280
    :cond_7
    const/4 v1, 0x0

    .local v1, position:I
    :goto_8
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 281
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getDocument(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 282
    .local v0, document:Lcom/google/android/finsky/api/model/Document;
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 283
    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->selectDocumentAtPosition(I)V

    goto :goto_6

    .line 280
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 289
    .end local v0           #document:Lcom/google/android/finsky/api/model/Document;
    :cond_2d
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->makeDefaultSelection()V

    goto :goto_6
.end method

.method private selectDocumentAtPosition(I)V
    .registers 5
    .parameter "position"

    .prologue
    .line 293
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getDocument(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 294
    .local v0, document:Lcom/google/android/finsky/api/model/Document;
    if-eqz v0, :cond_1a

    .line 295
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDetailsOpener:Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;

    invoke-interface {v1, v0}, Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;->openDocDetails(Lcom/google/android/finsky/api/model/Document;)V

    .line 296
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 297
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->saveCurrentSelection()V

    .line 299
    :cond_1a
    return-void
.end method


# virtual methods
.method protected clearState()V
    .registers 2

    .prologue
    .line 89
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    if-eqz v0, :cond_11

    .line 90
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeModel;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeModel;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    .line 94
    :cond_11
    return-void
.end method

.method protected abstract getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;
.end method

.method protected abstract getDocumentForView(Landroid/view/View;)Lcom/google/android/finsky/api/model/Document;
.end method

.method protected abstract getFullView()Landroid/view/View;
.end method

.method protected abstract getListView()Landroid/widget/ListView;
.end method

.method protected final isDataReady()Z
    .registers 2

    .prologue
    .line 85
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeModel;->isReady()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onAllLibrariesLoaded()V
    .registers 1

    .prologue
    .line 201
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    .line 98
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getDocumentForView(Landroid/view/View;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 99
    .local v0, doc:Lcom/google/android/finsky/api/model/Document;
    if-nez v0, :cond_7

    .line 125
    :cond_6
    :goto_6
    return-void

    .line 105
    :cond_7
    move-object v3, p1

    .line 107
    .local v3, v:Landroid/view/View;
    :goto_8
    if-eqz v3, :cond_6

    .line 110
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 111
    .local v1, parent:Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v4

    if-ne v1, v4, :cond_23

    .line 121
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 122
    .local v2, position:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_6

    .line 123
    invoke-direct {p0, v2}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->selectDocumentAtPosition(I)V

    goto :goto_6

    .line 115
    .end local v2           #position:I
    :cond_23
    instance-of v4, v1, Landroid/view/View;

    if-eqz v4, :cond_6

    move-object v3, v1

    .line 118
    check-cast v3, Landroid/view/View;

    .line 119
    goto :goto_8
.end method

.method public onDataChanged()V
    .registers 2

    .prologue
    .line 170
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mLastVolleyError:Lcom/android/volley/VolleyError;

    .line 171
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 69
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->clearState()V

    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v0, p0}, Lcom/google/android/finsky/receivers/Installer;->removeListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    .line 71
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->removeListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 72
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .parameter "error"

    .prologue
    .line 164
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mLastVolleyError:Lcom/android/volley/VolleyError;

    .line 165
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->syncViewToState()V

    .line 166
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 175
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    if-nez p1, :cond_3

    .line 181
    :goto_2
    return-void

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 180
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_2
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 195
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->saveCurrentSelection()V

    .line 196
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method

.method protected abstract requestData()V
.end method

.method protected restoreTabSelection()V
    .registers 3

    .prologue
    .line 223
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mIsSelectedTab:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mUseTwoColumnLayout:Z

    if-nez v0, :cond_9

    .line 232
    :cond_8
    :goto_8
    return-void

    .line 227
    :cond_9
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "checked_document_id"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 228
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "checked_document_id"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->selectDocument(Ljava/lang/String;)V

    goto :goto_8

    .line 230
    :cond_27
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->makeDefaultSelection()V

    goto :goto_8
.end method

.method protected abstract retryFromError()V
.end method

.method public setTabSelected(Z)V
    .registers 2
    .parameter "isSelected"

    .prologue
    .line 185
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mIsSelectedTab:Z

    .line 186
    if-eqz p1, :cond_8

    .line 187
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->restoreTabSelection()V

    .line 191
    :goto_7
    return-void

    .line 189
    :cond_8
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->saveCurrentSelection()V

    goto :goto_7
.end method

.method protected syncViewToState()V
    .registers 9

    .prologue
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab<TT;>;"
    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 128
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getFullView()Landroid/view/View;

    move-result-object v3

    .line 130
    .local v3, fullView:Landroid/view/View;
    const v5, 0x7f080079

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 131
    .local v4, loadingIndicator:Landroid/view/View;
    const v5, 0x7f08019f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 132
    .local v1, errorIndicator:Landroid/view/View;
    const v5, 0x7f08017e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 134
    .local v0, contentListView:Landroid/widget/ListView;
    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mLastVolleyError:Lcom/android/volley/VolleyError;

    if-eqz v5, :cond_51

    .line 135
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 136
    const v5, 0x7f080040

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 137
    .local v2, errorMsg:Landroid/widget/TextView;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mLastVolleyError:Lcom/android/volley/VolleyError;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const v5, 0x7f080123

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/google/android/finsky/activities/myapps/MyAppsTab$1;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab$1;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsTab;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 148
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 158
    .end local v2           #errorMsg:Landroid/widget/TextView;
    :goto_50
    return-void

    .line 149
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->isDataReady()Z

    move-result v5

    if-eqz v5, :cond_61

    .line 150
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 151
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 152
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_50

    .line 154
    :cond_61
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 155
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 156
    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_50
.end method
