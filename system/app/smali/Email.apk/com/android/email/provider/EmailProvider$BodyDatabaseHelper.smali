.class Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BodyDatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/provider/EmailProvider;


# direct methods
.method constructor <init>(Lcom/android/email/provider/EmailProvider;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "name"

    .prologue
    .line 1698
    iput-object p1, p0, Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    .line 1699
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 1700
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 1704
    const-string v0, "EmailProvider"

    const-string v1, "Creating EmailProviderBody database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createBodyTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1706
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 1715
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 1710
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->upgradeBodyTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1711
    return-void
.end method
