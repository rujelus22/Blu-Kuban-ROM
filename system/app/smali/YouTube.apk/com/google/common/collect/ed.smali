.class final Lcom/google/common/collect/ed;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/common/base/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 837
    new-instance v0, Lcom/google/common/base/d;

    invoke-direct {v0}, Lcom/google/common/base/d;-><init>()V

    sput-object v0, Lcom/google/common/collect/ed;->a:Lcom/google/common/base/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
