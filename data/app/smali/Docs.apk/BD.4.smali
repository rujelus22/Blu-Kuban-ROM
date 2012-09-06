.class public final enum LBD;
.super Ljava/lang/Enum;
.source "XmlHttpRequestRelay.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LBD;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LBD;

.field private static final synthetic a:[LBD;

.field public static final enum b:LBD;

.field public static final enum c:LBD;

.field public static final enum d:LBD;

.field public static final enum e:LBD;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, LBD;

    const-string v1, "UNSENT"

    invoke-direct {v0, v1, v2}, LBD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LBD;->a:LBD;

    .line 64
    new-instance v0, LBD;

    const-string v1, "OPENED"

    invoke-direct {v0, v1, v3}, LBD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LBD;->b:LBD;

    .line 65
    new-instance v0, LBD;

    const-string v1, "HEADER_RECEIVED"

    invoke-direct {v0, v1, v4}, LBD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LBD;->c:LBD;

    .line 66
    new-instance v0, LBD;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v5}, LBD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LBD;->d:LBD;

    .line 67
    new-instance v0, LBD;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v6}, LBD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LBD;->e:LBD;

    .line 62
    const/4 v0, 0x5

    new-array v0, v0, [LBD;

    sget-object v1, LBD;->a:LBD;

    aput-object v1, v0, v2

    sget-object v1, LBD;->b:LBD;

    aput-object v1, v0, v3

    sget-object v1, LBD;->c:LBD;

    aput-object v1, v0, v4

    sget-object v1, LBD;->d:LBD;

    aput-object v1, v0, v5

    sget-object v1, LBD;->e:LBD;

    aput-object v1, v0, v6

    sput-object v0, LBD;->a:[LBD;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LBD;
    .registers 2
    .parameter

    .prologue
    .line 62
    const-class v0, LBD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LBD;

    return-object v0
.end method

.method public static values()[LBD;
    .registers 1

    .prologue
    .line 62
    sget-object v0, LBD;->a:[LBD;

    invoke-virtual {v0}, [LBD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LBD;

    return-object v0
.end method
