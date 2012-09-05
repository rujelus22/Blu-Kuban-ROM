.class public abstract Lbw/o;
.super Lbw/a;

# interfaces
.implements Lbv/f;


# static fields
.field private static c:Lcom/google/gmm/debug/c;


# instance fields
.field protected a:Lbv/e;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lbw/o;

    invoke-static {v0}, Lcom/google/gmm/debug/c;->a(Ljava/lang/Class;)Lcom/google/gmm/debug/c;

    move-result-object v0

    sput-object v0, Lbw/o;->c:Lcom/google/gmm/debug/c;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Lbw/a;-><init>()V

    invoke-virtual {p0, p1}, Lbw/o;->a(I)V

    iput p2, p0, Lbw/o;->b:I

    return-void
.end method

.method public constructor <init>(Lbv/e;)V
    .registers 5

    invoke-direct {p0}, Lbw/a;-><init>()V

    iput-object p1, p0, Lbw/o;->a:Lbv/e;

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_a
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    invoke-virtual {p0, v1}, Lbw/o;->a(I)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lbw/o;->b:I
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_17} :catch_40

    sget-object v0, Lbw/o;->c:Lcom/google/gmm/debug/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lbw/o;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbw/o;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gmm/debug/c;->b(Ljava/lang/Object;)V

    return-void

    :catch_40
    move-exception v0

    sget-object v1, Lbw/o;->c:Lcom/google/gmm/debug/c;

    const-string v2, "Response() - IOException when reading block payload"

    invoke-virtual {v1, v2, v0}, Lcom/google/gmm/debug/c;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public abstract a_()I
.end method

.method public abstract b_()Ljava/io/InputStream;
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lbw/o;->b:I

    return v0
.end method

.method public h()V
    .registers 2

    iget-object v0, p0, Lbw/o;->a:Lbv/e;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lbw/o;->a:Lbv/e;

    invoke-virtual {v0}, Lbv/e;->b()V

    :cond_9
    return-void
.end method
