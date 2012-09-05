.class final Lcom/google/common/collect/bl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    sput-object v0, Lcom/google/common/collect/bl;->a:Ljava/util/Timer;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
