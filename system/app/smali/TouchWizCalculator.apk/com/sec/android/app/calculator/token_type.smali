.class final enum Lcom/sec/android/app/calculator/token_type;
.super Ljava/lang/Enum;
.source "Logic.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/calculator/token_type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/calculator/token_type;

.field public static final enum ABS:Lcom/sec/android/app/calculator/token_type;

.field public static final enum COS:Lcom/sec/android/app/calculator/token_type;

.field public static final enum DIVIDE:Lcom/sec/android/app/calculator/token_type;

.field public static final enum ENDMARKER:Lcom/sec/android/app/calculator/token_type;

.field public static final enum EOS:Lcom/sec/android/app/calculator/token_type;

.field public static final enum FACT:Lcom/sec/android/app/calculator/token_type;

.field public static final enum LN:Lcom/sec/android/app/calculator/token_type;

.field public static final enum LOG:Lcom/sec/android/app/calculator/token_type;

.field public static final enum LPARAM:Lcom/sec/android/app/calculator/token_type;

.field public static final enum MINUS:Lcom/sec/android/app/calculator/token_type;

.field public static final enum MULTI:Lcom/sec/android/app/calculator/token_type;

.field public static final enum OPERAND:Lcom/sec/android/app/calculator/token_type;

.field public static final enum PERSENTAGE:Lcom/sec/android/app/calculator/token_type;

.field public static final enum PLUS:Lcom/sec/android/app/calculator/token_type;

.field public static final enum ROOT:Lcom/sec/android/app/calculator/token_type;

.field public static final enum RPARAM:Lcom/sec/android/app/calculator/token_type;

.field public static final enum SIGN:Lcom/sec/android/app/calculator/token_type;

.field public static final enum SIN:Lcom/sec/android/app/calculator/token_type;

.field public static final enum SQUARE:Lcom/sec/android/app/calculator/token_type;

