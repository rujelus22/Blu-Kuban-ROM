.class Lv/w;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ls/b;

.field private final b:Lu/x;


# direct methods
.method private constructor <init>(Ls/b;Lu/x;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/w;->a:Ls/b;

    iput-object p2, p0, Lv/w;->b:Lu/x;

    return-void
.end method

.method synthetic constructor <init>(Ls/b;Lu/x;Lv/v;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lv/w;-><init>(Ls/b;Lu/x;)V

    return-void
.end method

.method static synthetic a(Lv/w;)Ls/b;
    .registers 2

    iget-object v0, p0, Lv/w;->a:Ls/b;

    return-object v0
.end method

.method static synthetic b(Lv/w;)Lu/x;
    .registers 2

    iget-object v0, p0, Lv/w;->b:Lu/x;

    return-object v0
.end method
