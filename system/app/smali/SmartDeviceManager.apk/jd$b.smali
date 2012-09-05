.class final Ljd$b;
.super Ljd;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 88
    const-class v0, Ljava/lang/Byte;

    invoke-direct {p0, v0}, Ljd;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/String;Lhc;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, -0x80

    if-lt v0, v1, :cond_c

    const/16 v1, 0x7f

    if-le v0, v1, :cond_15

    :cond_c
    iget-object v0, p0, Ljd$b;->a:Ljava/lang/Class;

    const-string v1, "overflow, value can not be represented as 8-bit value"

    invoke-virtual {p2, v0, p1, v1}, Lhc;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    :cond_15
    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
