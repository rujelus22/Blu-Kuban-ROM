.class public final enum Lcom/google/googlenav/ui/wizard/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/googlenav/ui/wizard/m;

.field public static final enum b:Lcom/google/googlenav/ui/wizard/m;

.field public static final enum c:Lcom/google/googlenav/ui/wizard/m;

.field private static final synthetic d:[Lcom/google/googlenav/ui/wizard/m;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/google/googlenav/ui/wizard/m;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/m;->a:Lcom/google/googlenav/ui/wizard/m;

    .line 50
    new-instance v0, Lcom/google/googlenav/ui/wizard/m;

    const-string v1, "ADD_PLACE"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/ui/wizard/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/m;->b:Lcom/google/googlenav/ui/wizard/m;

    .line 51
    new-instance v0, Lcom/google/googlenav/ui/wizard/m;

    const-string v1, "SEARCH_RESULTS"

    invoke-direct {v0, v1, v4}, Lcom/google/googlenav/ui/wizard/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/m;->c:Lcom/google/googlenav/ui/wizard/m;

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/googlenav/ui/wizard/m;

    sget-object v1, Lcom/google/googlenav/ui/wizard/m;->a:Lcom/google/googlenav/ui/wizard/m;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/ui/wizard/m;->b:Lcom/google/googlenav/ui/wizard/m;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/ui/wizard/m;->c:Lcom/google/googlenav/ui/wizard/m;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/googlenav/ui/wizard/m;->d:[Lcom/google/googlenav/ui/wizard/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/m;
    .registers 2
    .parameter

    .prologue
    .line 48
    const-class v0, Lcom/google/googlenav/ui/wizard/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/m;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/ui/wizard/m;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/googlenav/ui/wizard/m;->d:[Lcom/google/googlenav/ui/wizard/m;

    invoke-virtual {v0}, [Lcom/google/googlenav/ui/wizard/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/ui/wizard/m;

    return-object v0
.end method
