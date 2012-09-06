.class abstract Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog;
.super Lcom/google/android/apps/reader/dialog/DataDialog;
.source "MarkAllAsReadDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog$1;,
        Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog$QueryHandler;
    }
.end annotation


# instance fields
.field private mQueryHandler:Landroid/content/AsyncQueryHandler;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/reader/dialog/DataDialog;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method protected final markAllAsRead(J)V
    .registers 9
    .parameter "offset"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog;->mData:Landroid/net/Uri;

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->markAllAsRead(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;J)V

    .line 42
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/dialog/DataDialog;->onCreate(Landroid/os/Bundle;)V

    .line 37
    new-instance v0, Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog$QueryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog$QueryHandler;-><init>(Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog;Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog$1;)V

    iput-object v0, p0, Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 38
    return-void
.end method
