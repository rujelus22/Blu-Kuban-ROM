.class public final enum Lcom/vlingo/client/car/TaskController$TaskType;
.super Ljava/lang/Enum;
.source "TaskController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/TaskController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TaskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vlingo/client/car/TaskController$TaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vlingo/client/car/TaskController$TaskType;

.field public static final enum TypeAnswer:Lcom/vlingo/client/car/TaskController$TaskType;

.field public static final enum TypeNav:Lcom/vlingo/client/car/TaskController$TaskType;

.field public static final enum TypeSMS:Lcom/vlingo/client/car/TaskController$TaskType;

.field public static final enum TypeSafeReader:Lcom/vlingo/client/car/TaskController$TaskType;

.field public static final enum TypeVoiceDial:Lcom/vlingo/client/car/TaskController$TaskType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/vlingo/client/car/TaskController$TaskType;

    const-string v1, "TypeVoiceDial"

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/car/TaskController$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/car/TaskController$TaskType;->TypeVoiceDial:Lcom/vlingo/client/car/TaskController$TaskType;

    .line 20
    new-instance v0, Lcom/vlingo/client/car/TaskController$TaskType;

    const-string v1, "TypeSMS"

    invoke-direct {v0, v1, v3}, Lcom/vlingo/client/car/TaskController$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/car/TaskController$TaskType;->TypeSMS:Lcom/vlingo/client/car/TaskController$TaskType;

    .line 21
    new-instance v0, Lcom/vlingo/client/car/TaskController$TaskType;

    const-string v1, "TypeNav"

    invoke-direct {v0, v1, v4}, Lcom/vlingo/client/car/TaskController$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/car/TaskController$TaskType;->TypeNav:Lcom/vlingo/client/car/TaskController$TaskType;

    .line 22
    new-instance v0, Lcom/vlingo/client/car/TaskController$TaskType;

    const-string v1, "TypeSafeReader"

    invoke-direct {v0, v1, v5}, Lcom/vlingo/client/car/TaskController$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/car/TaskController$TaskType;->TypeSafeReader:Lcom/vlingo/client/car/TaskController$TaskType;

    .line 23
    new-instance v0, Lcom/vlingo/client/car/TaskController$TaskType;

    const-string v1, "TypeAnswer"

    invoke-direct {v0, v1, v6}, Lcom/vlingo/client/car/TaskController$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vlingo/client/car/TaskController$TaskType;->TypeAnswer:Lcom/vlingo/client/car/TaskController$TaskType;

    .line 18
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/vlingo/client/car/TaskController$TaskType;

    sget-object v1, Lcom/vlingo/client/car/TaskController$TaskType;->TypeVoiceDial:Lcom/vlingo/client/car/TaskController$TaskType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vlingo/client/car/TaskController$TaskType;->TypeSMS:Lcom/vlingo/client/car/TaskController$TaskType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vlingo/client/car/TaskController$TaskType;->TypeNav:Lcom/vlingo/client/car/TaskController$TaskType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vlingo/client/car/TaskController$TaskType;->TypeSafeReader:Lcom/vlingo/client/car/TaskController$TaskType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vlingo/client/car/TaskController$TaskType;->TypeAnswer:Lcom/vlingo/client/car/TaskController$TaskType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/vlingo/client/car/TaskController$TaskType;->$VALUES:[Lcom/vlingo/client/car/TaskController$TaskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vlingo/client/car/TaskController$TaskType;
    .registers 2
    .parameter "name"

    .prologue
    .line 18
    const-class v0, Lcom/vlingo/client/car/TaskController$TaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/TaskController$TaskType;

    return-object v0
.end method

.method public static values()[Lcom/vlingo/client/car/TaskController$TaskType;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/vlingo/client/car/TaskController$TaskType;->$VALUES:[Lcom/vlingo/client/car/TaskController$TaskType;

    invoke-virtual {v0}, [Lcom/vlingo/client/car/TaskController$TaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vlingo/client/car/TaskController$TaskType;

    return-object v0
.end method
