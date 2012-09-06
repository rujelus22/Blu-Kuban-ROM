.class final Lcom/google/googlenav/provider/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lat/B;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lat/B;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/google/googlenav/provider/g;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/provider/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/provider/g;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/googlenav/provider/g;->d:Lat/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const v7, 0xbebc200

    .line 336
    iget-object v0, p0, Lcom/google/googlenav/provider/g;->a:Ljava/lang/String;

    .line 337
    iget-object v1, p0, Lcom/google/googlenav/provider/g;->a:Ljava/lang/String;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/google/googlenav/provider/g;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/provider/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/google/googlenav/provider/g;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_20

    .line 339
    :cond_1f
    const/4 v0, 0x0

    .line 342
    :cond_20
    iget-object v1, p0, Lcom/google/googlenav/provider/g;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/googlenav/aW;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 343
    if-nez v0, :cond_32

    iget-object v2, p0, Lcom/google/googlenav/provider/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 344
    iget-object v0, p0, Lcom/google/googlenav/provider/g;->b:Ljava/lang/String;

    .line 349
    :cond_32
    iget-object v2, p0, Lcom/google/googlenav/provider/g;->c:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/google/googlenav/provider/SearchHistoryProvider;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 350
    iget-object v2, p0, Lcom/google/googlenav/provider/g;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/provider/SearchHistoryProvider;->a:Landroid/net/Uri;

    const-string v4, "data1=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 354
    :cond_4d
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 355
    const-string v3, "data1"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    if-eqz v0, :cond_5e

    .line 357
    const-string v1, "displayQuery"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_5e
    iget-object v0, p0, Lcom/google/googlenav/provider/g;->d:Lat/B;

    if-eqz v0, :cond_8c

    .line 360
    const-string v0, "latitude"

    iget-object v1, p0, Lcom/google/googlenav/provider/g;->d:Lat/B;

    invoke-virtual {v1}, Lat/B;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 361
    const-string v0, "longitude"

    iget-object v1, p0, Lcom/google/googlenav/provider/g;->d:Lat/B;

    invoke-virtual {v1}, Lat/B;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 369
    :goto_80
    iget-object v0, p0, Lcom/google/googlenav/provider/g;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/provider/SearchHistoryProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 371
    return-void

    .line 364
    :cond_8c
    const-string v0, "latitude"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    const-string v0, "longitude"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_80
.end method
