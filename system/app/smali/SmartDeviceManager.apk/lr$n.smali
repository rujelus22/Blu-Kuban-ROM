.class public final Llr$n;
.super Llr$h;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llr$h",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 116
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Llr$h;-><init>(Ljava/lang/Class;)V

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
    .line 112
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lez;->b(Ljava/lang/String;)V

    return-void
.end method
