.class public Lcom/android/settings/mt/MTContentProvider;
.super Landroid/content/ContentProvider;
.source "MTContentProvider.java"


# static fields
.field private static final ALL_COL:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private configSettings:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 22
    const-string v0, "content://com.android.settings.mt.provider.MTContentProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/mt/MTContentProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "messageStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "BootFlag"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/mt/MTContentProvider;->ALL_COL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 4

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/settings/mt/MTContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sharedPreference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/mt/MTContentProvider;->configSettings:Landroid/content/SharedPreferences;

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 65
    if-nez p2, :cond_4

    .line 66
    sget-object p2, Lcom/android/settings/mt/MTContentProvider;->ALL_COL:[Ljava/lang/String;

    .line 68
    :cond_4
    new-instance v3, Landroid/database/MatrixCursor;

    array-length v6, p2

    invoke-direct {v3, p2, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 69
    .local v3, cursor:Landroid/database/MatrixCursor;
    new-instance v2, Ljava/util/ArrayList;

    array-length v6, p2

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    .local v2, columnValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_13
    if-ge v4, v5, :cond_24

    aget-object v1, v0, v4

    .line 72
    .local v1, columnName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/mt/MTContentProvider;->configSettings:Landroid/content/SharedPreferences;

    const/4 v7, 0x0

    invoke-interface {v6, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 74
    .end local v1           #columnName:Ljava/lang/String;
    :cond_24
    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 75
    return-object v3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method
