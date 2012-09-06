.class public Lp/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Lo/I;


# direct methods
.method public constructor <init>([Lo/I;)V
    .registers 2
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lp/q;->a:[Lo/I;

    .line 18
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lp/q;->a:[Lo/I;

    array-length v0, v0

    return v0
.end method

.method public a(I)Lo/I;
    .registers 3
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lp/q;->a:[Lo/I;

    aget-object v0, v0, p1

    return-object v0
.end method
