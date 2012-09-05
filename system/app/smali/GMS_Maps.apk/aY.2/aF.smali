.class public LaY/aF;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, LaY/aF;->a:J

    iput-object p3, p0, LaY/aF;->b:Ljava/lang/String;

    iput-object p4, p0, LaY/aF;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, LaY/aF;->a:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaY/aF;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaY/aF;->c:Ljava/lang/String;

    return-object v0
.end method
