.class Lcom/google/googlenav/friend/android/o;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/android/o;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/friend/android/i;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/o;-><init>()V

    return-void
.end method
