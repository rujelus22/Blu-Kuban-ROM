.class final Laia;
.super Ljava/lang/Object;
.source "Collections2.java"

# interfaces
.implements LafH;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LafH",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Laia;->a:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 323
    iget-object v0, p0, Laia;->a:Ljava/util/Collection;

    if-ne p1, v0, :cond_6

    const-string p1, "(this Collection)"

    :cond_6
    return-object p1
.end method
