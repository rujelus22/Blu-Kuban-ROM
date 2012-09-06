.class public LSr;
.super Lasf;
.source "DocChangeLogFeed.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lasf;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, LSr;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, LSr;->a:Ljava/lang/String;

    .line 27
    return-void
.end method
