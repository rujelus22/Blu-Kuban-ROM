.class public final Lja$m;
.super Lja$o;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lja$o",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Long;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 780
    invoke-direct {p0, p1, p2}, Lja$o;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 781
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lfd;Lhc;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 774
    invoke-virtual {p0, p1, p2}, Lja$m;->j(Lfd;Lhc;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
