.class public Lt/s;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/common/base/o;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lt/t;

    invoke-direct {v0}, Lt/t;-><init>()V

    sput-object v0, Lt/s;->a:Lcom/google/common/base/o;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
