.class public final enum LQV;
.super Ljava/lang/Enum;
.source "FileContentInstance.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LQV;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LQV;

.field private static final synthetic a:[LQV;

.field public static final enum b:LQV;

.field public static final enum c:LQV;

.field public static final enum d:LQV;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, LQV;

    const-string v1, "READING"

    invoke-direct {v0, v1, v2}, LQV;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQV;->a:LQV;

    .line 79
    new-instance v0, LQV;

    const-string v1, "WRITING"

    invoke-direct {v0, v1, v3}, LQV;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQV;->b:LQV;

    .line 80
    new-instance v0, LQV;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v4}, LQV;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQV;->c:LQV;

    .line 81
    new-instance v0, LQV;

    const-string v1, "DESTROYED"

    invoke-direct {v0, v1, v5}, LQV;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQV;->d:LQV;

    .line 77
    const/4 v0, 0x4

    new-array v0, v0, [LQV;

    sget-object v1, LQV;->a:LQV;

    aput-object v1, v0, v2

    sget-object v1, LQV;->b:LQV;

    aput-object v1, v0, v3

    sget-object v1, LQV;->c:LQV;

    aput-object v1, v0, v4

    sget-object v1, LQV;->d:LQV;

    aput-object v1, v0, v5

    sput-object v0, LQV;->a:[LQV;

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
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LQV;
    .registers 2
    .parameter

    .prologue
    .line 77
    const-class v0, LQV;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LQV;

    return-object v0
.end method

.method public static values()[LQV;
    .registers 1

    .prologue
    .line 77
    sget-object v0, LQV;->a:[LQV;

    invoke-virtual {v0}, [LQV;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LQV;

    return-object v0
.end method
