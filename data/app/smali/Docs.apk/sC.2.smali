.class final enum LsC;
.super Ljava/lang/Enum;
.source "EntriesGrouper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LsC;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LsC;

.field private static final synthetic a:[LsC;

.field public static final enum b:LsC;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, LsC;

    const-string v1, "ASC"

    invoke-direct {v0, v1, v2}, LsC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LsC;->a:LsC;

    .line 25
    new-instance v0, LsC;

    const-string v1, "DESC"

    invoke-direct {v0, v1, v3}, LsC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LsC;->b:LsC;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [LsC;

    sget-object v1, LsC;->a:LsC;

    aput-object v1, v0, v2

    sget-object v1, LsC;->b:LsC;

    aput-object v1, v0, v3

    sput-object v0, LsC;->a:[LsC;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LsC;
    .registers 2
    .parameter

    .prologue
    .line 22
    const-class v0, LsC;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LsC;

    return-object v0
.end method

.method public static values()[LsC;
    .registers 1

    .prologue
    .line 22
    sget-object v0, LsC;->a:[LsC;

    invoke-virtual {v0}, [LsC;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LsC;

    return-object v0
.end method
