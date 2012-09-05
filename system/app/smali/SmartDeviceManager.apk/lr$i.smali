.class public final Llr$i;
.super Lll;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lll",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Llr$i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 275
    new-instance v0, Llr$i;

    invoke-direct {v0}, Llr$i;-><init>()V

    sput-object v0, Llr$i;->a:Llr$i;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 277
    const-class v0, Ljava/lang/Number;

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
    .line 271
    check-cast p1, Ljava/lang/Number;

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_10

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lez;->a(D)V

    :goto_f
    return-void

    :cond_10
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1e

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p2, v0}, Lez;->a(F)V

    goto :goto_f

    :cond_1e
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lez;->d(Ljava/lang/String;)V

    goto :goto_f
.end method
