.class public final Lcom/dropbox/android/provider/E;
.super Ljava/lang/Object;
.source "panda.py"


# direct methods
.method public static a(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_separator"

    aput-object v1, v0, v4

    .line 14
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p0, v1, v4

    .line 15
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 16
    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 17
    return-object v2
.end method

.method public static b(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_up_folder"

    aput-object v1, v0, v4

    .line 22
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p0, v1, v4

    .line 23
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 24
    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 25
    return-object v2
.end method
