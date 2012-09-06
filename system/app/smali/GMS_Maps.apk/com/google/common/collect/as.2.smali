.class final enum Lcom/google/common/collect/as;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/au;


# static fields
.field public static final enum a:Lcom/google/common/collect/as;

.field private static final synthetic b:[Lcom/google/common/collect/as;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 737
    new-instance v0, Lcom/google/common/collect/as;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/as;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/as;->a:Lcom/google/common/collect/as;

    .line 736
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/collect/as;

    sget-object v1, Lcom/google/common/collect/as;->a:Lcom/google/common/collect/as;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/collect/as;->b:[Lcom/google/common/collect/as;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 736
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/as;
    .registers 2
    .parameter

    .prologue
    .line 736
    const-class v0, Lcom/google/common/collect/as;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/as;

    return-object v0
.end method

.method public static values()[Lcom/google/common/collect/as;
    .registers 1

    .prologue
    .line 736
    sget-object v0, Lcom/google/common/collect/as;->b:[Lcom/google/common/collect/as;

    invoke-virtual {v0}, [Lcom/google/common/collect/as;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/as;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/common/collect/aS;
    .registers 2

    .prologue
    .line 741
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 768
    return-void
.end method

.method public a(Lcom/google/common/collect/aS;)V
    .registers 2
    .parameter

    .prologue
    .line 745
    return-void
.end method

.method public a(Lcom/google/common/collect/au;)V
    .registers 2
    .parameter

    .prologue
    .line 774
    return-void
.end method

.method public b()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 752
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lcom/google/common/collect/aS;)V
    .registers 2
    .parameter

    .prologue
    .line 749
    return-void
.end method

.method public b(Lcom/google/common/collect/au;)V
    .registers 2
    .parameter

    .prologue
    .line 781
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 756
    const/4 v0, 0x0

    return v0
.end method

.method public c(Lcom/google/common/collect/au;)V
    .registers 2
    .parameter

    .prologue
    .line 788
    return-void
.end method

.method public d()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 760
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Lcom/google/common/collect/au;)V
    .registers 2
    .parameter

    .prologue
    .line 795
    return-void
.end method

.method public e()J
    .registers 3

    .prologue
    .line 765
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public f()Lcom/google/common/collect/au;
    .registers 1

    .prologue
    .line 771
    return-object p0
.end method

.method public g()Lcom/google/common/collect/au;
    .registers 1

    .prologue
    .line 778
    return-object p0
.end method

.method public h()Lcom/google/common/collect/au;
    .registers 1

    .prologue
    .line 785
    return-object p0
.end method

.method public i()Lcom/google/common/collect/au;
    .registers 1

    .prologue
    .line 792
    return-object p0
.end method
