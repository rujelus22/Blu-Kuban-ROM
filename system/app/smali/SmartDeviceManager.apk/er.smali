.class public final Ler;
.super Lef;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lef",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p2}, Lef;-><init>(Ljava/lang/String;)V

    .line 10
    if-eqz p1, :cond_c

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ler;->a:Ljava/lang/String;

    .line 15
    :goto_b
    return-void

    .line 13
    :cond_c
    iput-object p1, p0, Ler;->a:Ljava/lang/String;

    goto :goto_b
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Ler;->a:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
