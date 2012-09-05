.class public final Llr$g;
.super Lll;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lll",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Llr$g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 198
    new-instance v0, Llr$g;

    invoke-direct {v0}, Llr$g;-><init>()V

    sput-object v0, Llr$g;->a:Llr$g;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 200
    const-class v0, Ljava/lang/Long;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lll;-><init>(Ljava/lang/Class;B)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lez;Lhs;)V
    .registers 6
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
    .line 194
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lez;->a(J)V

    return-void
.end method
