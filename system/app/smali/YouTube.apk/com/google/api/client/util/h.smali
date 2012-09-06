.class final Lcom/google/api/client/util/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/api/client/util/g;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/g;)V
    .registers 2
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/api/client/util/h;->a:Lcom/google/api/client/util/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 128
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    if-ne p1, p2, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    if-nez p1, :cond_c

    const/4 v0, -0x1

    goto :goto_7

    :cond_c
    if-nez p2, :cond_10

    const/4 v0, 0x1

    goto :goto_7

    :cond_10
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_7
.end method
