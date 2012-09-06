.class Lcom/google/googlenav/friend/android/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/android/o;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/friend/android/i;)V
    .registers 2
    .parameter

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/o;-><init>()V

    return-void
.end method
