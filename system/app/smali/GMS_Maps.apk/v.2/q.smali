.class public Lv/q;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Lu/I;


# direct methods
.method public constructor <init>([Lu/I;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/q;->a:[Lu/I;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lv/q;->a:[Lu/I;

    array-length v0, v0

    return v0
.end method

.method public a(I)Lu/I;
    .registers 3

    iget-object v0, p0, Lv/q;->a:[Lu/I;

    aget-object v0, v0, p1

    return-object v0
.end method
