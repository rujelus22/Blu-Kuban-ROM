.class final Lcom/anddoes/launcher/gz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/ContentResolver;

.field private final synthetic b:Z

.field private final synthetic c:Landroid/content/ContentValues;

.field private final synthetic d:Lcom/anddoes/launcher/ec;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;ZLandroid/content/ContentValues;Lcom/anddoes/launcher/ec;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/gz;->a:Landroid/content/ContentResolver;

    iput-boolean p2, p0, Lcom/anddoes/launcher/gz;->b:Z

    iput-object p3, p0, Lcom/anddoes/launcher/gz;->c:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/anddoes/launcher/gz;->d:Lcom/anddoes/launcher/ec;

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 432
    iget-object v1, p0, Lcom/anddoes/launcher/gz;->a:Landroid/content/ContentResolver;

    iget-boolean v0, p0, Lcom/anddoes/launcher/gz;->b:Z

    if-eqz v0, :cond_46

    sget-object v0, Lcom/anddoes/launcher/hy;->a:Landroid/net/Uri;

    .line 433
    :goto_8
    iget-object v2, p0, Lcom/anddoes/launcher/gz;->c:Landroid/content/ContentValues;

    .line 432
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 435
    sget-object v0, Lcom/anddoes/launcher/LauncherModel;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/anddoes/launcher/gz;->d:Lcom/anddoes/launcher/ec;

    iget-wide v1, v1, Lcom/anddoes/launcher/ec;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 437
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: ItemInfo id ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/gz;->d:Lcom/anddoes/launcher/ec;

    iget-wide v2, v2, Lcom/anddoes/launcher/ec;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") passed to addItemToDatabase already exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 438
    iget-object v2, p0, Lcom/anddoes/launcher/gz;->d:Lcom/anddoes/launcher/ec;

    invoke-virtual {v2}, Lcom/anddoes/launcher/ec;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 437
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_46
    sget-object v0, Lcom/anddoes/launcher/hy;->b:Landroid/net/Uri;

    goto :goto_8

    .line 440
    :cond_49
    sget-object v0, Lcom/anddoes/launcher/LauncherModel;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/anddoes/launcher/gz;->d:Lcom/anddoes/launcher/ec;

    iget-wide v1, v1, Lcom/anddoes/launcher/ec;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/anddoes/launcher/gz;->d:Lcom/anddoes/launcher/ec;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v0, p0, Lcom/anddoes/launcher/gz;->d:Lcom/anddoes/launcher/ec;

    iget v0, v0, Lcom/anddoes/launcher/ec;->i:I

    sparse-switch v0, :sswitch_data_98

    .line 457
    :cond_5f
    :goto_5f
    return-void

    .line 443
    :sswitch_60
    sget-object v1, Lcom/anddoes/launcher/LauncherModel;->e:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/anddoes/launcher/gz;->d:Lcom/anddoes/launcher/ec;

    iget-wide v2, v0, Lcom/anddoes/launcher/ec;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v0, p0, Lcom/anddoes/launcher/gz;->d:Lcom/anddoes/launcher/ec;

    check-cast v0, Lcom/anddoes/launcher/dd;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    :sswitch_71
    iget-object v0, p0, Lcom/anddoes/launcher/gz;->d:Lcom/anddoes/launcher/ec;

    iget-wide v0, v0, Lcom/anddoes/launcher/ec;->j:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-eqz v0, :cond_85

    .line 449
    iget-object v0, p0, Lcom/anddoes/launcher/gz;->d:Lcom/anddoes/launcher/ec;

    iget-wide v0, v0, Lcom/anddoes/launcher/ec;->j:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_5f

    .line 450
    :cond_85
    sget-object v0, Lcom/anddoes/launcher/LauncherModel;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/anddoes/launcher/gz;->d:Lcom/anddoes/launcher/ec;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 454
    :sswitch_8d
    sget-object v1, Lcom/anddoes/launcher/LauncherModel;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/anddoes/launcher/gz;->d:Lcom/anddoes/launcher/ec;

    check-cast v0, Lcom/anddoes/launcher/gn;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 441
    nop

    :sswitch_data_98
    .sparse-switch
        0x0 -> :sswitch_71
        0x1 -> :sswitch_71
        0x2 -> :sswitch_60
        0x4 -> :sswitch_8d
        0x3e9 -> :sswitch_71
    .end sparse-switch
.end method
