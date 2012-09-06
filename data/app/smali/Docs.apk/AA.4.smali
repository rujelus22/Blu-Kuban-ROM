.class abstract enum LAA;
.super Ljava/lang/Enum;
.source "HorizontalPositioning.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LAA;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LAA;

.field private static final synthetic a:[LAA;

.field public static final enum b:LAA;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, LAB;

    const-string v1, "TEXT_CENTER"

    invoke-direct {v0, v1, v2}, LAB;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAA;->a:LAA;

    .line 23
    new-instance v0, LAC;

    const-string v1, "EDITOR_CENTER"

    invoke-direct {v0, v1, v3}, LAC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAA;->b:LAA;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [LAA;

    sget-object v1, LAA;->a:LAA;

    aput-object v1, v0, v2

    sget-object v1, LAA;->b:LAA;

    aput-object v1, v0, v3

    sput-object v0, LAA;->a:[LAA;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILAB;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, LAA;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LAA;
    .registers 2
    .parameter

    .prologue
    .line 12
    const-class v0, LAA;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LAA;

    return-object v0
.end method

.method public static values()[LAA;
    .registers 1

    .prologue
    .line 12
    sget-object v0, LAA;->a:[LAA;

    invoke-virtual {v0}, [LAA;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LAA;

    return-object v0
.end method


# virtual methods
.method abstract a(LAu;LFt;II)I
.end method
