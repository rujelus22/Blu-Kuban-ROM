.class public abstract Lcom/google/common/base/an;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/common/base/an;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    new-instance v0, Lcom/google/common/base/ao;

    invoke-direct {v0}, Lcom/google/common/base/ao;-><init>()V

    sput-object v0, Lcom/google/common/base/an;->a:Lcom/google/common/base/an;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/common/base/an;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/common/base/an;->a:Lcom/google/common/base/an;

    return-object v0
.end method


# virtual methods
.method public abstract a()J
.end method
