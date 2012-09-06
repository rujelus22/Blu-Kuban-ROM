.class final enum LajZ;
.super Ljava/lang/Enum;
.source "MapMakerInternalMap.java"

# interfaces
.implements Laka;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LajZ;",
        ">;",
        "Laka",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LajZ;

.field private static final synthetic a:[LajZ;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 772
    new-instance v0, LajZ;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, LajZ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LajZ;->a:LajZ;

    .line 771
    const/4 v0, 0x1

    new-array v0, v0, [LajZ;

    sget-object v1, LajZ;->a:LajZ;

    aput-object v1, v0, v2

    sput-object v0, LajZ;->a:[LajZ;

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
    .line 771
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LajZ;
    .registers 2
    .parameter

    .prologue
    .line 771
    const-class v0, LajZ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LajZ;

    return-object v0
.end method

.method public static values()[LajZ;
    .registers 1

    .prologue
    .line 771
    sget-object v0, LajZ;->a:[LajZ;

    invoke-virtual {v0}, [LajZ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LajZ;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 789
    const/4 v0, 0x0

    return v0
.end method

.method public a()J
    .registers 3

    .prologue
    .line 799
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a()Laka;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laka",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 784
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Lakr;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lakr",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 776
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 794
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 803
    return-void
.end method

.method public a(Laka;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 811
    return-void
.end method

.method public a(Lakr;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakr",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 780
    return-void
.end method

.method public b()Laka;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laka",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 807
    return-object p0
.end method

.method public b(Laka;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 819
    return-void
.end method

.method public c()Laka;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laka",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 815
    return-object p0
.end method

.method public c(Laka;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 827
    return-void
.end method

.method public d()Laka;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laka",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 823
    return-object p0
.end method

.method public d(Laka;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 835
    return-void
.end method

.method public e()Laka;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laka",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 831
    return-object p0
.end method
