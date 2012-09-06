.class public final enum Lhf;
.super Ljava/lang/Enum;
.source "MainProxyLogic.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhf;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lhf;

.field private static final synthetic a:[Lhf;

.field public static final enum b:Lhf;

.field public static final enum c:Lhf;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-instance v0, Lhf;

    const-string v1, "DOCS"

    invoke-direct {v0, v1, v2}, Lhf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhf;->a:Lhf;

    new-instance v0, Lhf;

    const-string v1, "DRIVE"

    invoke-direct {v0, v1, v3}, Lhf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhf;->b:Lhf;

    .line 94
    new-instance v0, Lhf;

    const-string v1, "DRIVE_ENABLED_FLAG"

    invoke-direct {v0, v1, v4}, Lhf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhf;->c:Lhf;

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Lhf;

    sget-object v1, Lhf;->a:Lhf;

    aput-object v1, v0, v2

    sget-object v1, Lhf;->b:Lhf;

    aput-object v1, v0, v3

    sget-object v1, Lhf;->c:Lhf;

    aput-object v1, v0, v4

    sput-object v0, Lhf;->a:[Lhf;

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
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhf;
    .registers 2
    .parameter

    .prologue
    .line 89
    const-class v0, Lhf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhf;

    return-object v0
.end method

.method public static values()[Lhf;
    .registers 1

    .prologue
    .line 89
    sget-object v0, Lhf;->a:[Lhf;

    invoke-virtual {v0}, [Lhf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhf;

    return-object v0
.end method
