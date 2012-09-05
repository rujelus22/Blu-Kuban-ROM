.class public Lcom/sprint/dsa/data/ReportContentProvider;
.super Landroid/content/ContentProvider;
.source "ReportContentProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field protected static final MATCH_REPORT:I = 0x1

.field public static final MIME_REPORT_DIR:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.sprint.dsa.report"

.field public static final MIME_REPORT_ITEM:Ljava/lang/String; = "vnd.android.cursor.item/vnd.sprint.dsa.report"

.field private static final TAG:Ljava/lang/String; = "SprintZone:ReportContentProvider"

.field protected static sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field protected mDB:Lcom/sprint/dsa/data/DbAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28
    const-class v0, Lcom/sprint/dsa/data/ReportContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/dsa/data/ReportContentProvider;->AUTHORITY:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sprint/dsa/data/ReportContentProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sprint/dsa/data/ReportContentProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 39
    invoke-static {}, Lcom/sprint/dsa/data/ReportContentProvider;->createUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lcom/sprint/dsa/data/ReportContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/dsa/data/ReportContentProvider;->mDB:Lcom/sprint/dsa/data/DbAdapter;

    .line 24
    return-void
.end method

.method protected static createUriMatcher()Landroid/content/UriMatcher;
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 90
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 92
    .local v0, matcher:Landroid/content/UriMatcher;
    sget-object v1, Lcom/sprint/dsa/data/ReportContentProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    sget-object v1, Lcom/sprint/dsa/data/ReportContentProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 51
    sget-object v0, Lcom/sprint/dsa/data/ReportContentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 52
    const-string v0, "vnd.android.cursor.dir/vnd.sprint.dsa.report"

    .line 54
    :goto_a
    return-object v0

    :cond_b
    const-string v0, "vnd.android.cursor.item/vnd.sprint.dsa.report"

    goto :goto_a
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 61
    iget-object v2, p0, Lcom/sprint/dsa/data/ReportContentProvider;->mDB:Lcom/sprint/dsa/data/DbAdapter;

    if-nez v2, :cond_14

    .line 62
    new-instance v2, Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {p0}, Lcom/sprint/dsa/data/ReportContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sprint/dsa/data/DbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sprint/dsa/data/ReportContentProvider;->mDB:Lcom/sprint/dsa/data/DbAdapter;

    .line 63
    iget-object v2, p0, Lcom/sprint/dsa/data/ReportContentProvider;->mDB:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->open()Lcom/sprint/dsa/data/DbAdapter;

    .line 66
    :cond_14
    iget-object v2, p0, Lcom/sprint/dsa/data/ReportContentProvider;->mDB:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v2, p2}, Lcom/sprint/dsa/data/DbAdapter;->insertReport(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 67
    .local v0, id:J
    sget-object v2, Lcom/sprint/dsa/data/ReportContentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
