.class public final enum LFv;
.super Ljava/lang/Enum;
.source "TestHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LFv;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LFv;

.field private static final synthetic a:[LFv;

.field public static final enum b:LFv;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, LFv;

    const-string v1, "READY_TO_TYPE"

    const-string v2, "ready_to_type"

    invoke-direct {v0, v1, v3, v2}, LFv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LFv;->a:LFv;

    .line 30
    new-instance v0, LFv;

    const-string v1, "CHANGES_SAVED"

    const-string v2, "changes_saved"

    invoke-direct {v0, v1, v4, v2}, LFv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LFv;->b:LFv;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [LFv;

    sget-object v1, LFv;->a:LFv;

    aput-object v1, v0, v3

    sget-object v1, LFv;->b:LFv;

    aput-object v1, v0, v4

    sput-object v0, LFv;->a:[LFv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, LFv;->a:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, LFv;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(LFv;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, LFv;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LFv;
    .registers 2
    .parameter

    .prologue
    .line 26
    const-class v0, LFv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LFv;

    return-object v0
.end method

.method public static values()[LFv;
    .registers 1

    .prologue
    .line 26
    sget-object v0, LFv;->a:[LFv;

    invoke-virtual {v0}, [LFv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LFv;

    return-object v0
.end method
