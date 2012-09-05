.class public Lcom/sec/android/widgetapp/apnews/engine/CPOrder;
.super Ljava/lang/Object;
.source "CPOrder.java"


# instance fields
.field private mCtx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "ctx"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/engine/CPOrder;->mCtx:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public getCPCheck(Ljava/lang/String;)I
    .registers 11
    .parameter "CPName"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 132
    const/4 v7, 0x0

    .line 133
    .local v7, result:I
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/CPOrder;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$CPOrderColumns;->CPORDER_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "CPORDER_CHECK"

    aput-object v3, v2, v8

    const-string v3, "CPORDER_NAME = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 139
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2b

    .line 140
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 141
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 143
    :cond_28
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 145
    :cond_2b
    return v7
.end method

.method public getCPOrder()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 39
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v6, cpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/CPOrder;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$CPOrderColumns;->CPORDER_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "CPORDER_NAME"

    aput-object v3, v2, v8

    const-string v3, "CPORDER_INDEX > 0 "

    const/4 v4, 0x0

    const-string v5, "CPORDER_INDEX ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 46
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_36

    .line 47
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 49
    :cond_26
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_26

    .line 52
    :cond_33
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 55
    :cond_36
    return-object v6
.end method

.method public getCPViewOrder()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 79
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v6, cpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/CPOrder;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$CPOrderColumns;->CPORDER_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "CPORDER_NAME"

    aput-object v3, v2, v8

    const-string v3, "CPORDER_INDEX > 0 AND CPORDER_CHECK > 0 "

    const/4 v4, 0x0

    const-string v5, "CPORDER_INDEX ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 86
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_36

    .line 87
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 89
    :cond_26
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_26

    .line 92
    :cond_33
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_36
    return-object v6
.end method

.method public setCPCheck(Ljava/lang/String;I)V
    .registers 9
    .parameter "CPName"
    .parameter "check"

    .prologue
    .line 121
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 122
    .local v0, updateValues:Landroid/content/ContentValues;
    const-string v1, "CPORDER_CHECK"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/engine/CPOrder;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/widgetapp/apnews/engine/APNewsEngine$CPOrderColumns;->CPORDER_URI:Landroid/net/Uri;

    const-string v3, "CPORDER_NAME = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 128
    return-void
.end method
