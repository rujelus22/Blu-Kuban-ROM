.class public final Llr$d;
.super Lll;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lll",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Llr$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 220
    new-instance v0, Llr$d;

    invoke-direct {v0}, Llr$d;-><init>()V

    sput-object v0, Llr$d;->a:Llr$d;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 222
    const-class v0, Ljava/lang/Float;

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
    .line 216
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p2, v0}, Lez;->a(F)V

    return-void
.end method
