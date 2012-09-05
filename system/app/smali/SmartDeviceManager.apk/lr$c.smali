.class public final Llr$c;
.super Llr$h;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llr$h",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Llr$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 249
    new-instance v0, Llr$c;

    invoke-direct {v0}, Llr$c;-><init>()V

    sput-object v0, Llr$c;->a:Llr$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 251
    const-class v0, Ljava/lang/Double;

    invoke-direct {p0, v0}, Llr$h;-><init>(Ljava/lang/Class;)V

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
    .line 245
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lez;->a(D)V

    return-void
.end method
