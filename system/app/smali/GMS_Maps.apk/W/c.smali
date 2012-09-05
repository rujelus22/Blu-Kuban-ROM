.class LW/c;
.super Ljava/lang/Object;


# instance fields
.field public a:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LW/c;->a:I

    return-void
.end method

.method synthetic constructor <init>(LW/b;)V
    .registers 2

    invoke-direct {p0}, LW/c;-><init>()V

    return-void
.end method
