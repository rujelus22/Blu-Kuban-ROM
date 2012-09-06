.class Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursorFactory;
.super Ljava/lang/Object;
.source "HostedProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProfileMergeCursorFactory"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 529
    sget-object v0, Lcom/google/android/apps/plus/phone/StreamAdapter$StreamQuery;->PROJECTION_STREAM:[Ljava/lang/String;

    array-length v0, v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_f

    .line 530
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Update the ProfileMergeCursorFactory!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_f
    return-void
.end method

.method public static getInstance(Landroid/database/Cursor;)Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;
    .registers 12
    .parameter "streamCursor"

    .prologue
    const/16 v10, 0x18

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 538
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_89

    .line 539
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, continuationToken:Ljava/lang/String;
    :goto_10
    new-instance v2, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v7}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 545
    .local v2, profileCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    const/16 v4, 0x19

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v6, v3, v8

    aput-object v6, v3, v7

    aput-object v6, v3, v9

    const/4 v4, 0x3

    aput-object v6, v3, v4

    const/4 v4, 0x4

    aput-object v6, v3, v4

    const/4 v4, 0x5

    aput-object v6, v3, v4

    const/4 v4, 0x6

    aput-object v6, v3, v4

    const/4 v4, 0x7

    aput-object v6, v3, v4

    const/16 v4, 0x8

    aput-object v6, v3, v4

    const/16 v4, 0x9

    aput-object v6, v3, v4

    const/16 v4, 0xa

    aput-object v6, v3, v4

    const/16 v4, 0xb

    aput-object v6, v3, v4

    const/16 v4, 0xc

    aput-object v6, v3, v4

    const/16 v4, 0xd

    aput-object v6, v3, v4

    const/16 v4, 0xe

    aput-object v6, v3, v4

    const/16 v4, 0xf

    aput-object v6, v3, v4

    const/16 v4, 0x10

    aput-object v6, v3, v4

    const/16 v4, 0x11

    aput-object v6, v3, v4

    const/16 v4, 0x12

    aput-object v6, v3, v4

    const/16 v4, 0x13

    aput-object v6, v3, v4

    const/16 v4, 0x14

    aput-object v6, v3, v4

    const/16 v4, 0x15

    aput-object v6, v3, v4

    const/16 v4, 0x16

    const/16 v5, 0x100

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x17

    aput-object v6, v3, v4

    aput-object v0, v3, v10

    .line 572
    .local v3, values:[Ljava/lang/Object;
    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 573
    new-array v1, v9, [Landroid/database/Cursor;

    aput-object v2, v1, v8

    aput-object p0, v1, v7

    .line 574
    .local v1, cursors:[Landroid/database/Cursor;
    new-instance v4, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;

    invoke-direct {v4, v1}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$ProfileMergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v4

    .line 542
    .end local v0           #continuationToken:Ljava/lang/String;
    .end local v1           #cursors:[Landroid/database/Cursor;
    .end local v2           #profileCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    .end local v3           #values:[Ljava/lang/Object;
    :cond_89
    const/4 v0, 0x0

    .restart local v0       #continuationToken:Ljava/lang/String;
    goto :goto_10
.end method
