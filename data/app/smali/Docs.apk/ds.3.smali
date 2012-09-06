.class public final enum Lds;
.super Ljava/lang/Enum;
.source "AclType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lds;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lds;

.field private static final synthetic a:[Lds;

.field public static final enum b:Lds;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lds;

    const-string v1, "COMMENTER"

    invoke-direct {v0, v1, v2}, Lds;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lds;->a:Lds;

    .line 49
    new-instance v0, Lds;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lds;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lds;->b:Lds;

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Lds;

    sget-object v1, Lds;->a:Lds;

    aput-object v1, v0, v2

    sget-object v1, Lds;->b:Lds;

    aput-object v1, v0, v3

    sput-object v0, Lds;->a:[Lds;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lds;
    .registers 2
    .parameter

    .prologue
    .line 47
    const-class v0, Lds;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lds;

    return-object v0
.end method

.method public static values()[Lds;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lds;->a:[Lds;

    invoke-virtual {v0}, [Lds;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lds;

    return-object v0
.end method
