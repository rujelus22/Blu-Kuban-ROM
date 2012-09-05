.class public Le/F;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:J

.field private volatile c:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/F;->a:Ljava/lang/Object;

    iput-wide p2, p0, Le/F;->b:J

    iput-wide p2, p0, Le/F;->c:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Le/F;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(J)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Le/F;->b(J)V

    iget-object v0, p0, Le/F;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Le/F;->b:J

    return-wide v0
.end method

.method public b(J)V
    .registers 3

    iput-wide p1, p0, Le/F;->c:J

    return-void
.end method

.method public c()J
    .registers 3

    iget-wide v0, p0, Le/F;->c:J

    return-wide v0
.end method
