.class public Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "PublicProfileSearchLoader.java"


# static fields
.field public static final ABORTED:Landroid/database/MatrixCursor;


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mIncludePlusPages:Z

.field private final mMinQueryLength:I

.field private volatile mOperation:Lcom/google/android/apps/plus/api/TacoTruckOperation;

.field private final mProjection:[Ljava/lang/String;

.field private final mQuery:Ljava/lang/String;

.field private final mToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->ABORTED:Landroid/database/MatrixCursor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "projection"
    .parameter "query"
    .parameter "minQueryLength"
    .parameter "includePlusPages"
    .parameter "token"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mIncludePlusPages:Z

    .line 60
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 61
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mProjection:[Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mQuery:Ljava/lang/String;

    .line 63
    iput p5, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mMinQueryLength:I

    .line 64
    iput-boolean p6, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mIncludePlusPages:Z

    .line 65
    iput-object p7, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mToken:Ljava/lang/String;

    .line 66
    return-void
.end method

.method private abort()V
    .registers 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mOperation:Lcom/google/android/apps/plus/api/TacoTruckOperation;

    .line 165
    .local v0, op:Lcom/google/android/apps/plus/network/HttpOperation;
    if-eqz v0, :cond_7

    .line 166
    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/HttpOperation;->abort()V

    .line 168
    :cond_7
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mOperation:Lcom/google/android/apps/plus/api/TacoTruckOperation;

    .line 169
    return-void
.end method


# virtual methods
.method public cancelLoad()Z
    .registers 2

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->abort()V

    .line 152
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->cancelLoad()Z

    move-result v0

    return v0
.end method

.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 16

    .prologue
    .line 77
    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mQuery:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_12

    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mQuery:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    iget v12, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mMinQueryLength:I

    if-ge v11, v12, :cond_1a

    .line 78
    :cond_12
    new-instance v1, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mProjection:[Ljava/lang/String;

    invoke-direct {v1, v11}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 143
    :cond_19
    :goto_19
    return-object v1

    .line 81
    :cond_1a
    new-instance v4, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v4, v11, v12, v13, v14}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 82
    .local v4, op:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mQuery:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mIncludePlusPages:Z

    iget-object v13, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mToken:Ljava/lang/String;

    invoke-virtual {v4, v11, v12, v13}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->searchPeople(Ljava/lang/String;ZLjava/lang/String;)V

    .line 84
    iput-object v4, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mOperation:Lcom/google/android/apps/plus/api/TacoTruckOperation;

    .line 86
    :try_start_32
    invoke-virtual {v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 87
    invoke-virtual {v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->isAborted()Z

    move-result v11

    if-eqz v11, :cond_46

    .line 88
    sget-object v1, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->ABORTED:Landroid/database/MatrixCursor;
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_41

    .line 91
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mOperation:Lcom/google/android/apps/plus/api/TacoTruckOperation;

    goto :goto_19

    :catchall_41
    move-exception v11

    const/4 v12, 0x0

    iput-object v12, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mOperation:Lcom/google/android/apps/plus/api/TacoTruckOperation;

    throw v11

    :cond_46
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mOperation:Lcom/google/android/apps/plus/api/TacoTruckOperation;

    .line 94
    invoke-virtual {v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v11

    if-eqz v11, :cond_7a

    .line 95
    const-string v11, "PublicProfileSearch"

    const/4 v12, 0x4

    invoke-static {v11, v12}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_78

    .line 96
    const-string v11, "PublicProfileSearch"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    People search interrupted due to exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    :cond_78
    const/4 v1, 0x0

    goto :goto_19

    .line 100
    :cond_7a
    invoke-virtual {v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->hasError()Z

    move-result v11

    if-eqz v11, :cond_bc

    .line 101
    const-string v11, "PublicProfileSearch"

    const/4 v12, 0x4

    invoke-static {v11, v12}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_b9

    .line 102
    const-string v11, "PublicProfileSearch"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    People search interrupted due to error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getErrorCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getReasonPhrase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_b9
    const/4 v1, 0x0

    goto/16 :goto_19

    .line 108
    :cond_bc
    new-instance v1, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mProjection:[Ljava/lang/String;

    invoke-direct {v1, v11}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 110
    .local v1, cursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    invoke-virtual {v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPeopleSearchResult()Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;

    move-result-object v7

    .line 112
    .local v7, results:Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;
    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->getShownPeopleBlob()Ljava/lang/String;

    move-result-object v10

    .line 113
    .local v10, token:Ljava/lang/String;
    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mProjection:[Ljava/lang/String;

    array-length v11, v11

    new-array v2, v11, [Ljava/lang/Object;

    .line 114
    .local v2, firstRow:[Ljava/lang/Object;
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mToken:Ljava/lang/String;

    aput-object v12, v2, v11

    .line 115
    const/4 v11, 0x1

    aput-object v10, v2, v11

    .line 116
    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 118
    const/4 v9, 0x0

    .local v9, rowIndex:I
    :goto_dc
    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->getPeopleResultCount()I

    move-result v11

    if-ge v9, v11, :cond_19

    .line 119
    invoke-virtual {v7, v9}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResults;->getPeopleResult(I)Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;

    move-result-object v6

    .line 120
    .local v6, result:Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->getPerson()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v5

    .line 121
    .local v5, person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    if-nez v5, :cond_ef

    .line 118
    :goto_ec
    add-int/lit8 v9, v9, 0x1

    goto :goto_dc

    .line 125
    :cond_ef
    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mProjection:[Ljava/lang/String;

    array-length v11, v11

    new-array v8, v11, [Ljava/lang/Object;

    .line 126
    .local v8, row:[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_f5
    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mProjection:[Ljava/lang/String;

    array-length v11, v11

    if-ge v3, v11, :cond_162

    .line 127
    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mProjection:[Ljava/lang/String;

    aget-object v0, v11, v3

    .line 128
    .local v0, column:Ljava/lang/String;
    const-string v11, "_id"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10f

    .line 129
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v3

    .line 126
    :cond_10c
    :goto_10c
    add-int/lit8 v3, v3, 0x1

    goto :goto_f5

    .line 130
    :cond_10f
    const-string v11, "gaia_id"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_122

    .line 131
    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getGaiaId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v3

    goto :goto_10c

    .line 132
    :cond_122
    const-string v11, "person_id"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_144

    .line 133
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "g:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getGaiaId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v3

    goto :goto_10c

    .line 134
    :cond_144
    const-string v11, "name"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_153

    .line 135
    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v3

    goto :goto_10c

    .line 136
    :cond_153
    const-string v11, "snippet"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10c

    .line 137
    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$PeopleResult;->getSnippetHtml()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v3

    goto :goto_10c

    .line 140
    .end local v0           #column:Ljava/lang/String;
    :cond_162
    invoke-virtual {v1, v8}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_ec
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public onAbandon()V
    .registers 1

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/PublicProfileSearchLoader;->abort()V

    .line 161
    return-void
.end method
