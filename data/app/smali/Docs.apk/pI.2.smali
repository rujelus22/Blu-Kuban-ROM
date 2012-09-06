.class public abstract enum LpI;
.super Ljava/lang/Enum;
.source "TermsOfServiceDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LpI;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LpI;

.field private static final synthetic a:[LpI;

.field public static final enum b:LpI;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, LpJ;

    const-string v1, "NO_ACCEPTANCE_REQUIRED"

    invoke-direct {v0, v1, v2}, LpJ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LpI;->a:LpI;

    .line 64
    new-instance v0, LpK;

    const-string v1, "ACCEPTANCE_REQUIRED_ONCE"

    invoke-direct {v0, v1, v3}, LpK;-><init>(Ljava/lang/String;I)V

    sput-object v0, LpI;->b:LpI;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [LpI;

    sget-object v1, LpI;->a:LpI;

    aput-object v1, v0, v2

    sget-object v1, LpI;->b:LpI;

    aput-object v1, v0, v3

    sput-object v0, LpI;->a:[LpI;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILpG;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, LpI;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LpI;
    .registers 2
    .parameter

    .prologue
    .line 52
    const-class v0, LpI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LpI;

    return-object v0
.end method

.method public static values()[LpI;
    .registers 1

    .prologue
    .line 52
    sget-object v0, LpI;->a:[LpI;

    invoke-virtual {v0}, [LpI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LpI;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lx;Landroid/content/Context;)V
.end method

.method public abstract a(Lx;Landroid/content/Context;)Z
.end method
