.class public final Llr$b;
.super Lll;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lll",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Llr$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 318
    new-instance v0, Llr$b;

    invoke-direct {v0}, Llr$b;-><init>()V

    sput-object v0, Llr$b;->a:Llr$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 320
    const-class v0, Ljava/util/Calendar;

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
    .line 314
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1, p2}, Lhs;->a(JLez;)V

    return-void
.end method
