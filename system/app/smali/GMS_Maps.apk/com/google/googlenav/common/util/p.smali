.class public Lcom/google/googlenav/common/util/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/googlenav/common/util/s;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 69
    invoke-static {}, Lcom/google/googlenav/common/util/p;->a()V

    .line 70
    return-void
.end method

.method public static a(I)Ljava/lang/Integer;
    .registers 2
    .parameter

    .prologue
    .line 102
    sget-object v0, Lcom/google/googlenav/common/util/p;->a:Lcom/google/googlenav/common/util/s;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/common/util/s;->a(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Ljava/lang/Long;
    .registers 3
    .parameter

    .prologue
    .line 95
    sget-object v0, Lcom/google/googlenav/common/util/p;->a:Lcom/google/googlenav/common/util/s;

    invoke-virtual {v0, p0, p1}, Lcom/google/googlenav/common/util/s;->a(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static a()V
    .registers 2

    .prologue
    .line 87
    new-instance v0, Lcom/google/googlenav/common/util/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/util/r;-><init>(Lcom/google/googlenav/common/util/q;)V

    sput-object v0, Lcom/google/googlenav/common/util/p;->a:Lcom/google/googlenav/common/util/s;

    .line 88
    return-void
.end method
