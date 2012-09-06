.class public final Lcom/twitter/android/provider/bg;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/provider/bg;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v6, "current_account"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/provider/f;->a:Landroid/net/Uri;

    sget-object v2, Lcom/twitter/android/provider/bg;->a:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v6, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_23
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_26
    return-object v5
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 8

    const-string v0, "current_account"

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "value"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/twitter/android/provider/a;->a(Ljava/lang/String;Landroid/content/ContentValues;)I

    const-string v0, "current_user_id"

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "value"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p0}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/twitter/android/provider/a;->a(Ljava/lang/String;Landroid/content/ContentValues;)I

    return-void
.end method

.method public static b(Landroid/content/Context;)J
    .registers 8

    const/4 v6, 0x0

    const-string v5, "current_user_id"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/provider/f;->a:Landroid/net/Uri;

    sget-object v2, Lcom/twitter/android/provider/bg;->a:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const-wide/16 v0, 0x0

    if-eqz v2, :cond_28

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :cond_25
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_28
    return-wide v0
.end method
