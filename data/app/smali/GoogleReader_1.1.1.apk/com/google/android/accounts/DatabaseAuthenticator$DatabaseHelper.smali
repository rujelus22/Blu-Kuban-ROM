.class Lcom/google/android/accounts/DatabaseAuthenticator$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/accounts/DatabaseAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/accounts/DatabaseAuthenticator;


# direct methods
.method constructor <init>(Lcom/google/android/accounts/DatabaseAuthenticator;)V
    .registers 6
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/android/accounts/DatabaseAuthenticator$DatabaseHelper;->this$0:Lcom/google/android/accounts/DatabaseAuthenticator;

    .line 128
    invoke-virtual {p1}, Lcom/google/android/accounts/DatabaseAuthenticator;->getContext()Landroid/content/Context;

    move-result-object v0

    #getter for: Lcom/google/android/accounts/DatabaseAuthenticator;->mDatabaseName:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/accounts/DatabaseAuthenticator;->access$000(Lcom/google/android/accounts/DatabaseAuthenticator;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 129
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 133
    const-string v0, "CREATE TABLE accounts (account_name TEXT NOT NULL, account_type TEXT NOT NULL, password TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 138
    const-string v0, "CREATE TABLE auth_tokens (account_name TEXT NOT NULL, account_type TEXT NOT NULL, auth_token_type TEXT, auth_token TEXT NOT NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    const-string v0, "CREATE TABLE sync_automatically (account_name TEXT NOT NULL, account_type TEXT NOT NULL, authority TEXT NOT NULL, sync_automatically INTEGER NOT NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 154
    const-string v0, "DROP TABLE IF EXISTS accounts"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    const-string v0, "DROP TABLE IF EXISTS auth_tokens"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 156
    const-string v0, "DROP TABLE IF EXISTS sync_automatically"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, p1}, Lcom/google/android/accounts/DatabaseAuthenticator$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 158
    return-void
.end method
