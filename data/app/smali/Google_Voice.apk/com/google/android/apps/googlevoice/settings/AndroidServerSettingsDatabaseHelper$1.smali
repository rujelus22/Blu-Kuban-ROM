.class Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper$1;
.super Ljava/lang/Object;
.source "AndroidServerSettingsDatabaseHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;->saveToDatabase(Lcom/google/android/apps/googlevoice/model/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;

.field final synthetic val$serializedSettings:[B


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;[B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper$1;->this$0:Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper$1;->val$serializedSettings:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper$1;->this$0:Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper$1;->val$serializedSettings:[B

    #calls: Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;->writeToDatabase(Landroid/database/sqlite/SQLiteOpenHelper;[B)V
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;->access$000(Landroid/database/sqlite/SQLiteOpenHelper;[B)V

    .line 90
    return-void
.end method
