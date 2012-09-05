.class public Lcom/google/android/apps/plus/phone/AddedToCircleLoader;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "AddedToCircleLoader.java"


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mCircleActionData:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

.field private final mContext:Landroid/content/Context;

.field private final mNotificationId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "notificationId"
    .parameter "circleActionData"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/AddedToCircleLoader;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/AddedToCircleLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 39
    iput-object p3, p0, Lcom/google/android/apps/plus/phone/AddedToCircleLoader;->mNotificationId:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/google/android/apps/plus/phone/AddedToCircleLoader;->mCircleActionData:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    .line 42
    invoke-virtual {p4}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getGaiaIdCount()I

    move-result v0

    .line 43
    .local v0, count:I
    new-array v3, v0, [Ljava/lang/String;

    .line 44
    .local v3, selectionArgs:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v4, selectionBuilder:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v5, sortOrderBuilder:Ljava/lang/StringBuilder;
    const-string v6, "gaia_id IN ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v6, "(CASE gaia_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const/4 v2, 0x0

    .local v2, i:I
    :goto_26
    if-ge v2, v0, :cond_4d

    .line 50
    invoke-virtual {p4, v2}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getGaiaId(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, gaiaId:Ljava/lang/String;
    aput-object v1, v3, v2

    .line 52
    if-lez v2, :cond_35

    .line 53
    const/16 v6, 0x2c

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    :cond_35
    const-string v6, " ?"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v6, " WHEN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v6, " THEN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 62
    .end local v1           #gaiaId:Ljava/lang/String;
    :cond_4d
    const/16 v6, 0x29

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    const-string v6, " END)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    sget-object v6, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    invoke-static {v6, p2}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/AddedToCircleLoader;->setUri(Landroid/net/Uri;)V

    .line 66
    sget-object v6, Lcom/google/android/apps/plus/fragments/AddedToCircleFragment$AddedToCircleQuery;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/AddedToCircleLoader;->setProjection([Ljava/lang/String;)V

    .line 67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/AddedToCircleLoader;->setSelection(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/AddedToCircleLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 69
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/AddedToCircleLoader;->setSortOrder(Ljava/lang/String;)V

    .line 70
    return-void
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 5

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/AddedToCircleLoader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/AddedToCircleLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/AddedToCircleLoader;->mNotificationId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsPeopleData;->hasCircleActionData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/AddedToCircleLoader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/AddedToCircleLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/AddedToCircleLoader;->mNotificationId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/AddedToCircleLoader;->mCircleActionData:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertCircleActionData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)V

    .line 82
    :cond_17
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->esLoadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
