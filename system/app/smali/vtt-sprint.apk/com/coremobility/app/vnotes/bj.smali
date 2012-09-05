.class public final Lcom/coremobility/app/vnotes/bj;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:J


# direct methods
.method constructor <init>(IJ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coremobility/app/vnotes/bj;->a:I

    iput-wide p2, p0, Lcom/coremobility/app/vnotes/bj;->b:J

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/coremobility/app/vnotes/bj;->a:I

    return v0
.end method

.method public final b()J
    .registers 3

    iget-wide v0, p0, Lcom/coremobility/app/vnotes/bj;->b:J

    return-wide v0
.end method
