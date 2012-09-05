.class final enum Lcom/cooliris/media/BitmapManager$State;
.super Ljava/lang/Enum;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/BitmapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cooliris/media/BitmapManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cooliris/media/BitmapManager$State;

.field public static final enum ALLOW:Lcom/cooliris/media/BitmapManager$State;

.field public static final enum CANCEL:Lcom/cooliris/media/BitmapManager$State;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/cooliris/media/BitmapManager$State;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v2}, Lcom/cooliris/media/BitmapManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cooliris/media/BitmapManager$State;->CANCEL:Lcom/cooliris/media/BitmapManager$State;

    new-instance v0, Lcom/cooliris/media/BitmapManager$State;

    const-string v1, "ALLOW"

    invoke-direct {v0, v1, v3}, Lcom/cooliris/media/BitmapManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cooliris/media/BitmapManager$State;->ALLOW:Lcom/cooliris/media/BitmapManager$State;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/cooliris/media/BitmapManager$State;

    sget-object v1, Lcom/cooliris/media/BitmapManager$State;->CANCEL:Lcom/cooliris/media/BitmapManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cooliris/media/BitmapManager$State;->ALLOW:Lcom/cooliris/media/BitmapManager$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/cooliris/media/BitmapManager$State;->$VALUES:[Lcom/cooliris/media/BitmapManager$State;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cooliris/media/BitmapManager$State;
    .registers 2
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/cooliris/media/BitmapManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/BitmapManager$State;

    return-object v0
.end method

.method public static values()[Lcom/cooliris/media/BitmapManager$State;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/cooliris/media/BitmapManager$State;->$VALUES:[Lcom/cooliris/media/BitmapManager$State;

    invoke-virtual {v0}, [Lcom/cooliris/media/BitmapManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cooliris/media/BitmapManager$State;

    return-object v0
.end method
