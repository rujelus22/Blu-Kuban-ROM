.class final Ljd$e;
.super Ljd;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "e"
.end annotation


# instance fields
.field final b:Liq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Liq",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Liq;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liq",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p1}, Liq;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Ljd;-><init>(Ljava/lang/Class;)V

    .line 194
    iput-object p1, p0, Ljd$e;->b:Liq;

    .line 195
    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/String;Lhc;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Ljd$e;->b:Liq;

    invoke-virtual {v0, p1}, Liq;->a(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    if-nez v0, :cond_11

    iget-object v0, p0, Ljd$e;->a:Ljava/lang/Class;

    const-string v1, "not one of values for Enum class"

    invoke-virtual {p2, v0, p1, v1}, Lhc;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lhg;

    move-result-object v0

    throw v0

    :cond_11
    return-object v0
.end method
