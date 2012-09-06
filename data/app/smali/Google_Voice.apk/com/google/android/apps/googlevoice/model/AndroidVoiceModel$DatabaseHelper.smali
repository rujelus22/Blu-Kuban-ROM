.class final Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AndroidVoiceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DatabaseHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 1113
    const-string v0, "model.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 1114
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 9
    .parameter "db"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1118
    const-string v0, "create table %s (%s text, %s blob)"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "conversations"

    aput-object v2, v1, v3

    const-string v2, "conversation_id"

    aput-object v2, v1, v4

    const-string v2, "data"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1120
    const-string v0, "create table %s (%s text, %s blob)"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "labels"

    aput-object v2, v1, v3

    const-string v2, "label"

    aput-object v2, v1, v4

    const-string v2, "data"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1122
    const-string v0, "create table %s (%s text, %s text)"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "conversation_labels"

    aput-object v2, v1, v3

    const-string v2, "label"

    aput-object v2, v1, v4

    const-string v2, "conversation_id"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1125
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 9
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1129
    const-string v0, "drop table %s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "labels"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1130
    const-string v0, "drop table %s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "conversations"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1131
    const-string v0, "drop table %s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "conversation_labels"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1133
    return-void
.end method
