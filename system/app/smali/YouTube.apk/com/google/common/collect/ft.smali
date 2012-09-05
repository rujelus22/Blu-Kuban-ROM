.class final Lcom/google/common/collect/ft;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/common/collect/Ordering;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 200
    new-instance v0, Lcom/google/common/collect/fr;

    invoke-direct {v0}, Lcom/google/common/collect/fr;-><init>()V

    sput-object v0, Lcom/google/common/collect/ft;->a:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
