.class public final enum Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;
.super Ljava/lang/Enum;
.source "Ui3dLogicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewportAnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;

.field public static final enum eAccelerated:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;

.field public static final enum eDecelerated:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;

.field public static final enum eLinear:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;

    const-string v1, "eLinear"

    invoke-direct {v0, v1, v2}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;->eLinear:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;

    new-instance v0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;

    const-string v1, "eAccelerated"

    invoke-direct {v0, v1, v3}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;->eAccelerated:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;

    new-instance v0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;

    const-string v1, "eDecelerated"

    invoke-direct {v0, v1, v4}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;->eDecelerated:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;

    sget-object v1, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;->eLinear:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;->eAccelerated:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;->eDecelerated:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;->$VALUES:[Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;

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
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;
    .registers 2
    .parameter

    .prologue
    .line 64
    const-class v0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;->$VALUES:[Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;

    invoke-virtual {v0}, [Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;

    return-object v0
.end method
