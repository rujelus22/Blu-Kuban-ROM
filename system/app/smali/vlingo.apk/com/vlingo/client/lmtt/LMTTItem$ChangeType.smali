.class public final enum Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;
.super Ljava/lang/Enum;
.source "LMTTItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/lmtt/LMTTItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChangeType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

.field public static final enum DELETE:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

.field public static final enum INSERT:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

.field public static final enum NOCHANGE:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

.field public static final enum UPDATE:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;


# instance fields
.field private final delta:I

.field private final upType:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 32
    new-instance v0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    const-string v1, "UPDATE"

    sget-object v2, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;->UP:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;-><init>(Ljava/lang/String;IILcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;)V

    sput-object v0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->UPDATE:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    new-instance v0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    const-string v1, "INSERT"

    sget-object v2, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;->INS:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;-><init>(Ljava/lang/String;IILcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;)V

    sput-object v0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->INSERT:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    new-instance v0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    const-string v1, "DELETE"

    const/4 v2, -0x1

    sget-object v3, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;->DEL:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;-><init>(Ljava/lang/String;IILcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;)V

    sput-object v0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->DELETE:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    new-instance v0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    const-string v1, "NOCHANGE"

    sget-object v2, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;->NOOP:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;

    invoke-direct {v0, v1, v7, v4, v2}, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;-><init>(Ljava/lang/String;IILcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;)V

    sput-object v0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->NOCHANGE:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->UPDATE:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->INSERT:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->DELETE:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->NOCHANGE:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->$VALUES:[Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;)V
    .registers 5
    .parameter
    .parameter
    .parameter "thisDelta"
    .parameter "upType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->delta:I

    .line 39
    iput-object p4, p0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->upType:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;
    .registers 2
    .parameter "name"

    .prologue
    .line 31
    const-class v0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    return-object v0
.end method

.method public static values()[Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->$VALUES:[Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    invoke-virtual {v0}, [Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    return-object v0
.end method


# virtual methods
.method public dbUpdate(Lcom/vlingo/client/lmtt/LMTTItem;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "item"
    .parameter "db"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->upType:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;

    invoke-virtual {v0, p1, p2}, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;->dbUpdate(Lcom/vlingo/client/lmtt/LMTTItem;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 46
    return-void
.end method

.method public getChangeXML(Lcom/vlingo/client/lmtt/LMTTItem;Ljava/lang/StringBuilder;)V
    .registers 4
    .parameter "item"
    .parameter "sb"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->upType:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;

    invoke-virtual {v0, p1, p2}, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType$UpdateType;->getChangeXML(Lcom/vlingo/client/lmtt/LMTTItem;Ljava/lang/StringBuilder;)V

    .line 49
    return-void
.end method

.method public runningSum(I)I
    .registers 3
    .parameter "currentSum"

    .prologue
    .line 42
    iget v0, p0, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->delta:I

    add-int/2addr v0, p1

    return v0
.end method
