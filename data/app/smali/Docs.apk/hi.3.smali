.class public final enum Lhi;
.super Ljava/lang/Enum;
.source "MainProxyLogic.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lhi;

.field private static final synthetic a:[Lhi;

.field public static final enum b:Lhi;

.field public static final enum c:Lhi;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lhi;

    const-string v1, "CHECK_DRIVE_ENABLE_STATUS"

    invoke-direct {v0, v1, v2}, Lhi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhi;->a:Lhi;

    .line 61
    new-instance v0, Lhi;

    const-string v1, "INVITATION_FLOW"

    invoke-direct {v0, v1, v3}, Lhi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhi;->b:Lhi;

    .line 66
    new-instance v0, Lhi;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v4}, Lhi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhi;->c:Lhi;

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Lhi;

    sget-object v1, Lhi;->a:Lhi;

    aput-object v1, v0, v2

    sget-object v1, Lhi;->b:Lhi;

    aput-object v1, v0, v3

    sget-object v1, Lhi;->c:Lhi;

    aput-object v1, v0, v4

    sput-object v0, Lhi;->a:[Lhi;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhi;
    .registers 2
    .parameter

    .prologue
    .line 59
    const-class v0, Lhi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhi;

    return-object v0
.end method

.method public static values()[Lhi;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lhi;->a:[Lhi;

    invoke-virtual {v0}, [Lhi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhi;

    return-object v0
.end method
