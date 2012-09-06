.class LbW;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final a:J

.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method constructor <init>(Ljava/lang/String;JII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LbW;->a:Ljava/lang/String;

    iput-wide p2, p0, LbW;->a:J

    iput p4, p0, LbW;->a:I

    iput p5, p0, LbW;->b:I

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, LbW;->a:I

    return v0
.end method

.method a()J
    .registers 3

    iget-wide v0, p0, LbW;->a:J

    return-wide v0
.end method

.method a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LbW;->a:Ljava/lang/String;

    return-object v0
.end method

.method b()I
    .registers 2

    iget v0, p0, LbW;->b:I

    return v0
.end method
