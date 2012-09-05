.class public LaR/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, LaR/h;->a:J

    iput-wide p3, p0, LaR/h;->b:J

    iput-object p5, p0, LaR/h;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, LaR/h;->a:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaR/h;->c:Ljava/lang/String;

    return-object v0
.end method
