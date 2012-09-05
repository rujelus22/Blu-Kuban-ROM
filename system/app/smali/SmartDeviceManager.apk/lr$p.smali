.class public final Llr$p;
.super Lll;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lll",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Llr$p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 346
    new-instance v0, Llr$p;

    invoke-direct {v0}, Llr$p;-><init>()V

    sput-object v0, Llr$p;->a:Llr$p;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 348
    const-class v0, Ljava/util/Date;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lll;-><init>(Ljava/lang/Class;B)V

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
    .line 342
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p3, p1, p2}, Lhs;->a(Ljava/util/Date;Lez;)V

    return-void
.end method
