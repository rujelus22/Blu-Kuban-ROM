.class public final enum Ldx;
.super Ljava/lang/Enum;
.source "AclType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldx;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ldx;

.field private static final synthetic a:[Ldx;

.field public static final enum b:Ldx;

.field public static final enum c:Ldx;

.field public static final enum d:Ldx;

.field public static final enum e:Ldx;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    new-instance v0, Ldx;

    const-string v1, "USER"

    invoke-direct {v0, v1, v2}, Ldx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldx;->a:Ldx;

    .line 124
    new-instance v0, Ldx;

    const-string v1, "GROUP"

    invoke-direct {v0, v1, v3}, Ldx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldx;->b:Ldx;

    .line 125
    new-instance v0, Ldx;

    const-string v1, "DOMAIN"

    invoke-direct {v0, v1, v4}, Ldx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldx;->c:Ldx;

    .line 126
    new-instance v0, Ldx;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v5}, Ldx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldx;->d:Ldx;

    .line 127
    new-instance v0, Ldx;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Ldx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldx;->e:Ldx;

    .line 122
    const/4 v0, 0x5

    new-array v0, v0, [Ldx;

    sget-object v1, Ldx;->a:Ldx;

    aput-object v1, v0, v2

    sget-object v1, Ldx;->b:Ldx;

    aput-object v1, v0, v3

    sget-object v1, Ldx;->c:Ldx;

    aput-object v1, v0, v4

    sget-object v1, Ldx;->d:Ldx;

    aput-object v1, v0, v5

    sget-object v1, Ldx;->e:Ldx;

    aput-object v1, v0, v6

    sput-object v0, Ldx;->a:[Ldx;

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
    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldx;
    .registers 2
    .parameter

    .prologue
    .line 122
    const-class v0, Ldx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldx;

    return-object v0
.end method

.method public static values()[Ldx;
    .registers 1

    .prologue
    .line 122
    sget-object v0, Ldx;->a:[Ldx;

    invoke-virtual {v0}, [Ldx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldx;

    return-object v0
.end method