.field public static final enum TAN:Lcom/sec/android/app/calculator/token_type;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/sec/android/app/calculator/token_type;

    const-string v1, "LPARAM"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/calculator/token_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/calculator/token_type;->LPARAM:Lcom/sec/android/app/calculator/token_type;

    new-instance v0, Lcom/sec/android/app/calculator/token_type;

    const-string v1, "RPARAM"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/calculator/token_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/calculator/token_type;->RPARAM:Lcom/sec/android/app/calculator/token_type;

    new-instance v0, Lcom/sec/android/app/calculator/token_type;

    const-string v1, "ABS"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/calculator/token_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/calculator/token_type;->ABS:Lcom/sec/android/app/calculator/token_type;

    new-instance v0, Lcom/sec/android/app/calculator/token_type;

    const-string v1, "SQUARE"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/app/calculator/token_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/calculator/token_type;->SQUARE:Lcom/sec/android/app/calculator/token_type;

    new-instance v0, Lcom/sec/android/app/calculator/token_type;

    const-string v1, "SIN"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/app/calculator/token_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/calculator/token_type;->SIN:Lcom/sec/android/app/calculator/token_type;

    new-instance v0, Lcom/sec/android/app/calculator/token_type;

    const-string v1, "COS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/calculator/token_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/calculator/token_type;->COS:Lcom/sec/android/app/calculator/token_type;

    new-instance v0, Lcom/sec/android/app/calculator/token_type;

    const-string v1, "TAN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/calculator/token_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/calculator/token_type;->TAN:Lcom/sec/android/app/calculator/token_type;

    new-instance v0, Lcom/sec/android/app/calculator/token_type;

    const-string v1, "LN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/calculator/token_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/calculator/token_type;->LN:Lcom/sec/android/app/calculator/token_type;

    new-instance v0, Lcom/sec/android/app/calculator/token_type;

    const-string v1, "ROOT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/calculator/token_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/calculator/token_type;->ROOT:Lcom/sec/android/app/calculator/token_type;

    new-instance v0, Lcom/sec/android/app/calculator/token_type;

    const-string v1, "PERSENTAGE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/calculator/token_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/calculator/token_type;->PERSENTAGE:Lcom/sec/android/app/calculator/token_type;

    new-instance v0, Lcom/sec/android/app/calculator/token_type;

    const-string v1, "FACT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/calculator/token_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/calculator/token_type;->FACT:Lcom/sec/android/app/calculator/token_type;

    new-instance v0, Lcom/sec/android/app/calculator/token_type;

    const-string v1, "LOG"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/calculator/token_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/calculator/token_type;->LOG:Lcom/sec/android/app/calculator/token_type;

    new-instance v0, Lcom/sec/android/app/calculator/token_type;

    const-string v1, "SIGN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/calculator/token_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/calculator/token_type;->SIGN:Lcom/sec/android/app/calculator/token_type;

    new-instance v0, Lcom/sec/android/app/calculator/token_type;

    const-string v1, "MULTI"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/calculator/token_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/calculator/token_type;->MULTI:Lcom/sec/android/app/calculator/token_type;

    new-instance v0, Lcom/sec/android/app/calculator/token_type;

    const-string v1, "DIVIDE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/calculator/token_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/calculator/token_type;->DIVIDE:Lcom/sec/android/app/calculator/token_type;

    new-instance v0, Lcom/sec/android/app/calculator/token_type;

    const-string v1, "PLUS"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/calculator/token_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/calculator/token_type;->PLUS:Lcom/sec/android/app/calculator/token_type;

    new-instance v0, Lcom/sec/android/app/calculator/token_type;

    const-string v1, "MINUS"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/calculator/token_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/calculator/token_type;->MINUS:Lcom/sec/android/app/calculator/token_type;

    new-instance v0, Lcom/sec/android/app/calculator/token_type;

    const-string v1, "OPERAND"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/calculator/token_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/calculator/token_type;->OPERAND:Lcom/sec/android/app/calculator/token_type;

    new-instance v0, Lcom/sec/android/app/calculator/token_type;

    const-string v1, "EOS"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/calculator/token_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/calculator/token_type;->EOS:Lcom/sec/android/app/calculator/token_type;

    new-instance v0, Lcom/sec/android/app/calculator/token_type;

    const-string v1, "ENDMARKER"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/calculator/token_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/calculator/token_type;->ENDMARKER:Lcom/sec/android/app/calculator/token_type;

    .line 42
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/sec/android/app/calculator/token_type;

    sget-object v1, Lcom/sec/android/app/calculator/token_type;->LPARAM:Lcom/sec/android/app/calculator/token_type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/calculator/token_type;->RPARAM:Lcom/sec/android/app/calculator/token_type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/calculator/token_type;->ABS:Lcom/sec/android/app/calculator/token_type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/calculator/token_type;->SQUARE:Lcom/sec/android/app/calculator/token_type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/app/calculator/token_type;->SIN:Lcom/sec/android/app/calculator/token_type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/app/calculator/token_type;->COS:Lcom/sec/android/app/calculator/token_type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/android/app/calculator/token_type;->TAN:Lcom/sec/android/app/calculator/token_type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/android/app/calculator/token_type;->LN:Lcom/sec/android/app/calculator/token_type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/android/app/calculator/token_type;->ROOT:Lcom/sec/android/app/calculator/token_type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sec/android/app/calculator/token_type;->PERSENTAGE:Lcom/sec/android/app/calculator/token_type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/android/app/calculator/token_type;->FACT:Lcom/sec/android/app/calculator/token_type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sec/android/app/calculator/token_type;->LOG:Lcom/sec/android/app/calculator/token_type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sec/android/app/calculator/token_type;->SIGN:Lcom/sec/android/app/calculator/token_type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sec/android/app/calculator/token_type;->MULTI:Lcom/sec/android/app/calculator/token_type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sec/android/app/calculator/token_type;->DIVIDE:Lcom/sec/android/app/calculator/token_type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sec/android/app/calculator/token_type;->PLUS:Lcom/sec/android/app/calculator/token_type;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sec/android/app/calculator/token_type;->MINUS:Lcom/sec/android/app/calculator/token_type;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sec/android/app/calculator/token_type;->OPERAND:Lcom/sec/android/app/calculator/token_type;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sec/android/app/calculator/token_type;->EOS:Lcom/sec/android/app/calculator/token_type;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/sec/android/app/calculator/token_type;->ENDMARKER:Lcom/sec/android/app/calculator/token_type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/calculator/token_type;->$VALUES:[Lcom/sec/android/app/calculator/token_type;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/calculator/token_type;
    .registers 2
    .parameter

    .prologue
    .line 42
    const-class v0, Lcom/sec/android/app/calculator/token_type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/calculator/token_type;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/calculator/token_type;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/sec/android/app/calculator/token_type;->$VALUES:[Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v0}, [Lcom/sec/android/app/calculator/token_type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/calculator/token_type;

    return-object v0
.end method
