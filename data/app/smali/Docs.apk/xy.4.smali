.class public final enum Lxy;
.super Ljava/lang/Enum;
.source "KixEditText.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lxy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lxy;

.field private static final synthetic a:[Lxy;

.field public static final enum b:Lxy;

.field public static final enum c:Lxy;

.field public static final enum d:Lxy;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    new-instance v0, Lxy;

    const-string v1, "NOT_INITIALIZED"

    invoke-direct {v0, v1, v2}, Lxy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lxy;->a:Lxy;

    .line 122
    new-instance v0, Lxy;

    const-string v1, "VIEW"

    invoke-direct {v0, v1, v3}, Lxy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lxy;->b:Lxy;

    .line 123
    new-instance v0, Lxy;

    const-string v1, "COMMENT"

    invoke-direct {v0, v1, v4}, Lxy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lxy;->c:Lxy;

    .line 124
    new-instance v0, Lxy;

    const-string v1, "EDIT"

    invoke-direct {v0, v1, v5}, Lxy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lxy;->d:Lxy;

    .line 120
    const/4 v0, 0x4

    new-array v0, v0, [Lxy;

    sget-object v1, Lxy;->a:Lxy;

    aput-object v1, v0, v2

    sget-object v1, Lxy;->b:Lxy;

    aput-object v1, v0, v3

    sget-object v1, Lxy;->c:Lxy;

    aput-object v1, v0, v4

    sget-object v1, Lxy;->d:Lxy;

    aput-object v1, v0, v5

    sput-object v0, Lxy;->a:[Lxy;

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
    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lxy;
    .registers 2
    .parameter

    .prologue
    .line 120
    const-class v0, Lxy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lxy;

    return-object v0
.end method

.method public static values()[Lxy;
    .registers 1

    .prologue
    .line 120
    sget-object v0, Lxy;->a:[Lxy;

    invoke-virtual {v0}, [Lxy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lxy;

    return-object v0
.end method
