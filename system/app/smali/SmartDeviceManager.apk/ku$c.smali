.class public final Lku$c;
.super Llm;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llm",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 392
    const-class v0, [B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Llm;-><init>(Ljava/lang/Class;B)V

    .line 393
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lez;Lhs;)V
    .registers 4
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
    .line 387
    check-cast p1, [B

    invoke-virtual {p2, p1}, Lez;->a([B)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lez;Lhs;Lhu;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 387
    check-cast p1, [B

    invoke-virtual {p4, p1, p2}, Lhu;->a(Ljava/lang/Object;Lez;)V

    invoke-virtual {p2, p1}, Lez;->a([B)V

    invoke-virtual {p4, p2}, Lhu;->a(Lez;)V

    return-void
.end method
