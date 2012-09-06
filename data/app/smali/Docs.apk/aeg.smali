.class Laeg;
.super Ljava/lang/Object;
.source "ClassInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laef;


# direct methods
.method constructor <init>(Laef;)V
    .registers 2
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Laeg;->a:Laef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 169
    if-ne p1, p2, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    if-nez p1, :cond_8

    const/4 v0, -0x1

    goto :goto_3

    :cond_8
    if-nez p2, :cond_c

    const/4 v0, 0x1

    goto :goto_3

    :cond_c
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_3
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 167
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Laeg;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
