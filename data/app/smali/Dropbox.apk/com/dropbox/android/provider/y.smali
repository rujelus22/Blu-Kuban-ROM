.class final enum Lcom/dropbox/android/provider/y;
.super Lcom/dropbox/android/provider/w;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/android/provider/w;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/android/provider/v;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)I
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 72
    invoke-static {p5}, Ldbxyzptlk/j/m;->b(Landroid/content/Context;)Ldbxyzptlk/j/m;

    move-result-object v3

    .line 75
    const-string v0, "enabled"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 76
    const-string v4, "use3g"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 78
    if-eqz v0, :cond_54

    .line 79
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_50

    move v0, v1

    :goto_1b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v3}, Ldbxyzptlk/j/m;->f()Z

    move-result v6

    if-eq v5, v6, :cond_30

    .line 81
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0, p5}, Lcom/dropbox/android/service/CameraUploadService;->a(ZLandroid/content/Context;)V

    :cond_30
    move v0, v1

    .line 86
    :goto_31
    if-eqz v4, :cond_52

    .line 87
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_3a

    move v2, v1

    :cond_3a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3}, Ldbxyzptlk/j/m;->p()Z

    move-result v3

    if-eq v2, v3, :cond_4f

    .line 89
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0, p5}, Lcom/dropbox/android/service/CameraUploadService;->b(ZLandroid/content/Context;)V

    .line 94
    :cond_4f
    :goto_4f
    return v1

    :cond_50
    move v0, v2

    .line 79
    goto :goto_1b

    :cond_52
    move v1, v0

    goto :goto_4f

    :cond_54
    move v0, v2

    goto :goto_31
.end method

.method public final a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/database/Cursor;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-static {p6}, Ldbxyzptlk/j/m;->b(Landroid/content/Context;)Ldbxyzptlk/j/m;

    move-result-object v3

    .line 60
    new-instance v4, Landroid/database/MatrixCursor;

    new-array v0, v6, [Ljava/lang/String;

    const-string v5, "enabled"

    aput-object v5, v0, v2

    const-string v5, "use3g"

    aput-object v5, v0, v1

    invoke-direct {v4, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 61
    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Ldbxyzptlk/j/m;->f()Z

    move-result v0

    if-eqz v0, :cond_36

    move v0, v1

    :goto_1f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {v3}, Ldbxyzptlk/j/m;->p()Z

    move-result v0

    if-eqz v0, :cond_2c

    move v2, v1

    :cond_2c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 62
    return-object v4

    :cond_36
    move v0, v2

    .line 61
    goto :goto_1f
.end method

.method public final a(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/content/Context;)Landroid/net/Uri;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method
