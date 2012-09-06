.class public final enum Lcom/google/googlenav/ui/view/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/googlenav/ui/view/r;

.field public static final enum b:Lcom/google/googlenav/ui/view/r;

.field public static final enum c:Lcom/google/googlenav/ui/view/r;

.field public static final enum d:Lcom/google/googlenav/ui/view/r;

.field public static final enum e:Lcom/google/googlenav/ui/view/r;

.field private static final synthetic f:[Lcom/google/googlenav/ui/view/r;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 141
    new-instance v0, Lcom/google/googlenav/ui/view/r;

    const-string v1, "LIST_ITEMS"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/view/r;->a:Lcom/google/googlenav/ui/view/r;

    new-instance v0, Lcom/google/googlenav/ui/view/r;

    const-string v1, "TITLE"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/ui/view/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/view/r;->b:Lcom/google/googlenav/ui/view/r;

    new-instance v0, Lcom/google/googlenav/ui/view/r;

    const-string v1, "LIST_HEADER"

    invoke-direct {v0, v1, v4}, Lcom/google/googlenav/ui/view/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/view/r;->c:Lcom/google/googlenav/ui/view/r;

    .line 142
    new-instance v0, Lcom/google/googlenav/ui/view/r;

    const-string v1, "HEADER_BUTTONS"

    invoke-direct {v0, v1, v5}, Lcom/google/googlenav/ui/view/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/view/r;->d:Lcom/google/googlenav/ui/view/r;

    new-instance v0, Lcom/google/googlenav/ui/view/r;

    const-string v1, "BUTTONS"

    invoke-direct {v0, v1, v6}, Lcom/google/googlenav/ui/view/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/view/r;->e:Lcom/google/googlenav/ui/view/r;

    .line 140
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/googlenav/ui/view/r;

    sget-object v1, Lcom/google/googlenav/ui/view/r;->a:Lcom/google/googlenav/ui/view/r;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/ui/view/r;->b:Lcom/google/googlenav/ui/view/r;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/ui/view/r;->c:Lcom/google/googlenav/ui/view/r;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlenav/ui/view/r;->d:Lcom/google/googlenav/ui/view/r;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/googlenav/ui/view/r;->e:Lcom/google/googlenav/ui/view/r;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/googlenav/ui/view/r;->f:[Lcom/google/googlenav/ui/view/r;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/ui/view/r;
    .registers 2
    .parameter

    .prologue
    .line 140
    const-class v0, Lcom/google/googlenav/ui/view/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/r;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/ui/view/r;
    .registers 1

    .prologue
    .line 140
    sget-object v0, Lcom/google/googlenav/ui/view/r;->f:[Lcom/google/googlenav/ui/view/r;

    invoke-virtual {v0}, [Lcom/google/googlenav/ui/view/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/ui/view/r;

    return-object v0
.end method
