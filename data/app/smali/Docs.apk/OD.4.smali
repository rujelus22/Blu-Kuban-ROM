.class public final enum LOD;
.super Ljava/lang/Enum;
.source "SearchHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LOD;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LOD;

.field private static final synthetic a:[LOD;

.field public static final enum b:LOD;

.field public static final enum c:LOD;

.field public static final enum d:LOD;

.field public static final enum e:LOD;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, LOD;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v2}, LOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LOD;->a:LOD;

    .line 14
    new-instance v0, LOD;

    const-string v1, "IN_PROGRESS"

    invoke-direct {v0, v1, v3}, LOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LOD;->b:LOD;

    .line 15
    new-instance v0, LOD;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, LOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LOD;->c:LOD;

    .line 16
    new-instance v0, LOD;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v5}, LOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LOD;->d:LOD;

    .line 17
    new-instance v0, LOD;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v6}, LOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LOD;->e:LOD;

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [LOD;

    sget-object v1, LOD;->a:LOD;

    aput-object v1, v0, v2

    sget-object v1, LOD;->b:LOD;

    aput-object v1, v0, v3

    sget-object v1, LOD;->c:LOD;

    aput-object v1, v0, v4

    sget-object v1, LOD;->d:LOD;

    aput-object v1, v0, v5

    sget-object v1, LOD;->e:LOD;

    aput-object v1, v0, v6

    sput-object v0, LOD;->a:[LOD;

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

.method public static valueOf(Ljava/lang/String;)LOD;
    .registers 2
    .parameter

    .prologue
    .line 12
    const-class v0, LOD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LOD;

    return-object v0
.end method

.method public static values()[LOD;
    .registers 1

    .prologue
    .line 12
    sget-object v0, LOD;->a:[LOD;

    invoke-virtual {v0}, [LOD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LOD;

    return-object v0
.end method
