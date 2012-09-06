.class public final enum Lcom/google/googlenav/ui/wizard/cC;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/googlenav/ui/wizard/cC;

.field public static final enum b:Lcom/google/googlenav/ui/wizard/cC;

.field public static final enum c:Lcom/google/googlenav/ui/wizard/cC;

.field public static final enum d:Lcom/google/googlenav/ui/wizard/cC;

.field private static final synthetic g:[Lcom/google/googlenav/ui/wizard/cC;


# instance fields
.field private e:I

.field private f:LT/f;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lcom/google/googlenav/ui/wizard/cC;

    const-string v1, "HOME_GRAPH"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/google/googlenav/ui/wizard/cC;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/cC;->a:Lcom/google/googlenav/ui/wizard/cC;

    .line 54
    new-instance v0, Lcom/google/googlenav/ui/wizard/cC;

    const-string v1, "WORK_GRAPH"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v4, v2}, Lcom/google/googlenav/ui/wizard/cC;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/cC;->b:Lcom/google/googlenav/ui/wizard/cC;

    .line 55
    new-instance v0, Lcom/google/googlenav/ui/wizard/cC;

    const-string v1, "OUT_GRAPH"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v5, v2}, Lcom/google/googlenav/ui/wizard/cC;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/cC;->c:Lcom/google/googlenav/ui/wizard/cC;

    .line 56
    new-instance v0, Lcom/google/googlenav/ui/wizard/cC;

    const-string v1, "LAST_WEEK_GRAPH"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v6, v2}, Lcom/google/googlenav/ui/wizard/cC;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/cC;->d:Lcom/google/googlenav/ui/wizard/cC;

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/googlenav/ui/wizard/cC;

    sget-object v1, Lcom/google/googlenav/ui/wizard/cC;->a:Lcom/google/googlenav/ui/wizard/cC;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/ui/wizard/cC;->b:Lcom/google/googlenav/ui/wizard/cC;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlenav/ui/wizard/cC;->c:Lcom/google/googlenav/ui/wizard/cC;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/googlenav/ui/wizard/cC;->d:Lcom/google/googlenav/ui/wizard/cC;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/googlenav/ui/wizard/cC;->g:[Lcom/google/googlenav/ui/wizard/cC;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput p3, p0, Lcom/google/googlenav/ui/wizard/cC;->e:I

    .line 66
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/cC;
    .registers 2
    .parameter

    .prologue
    .line 52
    const-class v0, Lcom/google/googlenav/ui/wizard/cC;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/cC;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/ui/wizard/cC;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/googlenav/ui/wizard/cC;->g:[Lcom/google/googlenav/ui/wizard/cC;

    invoke-virtual {v0}, [Lcom/google/googlenav/ui/wizard/cC;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/ui/wizard/cC;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcom/google/googlenav/ui/wizard/cC;->e:I

    return v0
.end method

.method public a(LT/f;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cC;->f:LT/f;

    .line 80
    return-void
.end method

.method public b()LT/f;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cC;->f:LT/f;

    return-object v0
.end method
