.class final Lcom/anddoes/launcher/gy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/ContentResolver;

.field private final synthetic b:Landroid/net/Uri;

.field private final synthetic c:Landroid/content/ContentValues;

.field private final synthetic d:J

.field private final synthetic e:Lcom/anddoes/launcher/ec;

.field private final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;JLcom/anddoes/launcher/ec;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/gy;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/anddoes/launcher/gy;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/anddoes/launcher/gy;->c:Landroid/content/ContentValues;

    iput-wide p4, p0, Lcom/anddoes/launcher/gy;->d:J

    iput-object p6, p0, Lcom/anddoes/launcher/gy;->e:Lcom/anddoes/launcher/ec;

    iput-object p7, p0, Lcom/anddoes/launcher/gy;->f:Ljava/lang/String;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 227
    iget-object v0, p0, Lcom/anddoes/launcher/gy;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/anddoes/launcher/gy;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/anddoes/launcher/gy;->c:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 229
    sget-object v0, Lcom/anddoes/launcher/LauncherModel;->b:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/anddoes/launcher/gy;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ec;

    .line 230
    iget-object v1, p0, Lcom/anddoes/launcher/gy;->e:Lcom/anddoes/launcher/ec;

    if-eq v1, v0, :cond_63

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "item: "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anddoes/launcher/gy;->e:Lcom/anddoes/launcher/ec;

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/anddoes/launcher/gy;->e:Lcom/anddoes/launcher/ec;

    invoke-virtual {v1}, Lcom/anddoes/launcher/ec;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 234
    const-string v2, "modelItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Lcom/anddoes/launcher/ec;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 235
    const-string v1, "Error: ItemInfo passed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/gy;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t match original"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_5d
    const-string v1, "null"

    goto :goto_2d

    .line 234
    :cond_60
    const-string v0, "null"

    goto :goto_3d

    .line 242
    :cond_63
    iget-wide v1, v0, Lcom/anddoes/launcher/ec;->j:J

    const-wide/16 v3, -0x64

    cmp-long v1, v1, v3

    if-eqz v1, :cond_73

    .line 243
    iget-wide v1, v0, Lcom/anddoes/launcher/ec;->j:J

    const-wide/16 v3, -0x65

    cmp-long v1, v1, v3

    if-nez v1, :cond_81

    .line 244
    :cond_73
    sget-object v1, Lcom/anddoes/launcher/LauncherModel;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    .line 245
    sget-object v1, Lcom/anddoes/launcher/LauncherModel;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_80
    :goto_80
    return-void

    .line 248
    :cond_81
    sget-object v1, Lcom/anddoes/launcher/LauncherModel;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_80
.end method
