.class Lcom/google/android/music/PlaylistBrowserActivity$NotifyingMatrixCursor;
.super Landroid/database/MatrixCursor;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotifyingMatrixCursor"
.end annotation


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 2
    .parameter "columnNames"

    .prologue
    .line 442
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 443
    return-void
.end method


# virtual methods
.method public addRow(Ljava/lang/Iterable;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 447
    .local p1, columnValues:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-super {p0, p1}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 448
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlaylistBrowserActivity$NotifyingMatrixCursor;->onChange(Z)V

    .line 449
    return-void
.end method
