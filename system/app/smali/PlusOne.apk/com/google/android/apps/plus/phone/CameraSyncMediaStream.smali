.class public Lcom/google/android/apps/plus/phone/CameraSyncMediaStream;
.super Lcom/google/android/apps/plus/phone/CursorMediaStream;
.source "CameraSyncMediaStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/CameraSyncMediaStream$CameraSyncRow;,
        Lcom/google/android/apps/plus/phone/CameraSyncMediaStream$CameraSyncQuery;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4
    .parameter "context"
    .parameter "baseContentUri"

    .prologue
    .line 68
    const/16 v0, 0x32

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/phone/CursorMediaStream;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 69
    return-void
.end method


# virtual methods
.method protected createCursor(I)Landroid/database/Cursor;
    .registers 8
    .parameter "newOffset"

    .prologue
    .line 76
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/apps/plus/phone/CameraSyncMediaStream;->mOffset:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/apps/plus/phone/CameraSyncMediaStream;->mOffset:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 78
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CameraSyncMediaStream;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CameraSyncMediaStream;->mBaseContentUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/apps/plus/phone/CameraSyncMediaStream$CameraSyncQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "timestamp desc limit ?,?"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected createRow(Landroid/database/Cursor;)Lcom/google/android/apps/plus/phone/MediaStream$Row;
    .registers 3
    .parameter "cursor"

    .prologue
    .line 89
    #calls: Lcom/google/android/apps/plus/phone/CameraSyncMediaStream$CameraSyncRow;->fromCursor(Landroid/database/Cursor;)Lcom/google/android/apps/plus/phone/CameraSyncMediaStream$CameraSyncRow;
    invoke-static {p1}, Lcom/google/android/apps/plus/phone/CameraSyncMediaStream$CameraSyncRow;->access$000(Landroid/database/Cursor;)Lcom/google/android/apps/plus/phone/CameraSyncMediaStream$CameraSyncRow;

    move-result-object v0

    return-object v0
.end method
