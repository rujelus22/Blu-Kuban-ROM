.class final enum Lnq;
.super Ljava/lang/Enum;
.source "EntriesFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lnq;

.field private static final synthetic a:[Lnq;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 158
    new-instance v0, Lnq;

    const-string v1, "USER_NAME"

    invoke-direct {v0, v1, v2}, Lnq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnq;->a:Lnq;

    .line 157
    const/4 v0, 0x1

    new-array v0, v0, [Lnq;

    sget-object v1, Lnq;->a:Lnq;

    aput-object v1, v0, v2

    sput-object v0, Lnq;->a:[Lnq;

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
    .line 157
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnq;
    .registers 2
    .parameter

    .prologue
    .line 157
    const-class v0, Lnq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnq;

    return-object v0
.end method

.method public static values()[Lnq;
    .registers 1

    .prologue
    .line 157
    sget-object v0, Lnq;->a:[Lnq;

    invoke-virtual {v0}, [Lnq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnq;

    return-object v0
.end method
