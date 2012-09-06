.class final enum Lcom/google/googlenav/ui/wizard/gx;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/googlenav/ui/wizard/gx;

.field public static final enum b:Lcom/google/googlenav/ui/wizard/gx;

.field public static final enum c:Lcom/google/googlenav/ui/wizard/gx;

.field private static final synthetic d:[Lcom/google/googlenav/ui/wizard/gx;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 212
    new-instance v0, Lcom/google/googlenav/ui/wizard/gx;

    const-string v1, "MAP_VIEW_PORT"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/gx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/gx;->a:Lcom/google/googlenav/ui/wizard/gx;

    .line 213
    new-instance v0, Lcom/google/googlenav/ui/wizard/gx;

    const-string v1, "MY_LOCATION"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/ui/wizard/gx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/gx;->b:Lcom/google/googlenav/ui/wizard/gx;

    .line 214
    new-instance v0, Lcom/google/googlenav/ui/wizard/gx;

    const-string v1, "USER_SELECTED"

    invoke-direct {v0, v1, v4}, Lcom/google/googlenav/ui/wizard/gx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/gx;->c:Lcom/google/googlenav/ui/wizard/gx;

    .line 210
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/googlenav/ui/wizard/gx;

    sget-object v1, Lcom/google/googlenav/ui/wizard/gx;->a:Lcom/google/googlenav/ui/wizard/gx;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/ui/wizard/gx;->b:Lcom/google/googlenav/ui/wizard/gx;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/ui/wizard/gx;->c:Lcom/google/googlenav/ui/wizard/gx;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/googlenav/ui/wizard/gx;->d:[Lcom/google/googlenav/ui/wizard/gx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/gx;
    .registers 2
    .parameter

    .prologue
    .line 210
    const-class v0, Lcom/google/googlenav/ui/wizard/gx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/gx;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/ui/wizard/gx;
    .registers 1

    .prologue
    .line 210
    sget-object v0, Lcom/google/googlenav/ui/wizard/gx;->d:[Lcom/google/googlenav/ui/wizard/gx;

    invoke-virtual {v0}, [Lcom/google/googlenav/ui/wizard/gx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/ui/wizard/gx;

    return-object v0
.end method
