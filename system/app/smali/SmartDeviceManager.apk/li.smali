.class public Lli;
.super Llm;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llm",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lli;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    new-instance v0, Lli;

    invoke-direct {v0}, Lli;-><init>()V

    sput-object v0, Lli;->a:Lli;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 23
    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Llm;-><init>(Ljava/lang/Class;B)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lez;Lhs;)V
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
    .line 29
    invoke-virtual {p2}, Lez;->f()V

    .line 30
    return-void
.end method
