.class Lo/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lo/x;

.field private final b:I


# direct methods
.method private constructor <init>(Lo/x;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    iput-object p1, p0, Lo/v;->a:Lo/x;

    .line 631
    iput p2, p0, Lo/v;->b:I

    .line 632
    return-void
.end method

.method synthetic constructor <init>(Lo/x;ILo/s;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 621
    invoke-direct {p0, p1, p2}, Lo/v;-><init>(Lo/x;I)V

    return-void
.end method

.method static synthetic a(Lo/v;)Lo/x;
    .registers 2
    .parameter

    .prologue
    .line 621
    iget-object v0, p0, Lo/v;->a:Lo/x;

    return-object v0
.end method

.method static synthetic b(Lo/v;)I
    .registers 2
    .parameter

    .prologue
    .line 621
    iget v0, p0, Lo/v;->b:I

    return v0
.end method
