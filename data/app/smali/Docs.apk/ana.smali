.class public final enum Lana;
.super Ljava/lang/Enum;
.source "JsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lana;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lana;

.field private static final synthetic a:[Lana;

.field public static final enum b:Lana;

.field public static final enum c:Lana;

.field public static final enum d:Lana;

.field public static final enum e:Lana;

.field public static final enum f:Lana;

.field public static final enum g:Lana;

.field public static final enum h:Lana;

.field public static final enum i:Lana;

.field public static final enum j:Lana;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lana;

    const-string v1, "BEGIN_ARRAY"

    invoke-direct {v0, v1, v3}, Lana;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lana;->a:Lana;

    .line 37
    new-instance v0, Lana;

    const-string v1, "END_ARRAY"

    invoke-direct {v0, v1, v4}, Lana;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lana;->b:Lana;

    .line 43
    new-instance v0, Lana;

    const-string v1, "BEGIN_OBJECT"

    invoke-direct {v0, v1, v5}, Lana;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lana;->c:Lana;

    .line 49
    new-instance v0, Lana;

    const-string v1, "END_OBJECT"

    invoke-direct {v0, v1, v6}, Lana;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lana;->d:Lana;

    .line 56
    new-instance v0, Lana;

    const-string v1, "NAME"

    invoke-direct {v0, v1, v7}, Lana;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lana;->e:Lana;

    .line 61
    new-instance v0, Lana;

    const-string v1, "STRING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lana;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lana;->f:Lana;

    .line 67
    new-instance v0, Lana;

    const-string v1, "NUMBER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lana;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lana;->g:Lana;

    .line 72
    new-instance v0, Lana;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lana;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lana;->h:Lana;

    .line 77
    new-instance v0, Lana;

    const-string v1, "NULL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lana;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lana;->i:Lana;

    .line 84
    new-instance v0, Lana;

    const-string v1, "END_DOCUMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lana;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lana;->j:Lana;

    .line 25
    const/16 v0, 0xa

    new-array v0, v0, [Lana;

    sget-object v1, Lana;->a:Lana;

    aput-object v1, v0, v3

    sget-object v1, Lana;->b:Lana;

    aput-object v1, v0, v4

    sget-object v1, Lana;->c:Lana;

    aput-object v1, v0, v5

    sget-object v1, Lana;->d:Lana;

    aput-object v1, v0, v6

    sget-object v1, Lana;->e:Lana;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lana;->f:Lana;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lana;->g:Lana;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lana;->h:Lana;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lana;->i:Lana;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lana;->j:Lana;

    aput-object v2, v0, v1

    sput-object v0, Lana;->a:[Lana;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lana;
    .registers 2
    .parameter

    .prologue
    .line 25
    const-class v0, Lana;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lana;

    return-object v0
.end method

.method public static values()[Lana;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lana;->a:[Lana;

    invoke-virtual {v0}, [Lana;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lana;

    return-object v0
.end method
