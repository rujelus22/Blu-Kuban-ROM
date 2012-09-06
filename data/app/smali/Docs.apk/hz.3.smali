.class public Lhz;
.super Ljava/lang/Object;
.source "ZippedTrixOpenActivity.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lhz;->a:Ljava/lang/String;

    .line 63
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lhz;->b:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static synthetic a(Lhz;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lhz;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lhz;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lhz;->a:Ljava/lang/String;

    return-object v0
.end method
