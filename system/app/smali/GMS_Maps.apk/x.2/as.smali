.class Lx/as;
.super Ljava/lang/Object;


# instance fields
.field final a:J

.field final b:Ljava/lang/String;

.field final c:I

.field final d:[B

.field final e:Lt/ae;


# direct methods
.method constructor <init>(JLjava/lang/String;I[BLt/ae;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lx/as;->a:J

    iput-object p3, p0, Lx/as;->b:Ljava/lang/String;

    iput p4, p0, Lx/as;->c:I

    iput-object p5, p0, Lx/as;->d:[B

    iput-object p6, p0, Lx/as;->e:Lt/ae;

    return-void
.end method
