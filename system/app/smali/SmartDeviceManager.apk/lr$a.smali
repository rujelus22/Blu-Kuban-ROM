.class public final Llr$a;
.super Llr$h;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llr$h",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    .line 81
    const-class v0, Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Llr$h;-><init>(Ljava/lang/Class;)V

    .line 82
    iput-boolean p1, p0, Llr$a;->a:Z

    .line 83
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
    .line 69
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, v0}, Lez;->a(Z)V

    return-void
.end method
