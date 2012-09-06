.class public final enum Lnw;
.super Ljava/lang/Enum;
.source "EntryViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnw;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lnw;

.field private static final synthetic a:[Lnw;

.field public static final enum b:Lnw;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    new-instance v0, Lnw;

    const-string v1, "WAITING"

    invoke-direct {v0, v1, v2}, Lnw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnw;->a:Lnw;

    .line 94
    new-instance v0, Lnw;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v3}, Lnw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnw;->b:Lnw;

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [Lnw;

    sget-object v1, Lnw;->a:Lnw;

    aput-object v1, v0, v2

    sget-object v1, Lnw;->b:Lnw;

    aput-object v1, v0, v3

    sput-object v0, Lnw;->a:[Lnw;

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
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnw;
    .registers 2
    .parameter

    .prologue
    .line 92
    const-class v0, Lnw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnw;

    return-object v0
.end method

.method public static values()[Lnw;
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lnw;->a:[Lnw;

    invoke-virtual {v0}, [Lnw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnw;

    return-object v0
.end method
