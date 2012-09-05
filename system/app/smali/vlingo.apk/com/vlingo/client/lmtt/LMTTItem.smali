.class public abstract Lcom/vlingo/client/lmtt/LMTTItem;
.super Ljava/lang/Object;
.source "LMTTItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/lmtt/LMTTItem$1;,
        Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;,
        Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;
    }
.end annotation


# static fields
.field public static final CHANGE_TYPE_DELETE:I = 0x2

.field public static final CHANGE_TYPE_INSERT:I = 0x1

.field public static final CHANGE_TYPE_NOCHANGE:I = 0x3

.field public static final CHANGE_TYPE_UPDATE:I


# instance fields
.field public changeType:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

.field public type:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

.field public uid:I


# direct methods
.method public constructor <init>(Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;ILcom/vlingo/client/lmtt/LMTTItem$ChangeType;)V
    .registers 5
    .parameter "type"
    .parameter "uid"
    .parameter "changeType"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    sget-object v0, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_UNKNOWN:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    iput-object v0, p0, Lcom/vlingo/client/lmtt/LMTTItem;->type:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    .line 94
    iput-object p1, p0, Lcom/vlingo/client/lmtt/LMTTItem;->type:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    .line 95
    iput p2, p0, Lcom/vlingo/client/lmtt/LMTTItem;->uid:I

    .line 96
    iput-object p3, p0, Lcom/vlingo/client/lmtt/LMTTItem;->changeType:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    .line 97
    return-void
.end method


# virtual methods
.method public abstract getDelXML(Ljava/lang/StringBuilder;)V
.end method

.method public abstract getInsXML(Ljava/lang/StringBuilder;)V
.end method

.method public abstract getUpXML(Ljava/lang/StringBuilder;)V
.end method

.method public abstract getXML()Ljava/lang/String;
.end method

.method public setChangeType(Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/vlingo/client/lmtt/LMTTItem;->changeType:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    .line 101
    return-void
.end method
