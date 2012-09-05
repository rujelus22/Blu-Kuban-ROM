.class public Lcom/google/android/apps/plus/fragments/PublicIdLoader;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "PublicIdLoader.java"


# static fields
.field private static final PUBLIC_ID_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mPublicId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "person_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gaia_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "in_my_circles"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/fragments/PublicIdLoader;->PUBLIC_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "account"
    .parameter "publicId"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/PublicIdLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 46
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/PublicIdLoader;->mPublicId:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 14

    .prologue
    const/4 v12, 0x6

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PublicIdLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PublicIdLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/fragments/PublicIdLoader;->PUBLIC_ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "public_id=?"

    new-array v4, v10, [Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PublicIdLoader;->mPublicId:Ljava/lang/String;

    aput-object v6, v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 61
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_29

    .line 94
    .end local v8           #cursor:Landroid/database/Cursor;
    :goto_28
    return-object v8

    .line 66
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_29
    const/4 v7, 0x0

    .line 67
    .local v7, contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    new-instance v1, Lcom/google/android/apps/plus/api/GetContactByPublicNameOperation;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PublicIdLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PublicIdLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PublicIdLoader;->mPublicId:Ljava/lang/String;

    move-object v6, v5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/plus/api/GetContactByPublicNameOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 69
    .local v1, op:Lcom/google/android/apps/plus/api/GetContactByPublicNameOperation;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/GetContactByPublicNameOperation;->start()V

    .line 70
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/GetContactByPublicNameOperation;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_a1

    .line 71
    const-string v0, "PublicIdLoader"

    invoke-static {v0, v12}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 72
    const-string v0, "PublicIdLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot resolve public name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PublicIdLoader;->mPublicId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/GetContactByPublicNameOperation;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    :cond_67
    :goto_67
    if-eqz v7, :cond_df

    .line 84
    new-instance v9, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    sget-object v0, Lcom/google/android/apps/plus/fragments/PublicIdLoader;->PUBLIC_ID_PROJECTION:[Ljava/lang/String;

    invoke-direct {v9, v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 85
    .local v9, matrixCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v11

    invoke-virtual {v7}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v10

    const/4 v0, 0x2

    invoke-virtual {v7}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x3

    invoke-virtual {v7}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getCircleIdCount()I

    move-result v0

    if-eqz v0, :cond_dd

    move v0, v10

    :goto_96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v9, v2}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v8, v9

    .line 91
    goto :goto_28

    .line 75
    .end local v9           #matrixCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    :cond_a1
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/GetContactByPublicNameOperation;->hasError()Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 76
    const-string v0, "PublicIdLoader"

    invoke-static {v0, v12}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 77
    const-string v0, "PublicIdLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot resolve public name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PublicIdLoader;->mPublicId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/GetContactByPublicNameOperation;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 80
    :cond_d8
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/GetContactByPublicNameOperation;->getContact()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v7

    goto :goto_67

    .restart local v9       #matrixCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    :cond_dd
    move v0, v11

    .line 85
    goto :goto_96

    .end local v9           #matrixCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    :cond_df
    move-object v8, v5

    .line 94
    goto/16 :goto_28
.end method
