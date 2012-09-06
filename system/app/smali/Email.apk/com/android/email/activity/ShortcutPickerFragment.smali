.class public abstract Lcom/android/email/activity/ShortcutPickerFragment;
.super Landroid/app/ListFragment;
.source "ShortcutPickerFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;,
        Lcom/android/email/activity/ShortcutPickerFragment$MailboxPickerLoader;,
        Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;,
        Lcom/android/email/activity/ShortcutPickerFragment$AccountPickerLoader;,
        Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final TO_VIEWS:[I


# instance fields
.field private final EMPTY_CALLBACK:Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;

.field private mAdapter:Landroid/widget/SimpleCursorAdapter;

.field mCallback:Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1020014

    aput v2, v0, v1

    sput-object v0, Lcom/android/email/activity/ShortcutPickerFragment;->TO_VIEWS:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 66
    new-instance v0, Lcom/android/email/activity/ShortcutPickerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/ShortcutPickerFragment$1;-><init>(Lcom/android/email/activity/ShortcutPickerFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment;->EMPTY_CALLBACK:Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;

    .line 76
    iget-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment;->EMPTY_CALLBACK:Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;

    iput-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment;->mCallback:Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;

    .line 284
    return-void
.end method


# virtual methods
.method abstract getFromColumns()[Ljava/lang/String;
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPickerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 100
    .local v0, listView:Landroid/widget/ListView;
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 102
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 9
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 82
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 84
    instance-of v0, p1, Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;

    if-eqz v0, :cond_e

    move-object v0, p1

    .line 85
    check-cast v0, Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;

    iput-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment;->mCallback:Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;

    .line 87
    :cond_e
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPickerFragment;->getFromColumns()[Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, fromColumns:[Ljava/lang/String;
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x1090006

    sget-object v5, Lcom/android/email/activity/ShortcutPickerFragment;->TO_VIEWS:[I

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 90
    iget-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ShortcutPickerFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 93
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 4
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 107
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/ShortcutPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 112
    return-void
.end method
