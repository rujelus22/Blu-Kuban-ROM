.class public Lcom/google/googlenav/friend/reporting/c;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/reporting/a;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/reporting/a;Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/googlenav/friend/reporting/c;->a:Lcom/google/googlenav/friend/reporting/a;

    .line 260
    const-string v0, "google_latitude_%s.db"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 261
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/c;->a:Lcom/google/googlenav/friend/reporting/a;

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/a;->a(Lcom/google/googlenav/friend/reporting/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    const-string v0, "DROP TABLE IF EXISTS %s;"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/friend/reporting/c;->a:Lcom/google/googlenav/friend/reporting/a;

    invoke-static {v3}, Lcom/google/googlenav/friend/reporting/a;->b(Lcom/google/googlenav/friend/reporting/a;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/reporting/c;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 282
    return-void
.end method
