.class public final enum LXI;
.super Ljava/lang/Enum;
.source "Connectivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LXI;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LXI;

.field private static final synthetic a:[LXI;

.field public static final enum b:LXI;

.field public static final enum c:LXI;


# instance fields
.field private final a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 23
    new-instance v0, LXI;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v3, v3}, LXI;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, LXI;->a:LXI;

    .line 24
    new-instance v0, LXI;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v2, v2}, LXI;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, LXI;->b:LXI;

    .line 25
    new-instance v0, LXI;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v4, v2}, LXI;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, LXI;->c:LXI;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [LXI;

    sget-object v1, LXI;->a:LXI;

    aput-object v1, v0, v3

    sget-object v1, LXI;->b:LXI;

    aput-object v1, v0, v2

    sget-object v1, LXI;->c:LXI;

    aput-object v1, v0, v4

    sput-object v0, LXI;->a:[LXI;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-boolean p3, p0, LXI;->a:Z

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LXI;
    .registers 2
    .parameter

    .prologue
    .line 22
    const-class v0, LXI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LXI;

    return-object v0
.end method

.method public static values()[LXI;
    .registers 1

    .prologue
    .line 22
    sget-object v0, LXI;->a:[LXI;

    invoke-virtual {v0}, [LXI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LXI;

    return-object v0
.end method
