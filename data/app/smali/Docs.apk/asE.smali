.class LasE;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final a:Ljava/lang/String;


# direct methods
.method static synthetic a(LasE;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, LasE;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    iget v0, p0, LasE;->a:I

    iget-object v1, p0, LasE;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a()Z
    .registers 3

    iget-object v0, p0, LasE;->a:Ljava/lang/String;

    iget v1, p0, LasE;->a:I

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(LasE;)Z
    .registers 2

    invoke-direct {p0}, LasE;->a()Z

    move-result v0

    return v0
.end method
