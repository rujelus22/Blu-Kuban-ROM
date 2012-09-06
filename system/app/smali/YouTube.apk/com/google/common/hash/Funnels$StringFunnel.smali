.class final enum Lcom/google/common/hash/Funnels$StringFunnel;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/hash/f;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/hash/Funnels$StringFunnel;

.field public static final enum INSTANCE:Lcom/google/common/hash/Funnels$StringFunnel;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/google/common/hash/Funnels$StringFunnel;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/Funnels$StringFunnel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/hash/Funnels$StringFunnel;->INSTANCE:Lcom/google/common/hash/Funnels$StringFunnel;

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/hash/Funnels$StringFunnel;

    sget-object v1, Lcom/google/common/hash/Funnels$StringFunnel;->INSTANCE:Lcom/google/common/hash/Funnels$StringFunnel;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/hash/Funnels$StringFunnel;->$VALUES:[Lcom/google/common/hash/Funnels$StringFunnel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/Funnels$StringFunnel;
    .registers 2
    .parameter

    .prologue
    .line 55
    const-class v0, Lcom/google/common/hash/Funnels$StringFunnel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/Funnels$StringFunnel;

    return-object v0
.end method

.method public static values()[Lcom/google/common/hash/Funnels$StringFunnel;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/common/hash/Funnels$StringFunnel;->$VALUES:[Lcom/google/common/hash/Funnels$StringFunnel;

    invoke-virtual {v0}, [Lcom/google/common/hash/Funnels$StringFunnel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/Funnels$StringFunnel;

    return-object v0
.end method


# virtual methods
.method public final funnel(Ljava/lang/CharSequence;Lcom/google/common/hash/r;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-interface {p2, p1}, Lcom/google/common/hash/r;->b(Ljava/lang/CharSequence;)Lcom/google/common/hash/r;

    .line 60
    return-void
.end method

.method public final bridge synthetic funnel(Ljava/lang/Object;Lcom/google/common/hash/r;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 55
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/Funnels$StringFunnel;->funnel(Ljava/lang/CharSequence;Lcom/google/common/hash/r;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    const-string v0, "Funnels.stringFunnel()"

    return-object v0
.end method
