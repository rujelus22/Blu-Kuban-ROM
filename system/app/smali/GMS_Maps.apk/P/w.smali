.class Lp/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lm/b;

.field private final b:Lo/x;


# direct methods
.method private constructor <init>(Lm/b;Lo/x;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lp/w;->a:Lm/b;

    .line 188
    iput-object p2, p0, Lp/w;->b:Lo/x;

    .line 189
    return-void
.end method

.method synthetic constructor <init>(Lm/b;Lo/x;Lp/v;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-direct {p0, p1, p2}, Lp/w;-><init>(Lm/b;Lo/x;)V

    return-void
.end method

.method static synthetic a(Lp/w;)Lm/b;
    .registers 2
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lp/w;->a:Lm/b;

    return-object v0
.end method

.method static synthetic b(Lp/w;)Lo/x;
    .registers 2
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lp/w;->b:Lo/x;

    return-object v0
.end method
