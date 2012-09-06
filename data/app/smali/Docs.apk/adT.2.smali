.class public final enum LadT;
.super Ljava/lang/Enum;
.source "JsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LadT;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LadT;

.field private static final synthetic a:[LadT;

.field public static final enum b:LadT;

.field public static final enum c:LadT;

.field public static final enum d:LadT;

.field public static final enum e:LadT;

.field public static final enum f:LadT;

.field public static final enum g:LadT;

.field public static final enum h:LadT;

.field public static final enum i:LadT;

.field public static final enum j:LadT;

.field public static final enum k:LadT;

.field public static final enum l:LadT;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, LadT;

    const-string v1, "START_ARRAY"

    invoke-direct {v0, v1, v3}, LadT;-><init>(Ljava/lang/String;I)V

    sput-object v0, LadT;->a:LadT;

    .line 29
    new-instance v0, LadT;

    const-string v1, "END_ARRAY"

    invoke-direct {v0, v1, v4}, LadT;-><init>(Ljava/lang/String;I)V

    sput-object v0, LadT;->b:LadT;

    .line 32
    new-instance v0, LadT;

    const-string v1, "START_OBJECT"

    invoke-direct {v0, v1, v5}, LadT;-><init>(Ljava/lang/String;I)V

    sput-object v0, LadT;->c:LadT;

    .line 35
    new-instance v0, LadT;

    const-string v1, "END_OBJECT"

    invoke-direct {v0, v1, v6}, LadT;-><init>(Ljava/lang/String;I)V

    sput-object v0, LadT;->d:LadT;

    .line 38
    new-instance v0, LadT;

    const-string v1, "FIELD_NAME"

    invoke-direct {v0, v1, v7}, LadT;-><init>(Ljava/lang/String;I)V

    sput-object v0, LadT;->e:LadT;

    .line 41
    new-instance v0, LadT;

    const-string v1, "VALUE_STRING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LadT;-><init>(Ljava/lang/String;I)V

    sput-object v0, LadT;->f:LadT;

    .line 47
    new-instance v0, LadT;

    const-string v1, "VALUE_NUMBER_INT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LadT;-><init>(Ljava/lang/String;I)V

    sput-object v0, LadT;->g:LadT;

    .line 50
    new-instance v0, LadT;

    const-string v1, "VALUE_NUMBER_FLOAT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LadT;-><init>(Ljava/lang/String;I)V

    sput-object v0, LadT;->h:LadT;

    .line 53
    new-instance v0, LadT;

    const-string v1, "VALUE_TRUE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, LadT;-><init>(Ljava/lang/String;I)V

    sput-object v0, LadT;->i:LadT;

    .line 56
    new-instance v0, LadT;

    const-string v1, "VALUE_FALSE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LadT;-><init>(Ljava/lang/String;I)V

    sput-object v0, LadT;->j:LadT;

    .line 59
    new-instance v0, LadT;

    const-string v1, "VALUE_NULL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, LadT;-><init>(Ljava/lang/String;I)V

    sput-object v0, LadT;->k:LadT;

    .line 62
    new-instance v0, LadT;

    const-string v1, "NOT_AVAILABLE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, LadT;-><init>(Ljava/lang/String;I)V

    sput-object v0, LadT;->l:LadT;

    .line 23
    const/16 v0, 0xc

    new-array v0, v0, [LadT;

    sget-object v1, LadT;->a:LadT;

    aput-object v1, v0, v3

    sget-object v1, LadT;->b:LadT;

    aput-object v1, v0, v4

    sget-object v1, LadT;->c:LadT;

    aput-object v1, v0, v5

    sget-object v1, LadT;->d:LadT;

    aput-object v1, v0, v6

    sget-object v1, LadT;->e:LadT;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, LadT;->f:LadT;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LadT;->g:LadT;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LadT;->h:LadT;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, LadT;->i:LadT;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, LadT;->j:LadT;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, LadT;->k:LadT;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, LadT;->l:LadT;

    aput-object v2, v0, v1

    sput-object v0, LadT;->a:[LadT;

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

.method public static valueOf(Ljava/lang/String;)LadT;
    .registers 2
    .parameter

    .prologue
    .line 23
    const-class v0, LadT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LadT;

    return-object v0
.end method

.method public static values()[LadT;
    .registers 1

    .prologue
    .line 23
    sget-object v0, LadT;->a:[LadT;

    invoke-virtual {v0}, [LadT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LadT;

    return-object v0
.end method
