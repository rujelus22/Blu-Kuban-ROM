.class final Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$DefaultNameLookupQuery;
.super Ljava/lang/Object;
.source "DefaultVoicemailNotifier.java"

# interfaces
.implements Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NameLookupQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultNameLookupQuery"
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 289
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$DefaultNameLookupQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;)V
    .registers 2
    .parameter "contentResolver"

    .prologue
    .line 294
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$DefaultNameLookupQuery;->mContentResolver:Landroid/content/ContentResolver;

    .line 296
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentResolver;Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$DefaultNameLookupQuery;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method public query(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "number"

    .prologue
    const/4 v7, 0x0

    .line 300
    const/4 v6, 0x0

    .line 302
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$DefaultNameLookupQuery;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$DefaultNameLookupQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 305
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_2f

    move-result v0

    if-nez v0, :cond_24

    .line 308
    if-eqz v6, :cond_22

    .line 309
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_22
    move-object v0, v7

    :cond_23
    :goto_23
    return-object v0

    .line 306
    :cond_24
    const/4 v0, 0x0

    :try_start_25
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2f

    move-result-object v0

    .line 308
    if-eqz v6, :cond_23

    .line 309
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_23

    .line 308
    :catchall_2f
    move-exception v0

    if-eqz v6, :cond_35

    .line 309
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_35
    throw v0
.end method
