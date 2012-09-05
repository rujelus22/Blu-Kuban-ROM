.class public final Llr$m;
.super Lll;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lll",
        "<",
        "Ljava/sql/Time;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 397
    const-class v0, Ljava/sql/Time;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lll;-><init>(Ljava/lang/Class;B)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lez;Lhs;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 393
    check-cast p1, Ljava/sql/Time;

    invoke-virtual {p1}, Ljava/sql/Time;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lez;->b(Ljava/lang/String;)V

    return-void
.end method
