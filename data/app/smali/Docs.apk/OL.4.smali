.class public LOL;
.super Ljava/lang/Object;
.source "MetadataHelper.java"


# instance fields
.field private final a:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 2
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, LOL;->a:Landroid/content/ContentResolver;

    .line 19
    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 64
    iget-object v0, p0, LOL;->a:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_19

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_19

    move-object v3, v0

    .line 68
    :cond_19
    return-object v3
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/lang/String;I)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    :try_start_0
    invoke-direct {p0, p1, p2}, LOL;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 24
    if-eqz v1, :cond_f

    .line 25
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 26
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    move p3, v0

    .line 32
    :cond_f
    :goto_f
    return p3

    .line 29
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;J)J
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    :try_start_0
    invoke-direct {p0, p1, p2}, LOL;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 38
    if-eqz v2, :cond_f

    .line 39
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 40
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    move-wide p3, v0

    .line 46
    :cond_f
    :goto_f
    return-wide p3

    .line 43
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    :try_start_0
    invoke-direct {p0, p1, p2}, LOL;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 52
    if-eqz v1, :cond_f

    .line 53
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    move-object p3, v0

    .line 60
    :cond_f
    :goto_f
    return-object p3

    .line 57
    :catch_10
    move-exception v0

    goto :goto_f
.end method
