.class final enum Lcom/google/googlenav/settings/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/googlenav/settings/f;

.field public static final enum b:Lcom/google/googlenav/settings/f;

.field public static final enum c:Lcom/google/googlenav/settings/f;

.field private static final synthetic h:[Lcom/google/googlenav/settings/f;


# instance fields
.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 84
    new-instance v0, Lcom/google/googlenav/settings/f;

    const-string v1, "AUTOMATIC"

    const/16 v4, 0x4c

    const/16 v5, 0x5eb

    const/16 v6, 0x5ec

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/settings/f;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/google/googlenav/settings/f;->a:Lcom/google/googlenav/settings/f;

    .line 86
    new-instance v3, Lcom/google/googlenav/settings/f;

    const-string v4, "METRIC"

    const/16 v7, 0x4d

    const/16 v8, 0x5f0

    const/16 v9, 0x5ee

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v9}, Lcom/google/googlenav/settings/f;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/google/googlenav/settings/f;->b:Lcom/google/googlenav/settings/f;

    .line 88
    new-instance v3, Lcom/google/googlenav/settings/f;

    const-string v4, "IMPERIAL"

    const/16 v7, 0x4e

    const/16 v8, 0x5ef

    const/16 v9, 0x5ed

    move v5, v11

    move v6, v11

    invoke-direct/range {v3 .. v9}, Lcom/google/googlenav/settings/f;-><init>(Ljava/lang/String;IIIII)V

    sput-object v3, Lcom/google/googlenav/settings/f;->c:Lcom/google/googlenav/settings/f;

    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/googlenav/settings/f;

    sget-object v1, Lcom/google/googlenav/settings/f;->a:Lcom/google/googlenav/settings/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/settings/f;->b:Lcom/google/googlenav/settings/f;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/googlenav/settings/f;->c:Lcom/google/googlenav/settings/f;

    aput-object v1, v0, v11

    sput-object v0, Lcom/google/googlenav/settings/f;->h:[Lcom/google/googlenav/settings/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    iput p3, p0, Lcom/google/googlenav/settings/f;->d:I

    .line 98
    iput p4, p0, Lcom/google/googlenav/settings/f;->e:I

    .line 99
    iput p5, p0, Lcom/google/googlenav/settings/f;->f:I

    .line 100
    iput p6, p0, Lcom/google/googlenav/settings/f;->g:I

    .line 101
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/settings/f;)I
    .registers 2
    .parameter

    .prologue
    .line 83
    iget v0, p0, Lcom/google/googlenav/settings/f;->d:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/settings/f;
    .registers 2
    .parameter

    .prologue
    .line 83
    const-class v0, Lcom/google/googlenav/settings/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/settings/f;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/settings/f;
    .registers 1

    .prologue
    .line 83
    sget-object v0, Lcom/google/googlenav/settings/f;->h:[Lcom/google/googlenav/settings/f;

    invoke-virtual {v0}, [Lcom/google/googlenav/settings/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/settings/f;

    return-object v0
.end method
