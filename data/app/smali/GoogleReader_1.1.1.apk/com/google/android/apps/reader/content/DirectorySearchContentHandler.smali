.class public Lcom/google/android/apps/reader/content/DirectorySearchContentHandler;
.super Lcom/google/android/feeds/JsonContentHandler;
.source "DirectorySearchContentHandler.java"


# instance fields
.field private final mAccount:Lcom/google/android/accounts/Account;

.field private final mOutput:Landroid/database/MatrixCursor;


# direct methods
.method public constructor <init>(Landroid/database/MatrixCursor;Lcom/google/android/accounts/Account;)V
    .registers 3
    .parameter "cursor"
    .parameter "account"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/feeds/JsonContentHandler;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/apps/reader/content/DirectorySearchContentHandler;->mOutput:Landroid/database/MatrixCursor;

    .line 45
    iput-object p2, p0, Lcom/google/android/apps/reader/content/DirectorySearchContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    .line 46
    return-void
.end method

.method private getContent(Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 14
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/reader/content/DirectorySearchContentHandler;->mOutput:Landroid/database/MatrixCursor;

    .line 66
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->getColumnCount()I

    move-result v1

    .line 67
    const-string v2, "results"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v3, v11

    .line 68
    :goto_e
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_9f

    .line 69
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 70
    const-string v5, "title"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 71
    const-string v6, "streamid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 73
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v7

    move v8, v11

    .line 74
    :goto_36
    if-ge v8, v1, :cond_9b

    .line 75
    invoke-virtual {v0, v8}, Landroid/database/MatrixCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v9

    .line 76
    const-string v10, "_id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4a

    .line 77
    invoke-virtual {v7, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 74
    :goto_47
    add-int/lit8 v8, v8, 0x1

    goto :goto_36

    .line 78
    :cond_4a
    const-string v10, "id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_56

    .line 79
    invoke-virtual {v7, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_47

    .line 80
    :cond_56
    const-string v10, "title"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_62

    .line 81
    invoke-virtual {v7, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_47

    .line 82
    :cond_62
    const-string v10, "account_name"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_72

    .line 83
    iget-object v9, p0, Lcom/google/android/apps/reader/content/DirectorySearchContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v9, v9, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_47

    .line 84
    :cond_72
    const-string v10, "account_type"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_82

    .line 85
    iget-object v9, p0, Lcom/google/android/apps/reader/content/DirectorySearchContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v9, v9, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_47

    .line 87
    :cond_82
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_9b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e

    .line 91
    :cond_9f
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/feeds/FeedLoader;->documentInfo(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getContent(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 50
    const-string v2, "var _DIRECTORY_SEARCH_DATA = "

    .line 51
    .local v2, prefix:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 52
    .local v3, start:I
    if-ne v3, v5, :cond_11

    .line 53
    new-instance v4, Lorg/json/JSONException;

    const-string v5, "Directory search data is missing"

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 55
    :cond_11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 56
    const-string v4, "</script>"

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 57
    .local v1, end:I
    if-ne v1, v5, :cond_26

    .line 58
    new-instance v4, Lorg/json/JSONException;

    const-string v5, "Closing script tag is missing"

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 60
    :cond_26
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, data:Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/content/DirectorySearchContentHandler;->getContent(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method
