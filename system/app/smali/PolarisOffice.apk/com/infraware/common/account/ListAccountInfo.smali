.class public Lcom/infraware/common/account/ListAccountInfo;
.super Ljava/lang/Object;
.source "ListAccountInfo.java"


# static fields
.field private static final ACCOUNT_INFO:Ljava/lang/String; = "ACCOUNT"

.field private static final ACCOUNT_SECTION:Ljava/lang/String; = "ACCOUNT_SETTING"

.field private static final PATH_SETTING_INI_FILE:Ljava/lang/String; = "dvToolbarConfig.ini"


# instance fields
.field private accounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/infraware/common/account/AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private useGoogleDocs:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 3
    .parameter "bLoad"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/common/account/ListAccountInfo;->accounts:Ljava/util/List;

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/common/account/ListAccountInfo;->useGoogleDocs:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/common/account/ListAccountInfo;->accounts:Ljava/util/List;

    .line 23
    if-eqz p1, :cond_15

    .line 24
    invoke-virtual {p0}, Lcom/infraware/common/account/ListAccountInfo;->getAccountValue()Ljava/util/List;

    .line 25
    :cond_15
    return-void
.end method


# virtual methods
.method public addAccount(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "service"
    .parameter "email"
    .parameter "password"

    .prologue
    .line 46
    new-instance v0, Lcom/infraware/common/account/AccountInfo;

    iget-object v1, p0, Lcom/infraware/common/account/ListAccountInfo;->accounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/infraware/common/account/AccountInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 48
    .local v0, info:Lcom/infraware/common/account/AccountInfo;
    iget-object v1, p0, Lcom/infraware/common/account/ListAccountInfo;->accounts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {p0}, Lcom/infraware/common/account/ListAccountInfo;->setAccountValue()V

    .line 51
    return-void
.end method

.method public deleteAccount(I)Z
    .registers 3
    .parameter "index"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/infraware/common/account/ListAccountInfo;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_12

    .line 65
    iget-object v0, p0, Lcom/infraware/common/account/ListAccountInfo;->accounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 67
    invoke-virtual {p0}, Lcom/infraware/common/account/ListAccountInfo;->setAccountValue()V

    .line 68
    const/4 v0, 0x1

    .line 70
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public editAccountPassword(ILjava/lang/String;)Z
    .registers 4
    .parameter "index"
    .parameter "password"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/infraware/common/account/ListAccountInfo;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_18

    .line 55
    iget-object v0, p0, Lcom/infraware/common/account/ListAccountInfo;->accounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/common/account/AccountInfo;

    invoke-virtual {v0, p2}, Lcom/infraware/common/account/AccountInfo;->setPassword(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/infraware/common/account/ListAccountInfo;->setAccountValue()V

    .line 58
    const/4 v0, 0x1

    .line 60
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public getAccountCount()I
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/infraware/common/account/ListAccountInfo;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAccountValue()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/infraware/common/account/AccountInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v10, p0, Lcom/infraware/common/account/ListAccountInfo;->accounts:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 76
    new-instance v1, Lcom/infraware/common/util/ini/IniFile;

    const-string v10, "dvToolbarConfig.ini"

    invoke-direct {v1, v10}, Lcom/infraware/common/util/ini/IniFile;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, iniFile:Lcom/infraware/common/util/ini/IniFile;
    const-string v10, "ACCOUNT_SETTING"

    const-string v11, "ACCOUNT"

    invoke-virtual {v1, v10, v11}, Lcom/infraware/common/util/ini/IniFile;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 80
    .local v9, value:Ljava/lang/String;
    if-nez v9, :cond_19

    .line 81
    iget-object v10, p0, Lcom/infraware/common/account/ListAccountInfo;->accounts:Ljava/util/List;

    .line 126
    :goto_18
    return-object v10

    .line 83
    :cond_19
    const/4 v6, 0x0

    .line 84
    .local v6, strFlag:Ljava/lang/String;
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v10, ":"

    invoke-direct {v8, v9, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .local v8, strToken:Ljava/util/StringTokenizer;
    const/4 v2, 0x0

    .line 90
    .local v2, nAccountCount:I
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_34

    .line 91
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 92
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 95
    :cond_34
    if-nez v2, :cond_39

    .line 96
    iget-object v10, p0, Lcom/infraware/common/account/ListAccountInfo;->accounts:Ljava/util/List;

    goto :goto_18

    .line 98
    :cond_39
    const/4 v3, 0x0

    .line 99
    .local v3, nIndex:I
    const/4 v4, 0x1

    .line 100
    .local v4, nService:I
    const-string v5, ""

    .line 101
    .local v5, strEmail:Ljava/lang/String;
    const-string v7, ""

    .line 103
    .local v7, strPassword:Ljava/lang/String;
    :cond_3f
    :goto_3f
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-nez v10, :cond_48

    .line 126
    iget-object v10, p0, Lcom/infraware/common/account/ListAccountInfo;->accounts:Ljava/util/List;

    goto :goto_18

    .line 104
    :cond_48
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_3f

    .line 107
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 108
    const-string v10, "<skarnd!dbal>"

    const-string v11, ":"

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 110
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_3f

    .line 111
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 113
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 115
    const/4 v10, 0x1

    if-ne v4, v10, :cond_7f

    iget-boolean v10, p0, Lcom/infraware/common/account/ListAccountInfo;->useGoogleDocs:Z

    if-eqz v10, :cond_3f

    .line 118
    :cond_7f
    new-instance v0, Lcom/infraware/common/account/AccountInfo;

    invoke-direct {v0, v3, v4, v5, v7}, Lcom/infraware/common/account/AccountInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v0, info:Lcom/infraware/common/account/AccountInfo;
    iget-object v10, p0, Lcom/infraware/common/account/ListAccountInfo;->accounts:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f
.end method

.method public isAccountExist(ILjava/lang/String;)Z
    .registers 5
    .parameter "service"
    .parameter "email"

    .prologue
    .line 36
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/infraware/common/account/ListAccountInfo;->accounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_b

    .line 42
    const/4 v1, 0x0

    :goto_a
    return v1

    .line 37
    :cond_b
    iget-object v1, p0, Lcom/infraware/common/account/ListAccountInfo;->accounts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/common/account/AccountInfo;

    invoke-virtual {v1}, Lcom/infraware/common/account/AccountInfo;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2d

    .line 38
    iget-object v1, p0, Lcom/infraware/common/account/ListAccountInfo;->accounts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/common/account/AccountInfo;

    invoke-virtual {v1}, Lcom/infraware/common/account/AccountInfo;->getService()I

    move-result v1

    if-ne v1, p1, :cond_2d

    .line 39
    const/4 v1, 0x1

    goto :goto_a

    .line 36
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setAccountValue()V
    .registers 9

    .prologue
    .line 130
    iget-object v6, p0, Lcom/infraware/common/account/ListAccountInfo;->accounts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 132
    .local v3, nCount:I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, strAccount:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-lt v1, v3, :cond_23

    .line 145
    new-instance v2, Lcom/infraware/common/util/ini/IniFile;

    const-string v6, "dvToolbarConfig.ini"

    invoke-direct {v2, v6}, Lcom/infraware/common/util/ini/IniFile;-><init>(Ljava/lang/String;)V

    .line 147
    .local v2, iniFile:Lcom/infraware/common/util/ini/IniFile;
    const-string v6, "ACCOUNT_SETTING"

    const-string v7, "ACCOUNT"

    invoke-virtual {v2, v6, v7, v5}, Lcom/infraware/common/util/ini/IniFile;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/infraware/common/util/ini/IniFile;->setEndFlag(Z)V

    .line 150
    invoke-virtual {v2}, Lcom/infraware/common/util/ini/IniFile;->flushData()V

    .line 151
    return-void

    .line 135
    .end local v2           #iniFile:Lcom/infraware/common/util/ini/IniFile;
    :cond_23
    iget-object v6, p0, Lcom/infraware/common/account/ListAccountInfo;->accounts:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/common/account/AccountInfo;

    .line 137
    .local v0, account:Lcom/infraware/common/account/AccountInfo;
    invoke-virtual {v0}, Lcom/infraware/common/account/AccountInfo;->getPassword()Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, password:Ljava/lang/String;
    const-string v6, ":"

    const-string v7, "<skarnd!dbal>"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/infraware/common/account/AccountInfo;->getEmail()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 142
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/infraware/common/account/AccountInfo;->getService()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 141
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public setUseGoogleDocs(Z)V
    .registers 2
    .parameter "isUse"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/infraware/common/account/ListAccountInfo;->useGoogleDocs:Z

    .line 29
    return-void
.end method
