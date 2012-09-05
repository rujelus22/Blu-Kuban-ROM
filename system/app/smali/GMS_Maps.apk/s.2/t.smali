.class Ls/t;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ls/t;->a:I

    iput p2, p0, Ls/t;->b:I

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Ls/t;->a:I

    return v0
.end method

.method b()I
    .registers 2

    iget v0, p0, Ls/t;->b:I

    return v0
.end method
