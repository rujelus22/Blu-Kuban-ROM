.class public Lcom/google/android/apps/reader/fragment/StreamPickerFragment;
.super Landroid/support/v4/app/ListFragment;
.source "StreamPickerFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/fragment/StreamPickerFragment$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/ListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOADER_STREAMS:I = 0x1

.field private static final STATE_URI:Ljava/lang/String; = "reader:uri"


# instance fields
.field private mAdapter:Lcom/google/android/apps/reader/widget/StreamPickerAdapter;

.field private mEmpty:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field private mStreams:Lcom/google/android/apps/reader/fragment/Loadable;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 182
    return-void
.end method

.method private static getEmptyText(Landroid/net/Uri;)I
    .registers 3
    .parameter "uri"

    .prologue
    .line 191
    sget-object v0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment$1;->$SwitchMap$com$google$android$apps$reader$provider$ReaderContract$Streams$Filter:[I

    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams;->getFilter(Landroid/net/Uri;)Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 201
    const v0, 0x7f0d0053

    :goto_12
    return v0

    .line 193
    :pswitch_13
    const v0, 0x7f0d0055

    goto :goto_12

    .line 195
    :pswitch_17
    const v0, 0x7f0d0052

    goto :goto_12

    .line 197
    :pswitch_1b
    const v0, 0x7f0d0051

    goto :goto_12

    .line 199
    :pswitch_1f
    const v0, 0x7f0d004f

    goto :goto_12

    .line 191
    nop

    :pswitch_data_24
    .packed-switch 0x2
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
    .end packed-switch
.end method

.method private static getSortOrder(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 177
    sget-object v0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment$1;->$SwitchMap$com$google$android$apps$reader$provider$ReaderContract$Streams$Filter:[I

    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams;->getFilter(Landroid/net/Uri;)Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams$Filter;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 182
    const-string v0, "label COLLATE NOCASE ASC"

    :goto_11
    return-object v0

    .line 180
    :pswitch_12
    const/4 v0, 0x0

    goto :goto_11

    .line 177
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_12
    .end packed-switch
.end method

.method private static isOrdered(Landroid/net/Uri;)Z
    .registers 2
    .parameter "uri"

    .prologue
    .line 187
    invoke-static {p0}, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->getSortOrder(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private updateAppWidget(I)V
    .registers 7
    .parameter

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 164
    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 165
    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 167
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    .line 171
    const-string v4, "appWidgetIds"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 172
    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 173
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 174
    return-void
.end method


# virtual methods
.method public changeUri(Landroid/net/Uri;)V
    .registers 4
    .parameter "uri"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mStreams:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->destroyLoader()V

    .line 82
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mUri:Landroid/net/Uri;

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_27

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mEmpty:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->getEmptyText(Landroid/net/Uri;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->isOrdered(Landroid/net/Uri;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mStreams:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->restartLoader()V

    .line 91
    :goto_26
    return-void

    .line 88
    :cond_27
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mEmpty:Landroid/widget/TextView;

    const v1, 0x7f0d0053

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    goto :goto_26
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 160
    :goto_7
    return-void

    .line 157
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mStreams:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->retry()V

    goto :goto_7

    .line 155
    :pswitch_data_e
    .packed-switch 0x7f0b002f
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    sget-boolean v1, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->$assertionsDisabled:Z

    if-nez v1, :cond_d

    const/4 v1, 0x1

    if-eq v1, p1, :cond_d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 134
    :cond_d
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getTextFilter()Ljava/lang/CharSequence;

    move-result-object v0

    .line 135
    .local v0, constraint:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamPickerAdapter;

    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->getSortOrder(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->createLoader(Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/support/v4/content/Loader;

    move-result-object v1

    return-object v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .parameter "inflater"
    .parameter "root"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 61
    .local v0, context:Landroid/content/Context;
    const v2, 0x7f030038

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 62
    .local v1, view:Landroid/view/View;
    new-instance v2, Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    invoke-static {p0, v1, p0, p0}, Lcom/google/android/apps/reader/fragment/ListStateObserver;->forFragment(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v4

    invoke-direct {v2, v0, v3, v6, v4}, Lcom/google/android/apps/reader/fragment/Loadable;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mStreams:Lcom/google/android/apps/reader/fragment/Loadable;

    .line 64
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mStreams:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v2}, Lcom/google/android/apps/reader/fragment/Loadable;->refreshAfterLoading()V

    .line 65
    new-instance v2, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;

    invoke-direct {v2, v0}, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamPickerAdapter;

    .line 67
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mListView:Landroid/widget/ListView;

    .line 68
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mStreams:Lcom/google/android/apps/reader/fragment/Loadable;

    iget-object v4, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamPickerAdapter;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/reader/fragment/Loadable;->filterable(Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    const v2, 0x7f0b0030

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mEmpty:Landroid/widget/TextView;

    .line 70
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mEmpty:Landroid/widget/TextView;

    const v3, 0x7f0d0053

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 72
    if-eqz p3, :cond_5f

    .line 73
    const-string v2, "reader:uri"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mUri:Landroid/net/Uri;

    .line 75
    :cond_5f
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mStreams:Lcom/google/android/apps/reader/fragment/Loadable;

    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_6a

    move v3, v6

    :goto_66
    invoke-virtual {v2, v3}, Lcom/google/android/apps/reader/fragment/Loadable;->initLoaderIf(Z)V

    .line 77
    return-object v1

    :cond_6a
    move v3, v5

    .line 75
    goto :goto_66
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamPickerAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 103
    if-eqz v0, :cond_53

    if-ne v0, v1, :cond_53

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamPickerAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->newIntent(Ljava/lang/String;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 107
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 108
    const-string v5, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 109
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamPickerAdapter;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4, v1}, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->newIntent(Ljava/lang/String;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v3

    .line 110
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 112
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamPickerAdapter;

    invoke-virtual {v3, v1}, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->getShortcutLabel(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 113
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamPickerAdapter;

    invoke-virtual {v3, v1}, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->getShortcutIconResource(Landroid/database/Cursor;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    .line 116
    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 124
    :cond_4c
    :goto_4c
    const/4 v1, -0x1

    invoke-virtual {v2, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 125
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 127
    :cond_53
    return-void

    .line 117
    :cond_54
    const-string v5, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 118
    const-string v4, "appWidgetId"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 120
    iget-object v4, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamPickerAdapter;

    invoke-virtual {v4, v3, v1}, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->configureAppWidget(ILandroid/database/Cursor;)Z

    .line 121
    invoke-direct {p0, v3}, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->updateAppWidget(I)V

    .line 122
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4c
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    sget-boolean v0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 140
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamPickerAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 141
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    sget-boolean v0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 148
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mAdapter:Lcom/google/android/apps/reader/widget/StreamPickerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 149
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 96
    const-string v0, "reader:uri"

    iget-object v1, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 97
    return-void
.end method

.method public refresh()V
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamPickerFragment;->mStreams:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->refresh()V

    .line 207
    return-void
.end method
