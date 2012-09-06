.class public final enum Lag;
.super Ljava/lang/Enum;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lag;

.field private static final synthetic a:[Lag;

.field public static final enum b:Lag;

.field public static final enum c:Lag;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    new-instance v0, Lag;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lag;->a:Lag;

    .line 97
    new-instance v0, Lag;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lag;->b:Lag;

    .line 101
    new-instance v0, Lag;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lag;->c:Lag;

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Lag;

    sget-object v1, Lag;->a:Lag;

    aput-object v1, v0, v2

    sget-object v1, Lag;->b:Lag;

    aput-object v1, v0, v3

    sget-object v1, Lag;->c:Lag;

    aput-object v1, v0, v4

    sput-object v0, Lag;->a:[Lag;

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

.method public static valueOf(Ljava/lang/String;)Lag;
    .registers 2
    .parameter

    .prologue
    .line 89
    const-class v0, Lag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lag;

    return-object v0
.end method

.method public static values()[Lag;
    .registers 1

    .prologue
    .line 89
    sget-object v0, Lag;->a:[Lag;

    invoke-virtual {v0}, [Lag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lag;

    return-object v0
.end method
