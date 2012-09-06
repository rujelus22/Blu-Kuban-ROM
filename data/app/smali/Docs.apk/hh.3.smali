.class public final enum Lhh;
.super Ljava/lang/Enum;
.source "MainProxyLogic.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lhh;

.field private static final synthetic a:[Lhh;

.field public static final enum b:Lhh;

.field public static final enum c:Lhh;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lhh;

    const-string v1, "CHECK_DRIVE_ENABLE_STATUS_SUCCEED"

    invoke-direct {v0, v1, v2}, Lhh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhh;->a:Lhh;

    .line 76
    new-instance v0, Lhh;

    const-string v1, "CHECK_DRIVE_ENABLE_STATUS_FAILED"

    invoke-direct {v0, v1, v3}, Lhh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhh;->b:Lhh;

    .line 81
    new-instance v0, Lhh;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v4}, Lhh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhh;->c:Lhh;

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Lhh;

    sget-object v1, Lhh;->a:Lhh;

    aput-object v1, v0, v2

    sget-object v1, Lhh;->b:Lhh;

    aput-object v1, v0, v3

    sget-object v1, Lhh;->c:Lhh;

    aput-object v1, v0, v4

    sput-object v0, Lhh;->a:[Lhh;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhh;
    .registers 2
    .parameter

    .prologue
    .line 74
    const-class v0, Lhh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhh;

    return-object v0
.end method

.method public static values()[Lhh;
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lhh;->a:[Lhh;

    invoke-virtual {v0}, [Lhh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhh;

    return-object v0
.end method
