.class final Lcom/android/launcher2/LauncherModel$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/ItemInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callingFunction:Ljava/lang/String;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$item:Lcom/android/launcher2/ItemInfo;

.field final synthetic val$itemId:J

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;JLcom/android/launcher2/ItemInfo;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$3;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$3;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$3;->val$values:Landroid/content/ContentValues;

    iput-wide p4, p0, Lcom/android/launcher2/LauncherModel$3;->val$itemId:J

    iput-object p6, p0, Lcom/android/launcher2/LauncherModel$3;->val$item:Lcom/android/launcher2/ItemInfo;

    iput-object p7, p0, Lcom/android/launcher2/LauncherModel$3;->val$callingFunction:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 218
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$3;->val$cr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$3;->val$uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$3;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 220
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    iget-wide v3, p0, Lcom/android/launcher2/LauncherModel$3;->val$itemId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    .line 221
    .local v0, modelItem:Lcom/android/launcher2/ItemInfo;
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$3;->val$item:Lcom/android/launcher2/ItemInfo;

    if-eq v2, v0, :cond_67

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$3;->val$item:Lcom/android/launcher2/ItemInfo;

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$3;->val$item:Lcom/android/launcher2/ItemInfo;

    invoke-virtual {v2}, Lcom/android/launcher2/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_31
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "modelItem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Lcom/android/launcher2/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_41
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Error: ItemInfo passed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$3;->val$callingFunction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t match original"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, msg:Ljava/lang/String;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 224
    .end local v1           #msg:Ljava/lang/String;
    :cond_61
    const-string v2, "null"

    goto :goto_31

    :cond_64
    const-string v2, "null"

    goto :goto_41

    .line 233
    :cond_67
    iget-wide v2, v0, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-eqz v2, :cond_77

    iget-wide v2, v0, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_85

    .line 235
    :cond_77
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_84

    .line 236
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_84
    :goto_84
    return-void

    .line 239
    :cond_85
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_84
.end method
