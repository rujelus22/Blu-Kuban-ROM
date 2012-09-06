.class public final enum LDX;
.super Ljava/lang/Enum;
.source "TextKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LDX;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LDX;

.field private static final synthetic a:[LDX;

.field public static final enum b:LDX;

.field public static final enum c:LDX;

.field public static final enum d:LDX;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 219
    new-instance v0, LDX;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, LDX;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDX;->a:LDX;

    new-instance v0, LDX;

    const-string v1, "SENTENCES"

    invoke-direct {v0, v1, v3}, LDX;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDX;->b:LDX;

    new-instance v0, LDX;

    const-string v1, "WORDS"

    invoke-direct {v0, v1, v4}, LDX;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDX;->c:LDX;

    new-instance v0, LDX;

    const-string v1, "CHARACTERS"

    invoke-direct {v0, v1, v5}, LDX;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDX;->d:LDX;

    .line 218
    const/4 v0, 0x4

    new-array v0, v0, [LDX;

    sget-object v1, LDX;->a:LDX;

    aput-object v1, v0, v2

    sget-object v1, LDX;->b:LDX;

    aput-object v1, v0, v3

    sget-object v1, LDX;->c:LDX;

    aput-object v1, v0, v4

    sget-object v1, LDX;->d:LDX;

    aput-object v1, v0, v5

    sput-object v0, LDX;->a:[LDX;

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
    .line 218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LDX;
    .registers 2
    .parameter

    .prologue
    .line 218
    const-class v0, LDX;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LDX;

    return-object v0
.end method

.method public static values()[LDX;
    .registers 1

    .prologue
    .line 218
    sget-object v0, LDX;->a:[LDX;

    invoke-virtual {v0}, [LDX;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LDX;

    return-object v0
.end method
