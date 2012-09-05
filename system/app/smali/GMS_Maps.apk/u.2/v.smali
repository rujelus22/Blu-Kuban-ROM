.class Lu/v;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lu/x;

.field private final b:I


# direct methods
.method private constructor <init>(Lu/x;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/v;->a:Lu/x;

    iput p2, p0, Lu/v;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lu/x;ILu/s;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lu/v;-><init>(Lu/x;I)V

    return-void
.end method

.method static synthetic a(Lu/v;)Lu/x;
    .registers 2

    iget-object v0, p0, Lu/v;->a:Lu/x;

    return-object v0
.end method

.method static synthetic b(Lu/v;)I
    .registers 2

    iget v0, p0, Lu/v;->b:I

    return v0
.end method
