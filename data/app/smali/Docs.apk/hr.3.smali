.class final enum Lhr;
.super Ljava/lang/Enum;
.source "ShortcutDefinition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhr;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lhr;

.field private static final synthetic a:[Lhr;

.field public static final enum b:Lhr;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 150
    new-instance v0, Lhr;

    const-string v1, "NOT_EXPANDABLE"

    invoke-direct {v0, v1, v2}, Lhr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhr;->a:Lhr;

    new-instance v0, Lhr;

    const-string v1, "EXPANDABLE"

    invoke-direct {v0, v1, v3}, Lhr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhr;->b:Lhr;

    const/4 v0, 0x2

    new-array v0, v0, [Lhr;

    sget-object v1, Lhr;->a:Lhr;

    aput-object v1, v0, v2

    sget-object v1, Lhr;->b:Lhr;

    aput-object v1, v0, v3

    sput-object v0, Lhr;->a:[Lhr;

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
    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhr;
    .registers 2
    .parameter

    .prologue
    .line 150
    const-class v0, Lhr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhr;

    return-object v0
.end method

.method public static values()[Lhr;
    .registers 1

    .prologue
    .line 150
    sget-object v0, Lhr;->a:[Lhr;

    invoke-virtual {v0}, [Lhr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhr;

    return-object v0
.end method
