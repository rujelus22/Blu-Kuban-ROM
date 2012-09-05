.class public Lcom/android/task/TaskAccount;
.super Ljava/lang/Object;
.source "TaskAccount.java"


# static fields
.field private static mTaskColors:[I


# instance fields
.field public Selected:I

.field public id:I

.field public key:I

.field public name:Ljava/lang/String;

.field public syncAccount:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v1, p0, Lcom/android/task/TaskAccount;->id:I

    .line 21
    iput-object v0, p0, Lcom/android/task/TaskAccount;->syncAccount:Ljava/lang/String;

    .line 22
    iput v1, p0, Lcom/android/task/TaskAccount;->key:I

    .line 23
    iput-object v0, p0, Lcom/android/task/TaskAccount;->type:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/android/task/TaskAccount;->url:Ljava/lang/String;

    .line 25
    iput v1, p0, Lcom/android/task/TaskAccount;->Selected:I

    .line 26
    iput-object v0, p0, Lcom/android/task/TaskAccount;->name:Ljava/lang/String;

    .line 29
    const-string v0, "TaskAccount"

    const-string v1, "======== TaskAccount() ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method

.method public static contructAccounts(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .registers 7
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/task/TaskAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v1, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/task/TaskAccount;>;"
    const-string v3, "SANDEEP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In construct accounts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v2, 0x0

    .line 56
    .local v2, colIndex:I
    :goto_22
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 57
    new-instance v0, Lcom/android/task/TaskAccount;

    invoke-direct {v0}, Lcom/android/task/TaskAccount;-><init>()V

    .line 58
    .local v0, account:Lcom/android/task/TaskAccount;
    const-string v3, "_id"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 59
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/android/task/TaskAccount;->id:I

    .line 60
    const-string v3, "_sync_account"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 61
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/task/TaskAccount;->syncAccount:Ljava/lang/String;

    .line 62
    const-string v3, "_sync_account_key"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 63
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/android/task/TaskAccount;->key:I

    .line 64
    const-string v3, "_sync_account_type"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 65
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/task/TaskAccount;->type:Ljava/lang/String;

    .line 66
    const-string v3, "url"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 67
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/task/TaskAccount;->url:Ljava/lang/String;

    .line 68
    const-string v3, "selected"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 69
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/android/task/TaskAccount;->Selected:I

    .line 70
    const-string v3, "displayName"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 71
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/task/TaskAccount;->name:Ljava/lang/String;

    .line 72
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 75
    .end local v0           #account:Lcom/android/task/TaskAccount;
    :cond_85
    return-object v1
.end method

.method public static getAccounts(Landroid/content/ContentResolver;)Ljava/util/ArrayList;
    .registers 4
    .parameter "contentResolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/task/TaskAccount;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 42
    const-string v2, "_id"

    invoke-static {p0, v0, v0, v2}, Lcom/android/task/Tasks$TasksAccounts;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 43
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_f

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_10

    .line 49
    :cond_f
    :goto_f
    return-object v0

    .line 46
    :cond_10
    invoke-static {v1}, Lcom/android/task/TaskAccount;->contructAccounts(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    .line 47
    .local v0, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/task/TaskAccount;>;"
    if-eqz v1, :cond_f

    .line 48
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_f
.end method

.method public static getTaskColor(Landroid/content/Context;I)I
    .registers 4
    .parameter "context"
    .parameter "key"

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/task/TaskAccount;->initAccountColor(Landroid/content/res/Resources;)V

    .line 109
    if-gtz p1, :cond_f

    .line 110
    sget-object v0, Lcom/android/task/TaskAccount;->mTaskColors:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 112
    :goto_e
    return v0

    :cond_f
    sget-object v0, Lcom/android/task/TaskAccount;->mTaskColors:[I

    rem-int/lit8 v1, p1, 0x13

    aget v0, v0, v1

    goto :goto_e
.end method

.method public static initAccountColor(Landroid/content/res/Resources;)V
    .registers 4
    .parameter "resources"

    .prologue
    .line 80
    sget-object v0, Lcom/android/task/TaskAccount;->mTaskColors:[I

    if-nez v0, :cond_f9

    .line 81
    const/16 v0, 0x13

    new-array v0, v0, [I

    sput-object v0, Lcom/android/task/TaskAccount;->mTaskColors:[I

    .line 83
    sget-object v0, Lcom/android/task/TaskAccount;->mTaskColors:[I

    const/4 v1, 0x0

    const v2, 0x7f07000d

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 84
    sget-object v0, Lcom/android/task/TaskAccount;->mTaskColors:[I

    const/4 v1, 0x1

    const v2, 0x7f07000e

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 85
    sget-object v0, Lcom/android/task/TaskAccount;->mTaskColors:[I

    const/4 v1, 0x2

    const v2, 0x7f07000f

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 86
    sget-object v0, Lcom/android/task/TaskAccount;->mTaskColors:[I

    const/4 v1, 0x3

    const v2, 0x7f070010

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 87
    sget-object v0, Lcom/android/task/TaskAccount;->mTaskColors:[I

    const/4 v1, 0x4

    const v2, 0x7f070011

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 88
    sget-object v0, Lcom/android/task/TaskAccount;->mTaskColors:[I

    const/4 v1, 0x5

    const v2, 0x7f070012

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 89
    sget-object v0, Lcom/android/task/TaskAccount;->mTaskColors:[I

    const/4 v1, 0x6

    const v2, 0x7f070013

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 90
    sget-object v0, Lcom/android/task/TaskAccount;->mTaskColors:[I

    const/4 v1, 0x7

    const v2, 0x7f070014

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 91
    sget-object v0, Lcom/android/task/TaskAccount;->mTaskColors:[I

    const/16 v1, 0x8

    const v2, 0x7f070015

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 92
    sget-object v0, Lcom/android/task/TaskAccount;->mTaskColors:[I

    const/16 v1, 0x9

    const v2, 0x7f070016

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 93
    sget-object v0, Lcom/android/task/TaskAccount;->mTaskColors:[I

    const/16 v1, 0xa

    const v2, 0x7f070017

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 94
    sget-object v0, Lcom/android/task/TaskAccount;->mTaskColors:[I

    const/16 v1, 0xb

    const v2, 0x7f070018

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 95
    sget-object v0, Lcom/android/task/TaskAccount;->mTaskColors:[I

    const/16 v1, 0xc

    const v2, 0x7f070019

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 96
    sget-object v0, Lcom/android/task/TaskAccount;->mTaskColors:[I

    const/16 v1, 0xd

    const v2, 0x7f07001a

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 97
    sget-object v0, Lcom/android/task/TaskAccount;->mTaskColors:[I

    const/16 v1, 0xe

    const v2, 0x7f07001b

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 98
    sget-object v0, Lcom/android/task/TaskAccount;->mTaskColors:[I

    const/16 v1, 0xf

    const v2, 0x7f07001c

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 99
    sget-object v0, Lcom/android/task/TaskAccount;->mTaskColors:[I

    const/16 v1, 0x10

    const v2, 0x7f07001d

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 100
    sget-object v0, Lcom/android/task/TaskAccount;->mTaskColors:[I

    const/16 v1, 0x11

    const v2, 0x7f07001e

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 101
    sget-object v0, Lcom/android/task/TaskAccount;->mTaskColors:[I

    const/16 v1, 0x12

    const v2, 0x7f07001f

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 104
    :cond_f9
    return-void
.end method
