.class public final Lcom/google/android/gsf/TalkContract$Account;
.super Ljava/lang/Object;
.source "TalkContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/google/android/gsf/TalkContract$AccountColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/TalkContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Account"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/gtalk-accounts"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/gtalk-accounts"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field private static final PROVIDER_COLUMN:I

.field private static final PROVIDER_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 254
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "provider"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/TalkContract$Account;->PROVIDER_PROJECTION:[Ljava/lang/String;

    .line 260
    const-string v0, "content://com.google.android.providers.talk/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getProviderIdForAccount(Landroid/content/ContentResolver;J)J
    .registers 12
    .parameter "cr"
    .parameter "accountId"

    .prologue
    const/4 v4, 0x0

    .line 235
    sget-object v1, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/TalkContract$Account;->PROVIDER_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 241
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v7, 0x0

    .line 244
    .local v7, providerId:J
    :try_start_20
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 245
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2f

    move-result-wide v7

    .line 248
    :cond_2b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 251
    return-wide v7

    .line 248
    :catchall_2f
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
