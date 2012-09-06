.class final enum LMp;
.super Ljava/lang/Enum;
.source "FieldDefinition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LMp;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LMp;

.field private static final synthetic a:[LMp;

.field public static final enum b:LMp;

.field public static final enum c:LMp;

.field public static final enum d:LMp;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, LMp;

    const-string v1, "INTEGER"

    const-string v2, "value_int"

    invoke-direct {v0, v1, v3, v2}, LMp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LMp;->a:LMp;

    .line 29
    new-instance v0, LMp;

    const-string v1, "REAL"

    const-string v2, "value_real"

    invoke-direct {v0, v1, v4, v2}, LMp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LMp;->b:LMp;

    .line 30
    new-instance v0, LMp;

    const-string v1, "TEXT"

    const-string v2, "value_txt"

    invoke-direct {v0, v1, v5, v2}, LMp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LMp;->c:LMp;

    .line 31
    new-instance v0, LMp;

    const-string v1, "BLOB"

    const-string v2, "value_blob"

    invoke-direct {v0, v1, v6, v2}, LMp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LMp;->d:LMp;

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [LMp;

    sget-object v1, LMp;->a:LMp;

    aput-object v1, v0, v3

    sget-object v1, LMp;->b:LMp;

    aput-object v1, v0, v4

    sget-object v1, LMp;->c:LMp;

    aput-object v1, v0, v5

    sget-object v1, LMp;->d:LMp;

    aput-object v1, v0, v6

    sput-object v0, LMp;->a:[LMp;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, LMp;->a:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LMp;
    .registers 2
    .parameter

    .prologue
    .line 27
    const-class v0, LMp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LMp;

    return-object v0
.end method

.method public static values()[LMp;
    .registers 1

    .prologue
    .line 27
    sget-object v0, LMp;->a:[LMp;

    invoke-virtual {v0}, [LMp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LMp;

    return-object v0
.end method
