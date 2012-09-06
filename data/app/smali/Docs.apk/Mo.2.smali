.class final enum LMo;
.super Ljava/lang/Enum;
.source "FieldDefinition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LMo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LMo;

.field private static final synthetic a:[LMo;

.field public static final enum b:LMo;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, LMo;

    const-string v1, "CASCADE"

    const-string v2, "CASCADE"

    invoke-direct {v0, v1, v3, v2}, LMo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LMo;->a:LMo;

    .line 46
    new-instance v0, LMo;

    const-string v1, "SET_NULL"

    const-string v2, "SET NULL"

    invoke-direct {v0, v1, v4, v2}, LMo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LMo;->b:LMo;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [LMo;

    sget-object v1, LMo;->a:LMo;

    aput-object v1, v0, v3

    sget-object v1, LMo;->b:LMo;

    aput-object v1, v0, v4

    sput-object v0, LMo;->a:[LMo;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    invoke-static {p3}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iput-object p3, p0, LMo;->a:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LMo;
    .registers 2
    .parameter

    .prologue
    .line 44
    const-class v0, LMo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LMo;

    return-object v0
.end method

.method public static values()[LMo;
    .registers 1

    .prologue
    .line 44
    sget-object v0, LMo;->a:[LMo;

    invoke-virtual {v0}, [LMo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LMo;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, LMo;->a:Ljava/lang/String;

    return-object v0
.end method
