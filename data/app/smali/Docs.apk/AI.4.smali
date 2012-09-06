.class abstract enum LAI;
.super Ljava/lang/Enum;
.source "VerticalPositioning.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LAI;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LAI;

.field private static final synthetic a:[LAI;

.field public static final enum b:LAI;

.field public static final enum c:LAI;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, LAJ;

    const-string v1, "ABOVE_FIRST_LINE"

    invoke-direct {v0, v1, v2}, LAJ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAI;->a:LAI;

    .line 20
    new-instance v0, LAK;

    const-string v1, "BELOW_LAST_LINE"

    invoke-direct {v0, v1, v3}, LAK;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAI;->b:LAI;

    .line 27
    new-instance v0, LAL;

    const-string v1, "EDITOR_CENTER"

    invoke-direct {v0, v1, v4}, LAL;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAI;->c:LAI;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [LAI;

    sget-object v1, LAI;->a:LAI;

    aput-object v1, v0, v2

    sget-object v1, LAI;->b:LAI;

    aput-object v1, v0, v3

    sget-object v1, LAI;->c:LAI;

    aput-object v1, v0, v4

    sput-object v0, LAI;->a:[LAI;

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

.method synthetic constructor <init>(Ljava/lang/String;ILAJ;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, LAI;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LAI;
    .registers 2
    .parameter

    .prologue
    .line 12
    const-class v0, LAI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LAI;

    return-object v0
.end method

.method public static values()[LAI;
    .registers 1

    .prologue
    .line 12
    sget-object v0, LAI;->a:[LAI;

    invoke-virtual {v0}, [LAI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LAI;

    return-object v0
.end method


# virtual methods
.method abstract a(LAu;LFt;II)I
.end method
