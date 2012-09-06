.class public final enum LQM;
.super Ljava/lang/Enum;
.source "ContentKind.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LQM;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LQM;

.field private static final synthetic a:[LQM;

.field public static final enum b:LQM;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, LQM;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, LQM;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQM;->a:LQM;

    .line 13
    new-instance v0, LQM;

    const-string v1, "PDF"

    invoke-direct {v0, v1, v3}, LQM;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQM;->b:LQM;

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [LQM;

    sget-object v1, LQM;->a:LQM;

    aput-object v1, v0, v2

    sget-object v1, LQM;->b:LQM;

    aput-object v1, v0, v3

    sput-object v0, LQM;->a:[LQM;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LQM;
    .registers 2
    .parameter

    .prologue
    .line 11
    const-class v0, LQM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LQM;

    return-object v0
.end method

.method public static values()[LQM;
    .registers 1

    .prologue
    .line 11
    sget-object v0, LQM;->a:[LQM;

    invoke-virtual {v0}, [LQM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LQM;

    return-object v0
.end method
