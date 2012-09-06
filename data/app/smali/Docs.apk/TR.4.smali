.class final LTR;
.super Ljava/lang/Object;
.source "FeedProcessorDriverImpl.java"

# interfaces
.implements LTX;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lasf;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 70
    check-cast p1, LSr;

    .line 71
    invoke-virtual {p1}, LSr;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
