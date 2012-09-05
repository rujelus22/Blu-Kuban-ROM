.class public Lcom/google/android/apps/plus/phone/PlusOnePeopleLoader;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "PlusOnePeopleLoader.java"


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mPlusOneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "account"
    .parameter "plusOneId"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 33
    iput-object p3, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleLoader;->mPlusOneId:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 14

    .prologue
    const/4 v0, 0x0

    const/4 v12, 0x0

    .line 38
    new-instance v1, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PlusOnePeopleLoader;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {v1, v10, v11, v12, v12}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 39
    .local v1, eso:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    iget-object v10, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleLoader;->mPlusOneId:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPlusOnePeople(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 42
    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPlusOnePeopleResponse()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    move-result-object v7

    .line 43
    .local v7, response:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
    if-eqz v7, :cond_65

    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->hasError()Z

    move-result v10

    if-nez v10, :cond_65

    const/4 v2, 0x1

    .line 45
    .local v2, hasValidData:Z
    :goto_22
    if-eqz v2, :cond_28

    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->getPersonCount()I

    move-result v0

    .line 46
    .local v0, count:I
    :cond_28
    new-array v8, v0, [Ljava/lang/String;

    .line 47
    .local v8, selectionArgs:[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v9, selectionBuilder:Ljava/lang/StringBuilder;
    const-string v10, "gaia_id IN ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    if-eqz v2, :cond_67

    .line 51
    const/4 v3, 0x0

    .line 52
    .local v3, i:I
    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->getPersonList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_3f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_67

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 53
    .local v6, person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    if-lez v3, :cond_52

    .line 54
    const/16 v10, 0x2c

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    :cond_52
    const-string v10, " ?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getGaiaId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v3

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_3f

    .end local v0           #count:I
    .end local v2           #hasValidData:Z
    .end local v3           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    .end local v8           #selectionArgs:[Ljava/lang/String;
    .end local v9           #selectionBuilder:Ljava/lang/StringBuilder;
    :cond_65
    move v2, v0

    .line 43
    goto :goto_22

    .line 61
    .restart local v0       #count:I
    .restart local v2       #hasValidData:Z
    .restart local v8       #selectionArgs:[Ljava/lang/String;
    .restart local v9       #selectionBuilder:Ljava/lang/StringBuilder;
    :cond_67
    const/16 v10, 0x29

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    sget-object v10, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    iget-object v11, p0, Lcom/google/android/apps/plus/phone/PlusOnePeopleLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/google/android/apps/plus/phone/PlusOnePeopleLoader;->setUri(Landroid/net/Uri;)V

    .line 64
    sget-object v10, Lcom/google/android/apps/plus/fragments/PlusOnePeopleFragment$PeopleSetQuery;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/google/android/apps/plus/phone/PlusOnePeopleLoader;->setProjection([Ljava/lang/String;)V

    .line 65
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/google/android/apps/plus/phone/PlusOnePeopleLoader;->setSelection(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/phone/PlusOnePeopleLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, v12}, Lcom/google/android/apps/plus/phone/PlusOnePeopleLoader;->setSortOrder(Ljava/lang/String;)V

    .line 69
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->esLoadInBackground()Landroid/database/Cursor;

    move-result-object v10

    return-object v10
.end method
