.class public Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;
.super Landroid/widget/BaseAdapter;
.source "MusicSettingsMusicMenuReorderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;
    }
.end annotation


# instance fields
.field protected mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mListView:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;)V
    .registers 4
    .parameter "context"
    .parameter "listView"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mContext:Landroid/content/Context;

    .line 33
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mListView:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;

    .line 35
    invoke-direct {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->makeArray()V

    .line 36
    return-void
.end method

.method private makeArray()V
    .registers 7

    .prologue
    .line 39
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mArray:Ljava/util/ArrayList;

    .line 40
    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getMusicMenuOrder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, tmpString:Ljava/lang/String;
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v4, "|"

    invoke-direct {v0, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .local v0, st:Ljava/util/StringTokenizer;
    :goto_14
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 43
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, token:Ljava/lang/String;
    new-instance v3, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;

    invoke-direct {v3, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;)V

    .line 46
    .local v3, viewItem:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;->mId:I

    .line 47
    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f06

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iget v5, v3, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;->mId:I

    aget-object v4, v4, v5

    iput-object v4, v3, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;->mMainText:Ljava/lang/String;

    .line 48
    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 50
    .end local v2           #token:Ljava/lang/String;
    .end local v3           #viewItem:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;
    :cond_45
    return-void
.end method


# virtual methods
.method public changeArray(Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mArray:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->notifyDataSetChanged()V

    .line 55
    return-void
.end method

.method public getArrayList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;

    iget v0, v0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;->mId:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "view"
    .parameter "arg2"

    .prologue
    .line 74
    if-nez p2, :cond_10

    .line 75
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 76
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030028

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 79
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_10
    const v2, 0x7f0c00c8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 80
    .local v1, text:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;

    iget-object v2, v2, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;->mMainText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-object p2
.end method
