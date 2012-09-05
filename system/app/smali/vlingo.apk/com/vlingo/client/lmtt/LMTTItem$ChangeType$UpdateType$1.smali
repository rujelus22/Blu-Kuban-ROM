.class final enum Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType$1;
.super Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;
.source "LMTTItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;-><init>(Ljava/lang/String;ILcom/vlingo/client/lmtt/LMTTItem$1;)V

    return-void
.end method


# virtual methods
.method dbUpdate(Lcom/vlingo/client/lmtt/LMTTItem;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "item"
    .parameter "db"

    .prologue
    .line 53
    invoke-static {p1, p2}, Lcom/vlingo/client/lmtt/LMTTDBUtil;->insertItem(Lcom/vlingo/client/lmtt/LMTTItem;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 54
    return-void
.end method

.method getChangeXML(Lcom/vlingo/client/lmtt/LMTTItem;Ljava/lang/StringBuilder;)V
    .registers 3
    .parameter "item"
    .parameter "sb"

    .prologue
    .line 56
    invoke-virtual {p1, p2}, Lcom/vlingo/client/lmtt/LMTTItem;->getInsXML(Ljava/lang/StringBuilder;)V

    .line 57
    return-void
.end method
