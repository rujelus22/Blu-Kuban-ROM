.class public final enum LQg;
.super Ljava/lang/Enum;
.source "ModifySharingActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LQg;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LQg;

.field private static final synthetic a:[LQg;

.field public static final enum b:LQg;

.field public static final enum c:LQg;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, LQg;

    const-string v1, "POPULATING_ACLS"

    invoke-direct {v0, v1, v2}, LQg;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQg;->a:LQg;

    .line 83
    new-instance v0, LQg;

    const-string v1, "SAVING_ACLS"

    invoke-direct {v0, v1, v3}, LQg;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQg;->b:LQg;

    .line 84
    new-instance v0, LQg;

    const-string v1, "EDITING_ACLS"

    invoke-direct {v0, v1, v4}, LQg;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQg;->c:LQg;

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [LQg;

    sget-object v1, LQg;->a:LQg;

    aput-object v1, v0, v2

    sget-object v1, LQg;->b:LQg;

    aput-object v1, v0, v3

    sget-object v1, LQg;->c:LQg;

    aput-object v1, v0, v4

    sput-object v0, LQg;->a:[LQg;

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
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LQg;
    .registers 2
    .parameter

    .prologue
    .line 80
    const-class v0, LQg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LQg;

    return-object v0
.end method

.method public static values()[LQg;
    .registers 1

    .prologue
    .line 80
    sget-object v0, LQg;->a:[LQg;

    invoke-virtual {v0}, [LQg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LQg;

    return-object v0
.end method
